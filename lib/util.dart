import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hacksteak/constants.dart';
import 'package:hacksteak/widgets/styled_text.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:url_launcher/link.dart';
import 'package:linkify/linkify.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/prefs/settings/settings_cubit.dart';

// List<InlineSpan>
class HtmlParserWidget extends StatelessWidget {
  final String htmlText;
  final bool isComment;

  const HtmlParserWidget(
      {super.key, required this.htmlText, this.isComment = false});

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;
    final commentTextFont = prefs.font.commentText;
    final commentTextFontSize =
        FontSizes.commentText.spMin * prefs.font.commentText.scale;

    var text = HtmlUnescape().convert(htmlText);

    // print(text);

    final htmlRegExp = RegExp(r'<a href=\"(.*?)\".*?\>.*?\<\/a\>');
    text = text.replaceAllMapped(htmlRegExp, (e) => e.group(1).toString());

    // print(text);
    text = text.replaceAll('<p>', '\n\n');

    final linkifiedText = linkify(text, linkifiers: const [
      UrlLinkifier(),
      EmailLinkifier(),
      ItalicsLinkifier(),
      CodeLinkifier(),
    ]);

    // print(linkifiedText);

    final inlineSpans = <InlineSpan>[];

    // print(commentTextFont);

    for (final element in linkifiedText) {
      switch (element.runtimeType) {
        case TextElement:
          inlineSpans.add(TextSpan(
              text: element.text,
              style: textStyleFromFontBase(commentTextFont).copyWith(
                  // color: Theme.of(context).primaryColor,
                  // fontStyle: FontStyle.italic,
                  fontSize: commentTextFontSize)));
          break;
        case UrlElement:
        case EmailElement:
          inlineSpans.add(WidgetSpan(
              child: Link(
                  uri: Uri.parse(element.originText),
                  builder: (BuildContext context, FollowLink? followLink) =>
                      Text.rich(
                          textScaleFactor: 1,
                          TextSpan(
                            text: element.originText,
                            style: textStyleFromFontBase(commentTextFont)
                                .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: commentTextFontSize),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString(element.originText);
                              },
                          )))));
          break;
        case ItalicsElement:
          inlineSpans.add(TextSpan(
              text: element.text,
              style: textStyleFromFontBase(commentTextFont).copyWith(
                  fontStyle: FontStyle.italic, fontSize: commentTextFontSize)));
          break;
        case CodeElement:
          inlineSpans.add(TextSpan(
              text: element.text,
              style: textStyleFromFontBase(commentTextFont).copyWith(
                  fontFamily: 'RobotoMono', fontSize: commentTextFontSize)));
          break;
        default:
          throw Exception('Unknown element type: $element');
      }
    }

    return Text.rich(TextSpan(
        children: inlineSpans,
        style: textStyleFromFontBase(commentTextFont)
            .copyWith(fontSize: commentTextFontSize)));
  }
}

final _italicsRegex = RegExp(
  r'<i>(.*?)</i>',
  dotAll: true,
);

class ItalicsLinkifier extends Linkifier {
  const ItalicsLinkifier();

  @override
  List<LinkifyElement> parse(elements, options) {
    final list = <LinkifyElement>[];

    for (var element in elements) {
      if (element is TextElement) {
        var text = element.text;
        var matches = _italicsRegex.allMatches(text);

        if (matches.isEmpty) {
          list.add(TextElement(text));
        } else {
          var lastIndex = 0;
          for (var match in matches) {
            if (match.start > lastIndex) {
              list.add(TextElement(text.substring(lastIndex, match.start)));
            }

            list.add(ItalicsElement(match.group(1) ?? ''));

            lastIndex = match.end;
          }

          if (lastIndex < text.length) {
            list.add(TextElement(text.substring(lastIndex)));
          }
        }
      } else {
        list.add(element);
      }
    }

    return list;
  }
}

class ItalicsElement extends LinkableElement {
  final String italicsText;

  ItalicsElement(this.italicsText) : super(italicsText, italicsText);

  @override
  String toString() {
    return "ItalicsElement: '$italicsText' ($text)";
  }

  @override
  bool operator ==(other) => equals(other);

  @override
  int get hashCode => Object.hash(text, originText, url, italicsText);

  @override
  bool equals(other) =>
      other is ItalicsElement &&
      super.equals(other) &&
      other.italicsText == italicsText;
}

final _codeRegex = RegExp(
  r'\<pre\>\<code\>(.*?)\<\/code\>\<\/pre\>',
  dotAll: true,
);

class CodeLinkifier extends Linkifier {
  const CodeLinkifier();

  @override
  List<LinkifyElement> parse(elements, options) {
    final list = <LinkifyElement>[];

    for (var element in elements) {
      if (element is TextElement) {
        var text = element.text;
        var matches = _codeRegex.allMatches(text);

        if (matches.isEmpty) {
          list.add(TextElement(text));
        } else {
          var lastIndex = 0;
          for (var match in matches) {
            if (match.start > lastIndex) {
              list.add(TextElement(text.substring(lastIndex, match.start)));
            }

            list.add(CodeElement(match.group(1) ?? ''));

            lastIndex = match.end;
          }

          // Add any remaining non-matching text after the last code block
          if (lastIndex < text.length) {
            list.add(TextElement(text.substring(lastIndex)));
          }
        }
      } else {
        list.add(element);
      }
    }

    return list;
  }
}

class CodeElement extends LinkableElement {
  final String code;

  CodeElement(this.code) : super(code, code);

  @override
  String toString() {
    return "CodeElement: '$code' ($text)";
  }

  @override
  bool operator ==(other) => equals(other);

  @override
  int get hashCode => Object.hash(text, originText, url, code);

  @override
  bool equals(other) =>
      other is CodeElement && super.equals(other) && other.code == code;
}

TextStyle textStyleFromFontBase(FontBase fontBase) {
  return TextStyle(
    fontFamily: fontBase.family,
    fontWeight: fontBase.bold ? FontWeight.bold : FontWeight.normal,
    fontStyle: fontBase.italic ? FontStyle.italic : FontStyle.normal,
    decoration:
        fontBase.underline ? TextDecoration.underline : TextDecoration.none,
  );
}
