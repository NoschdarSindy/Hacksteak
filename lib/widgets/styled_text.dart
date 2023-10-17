// import 'package:flutter/material.dart';
//
// import '../cubits/prefs/settings/settings_cubit.dart';
//
// class CustomTextStyle {
//   const CustomTextStyle({super.key, this.fontBase});
//
//   // final String title;
//   final FontBase? fontBase;
//   // final Color? color;
//   // late final double? fontSize;
//   //
//   // @override
//   // Widget build(BuildContext context) {
//   // return TextStyle(
//   //   // color: color,
//   //   fontFamily: font.family,
//   //   fontWeight: font.bold ? FontWeight.bold : FontWeight.normal,
//   //   fontStyle: font.italic ? FontStyle.italic : FontStyle.normal,
//   //   decoration:
//   //   font.underline ? TextDecoration.underline : TextDecoration.none,
//   // );
//   // return Text(
//   //   title,
//   //   textScaleFactor: fontBase != null
//   //       ? MediaQuery.of(context).textScaleFactor * fontBase!.scale
//   //       : null,
//   //   style: (fontBase != null
//   //           ? textStyleFromFontBase(fontBase!)
//   //           : DefaultTextStyle.of(context).style)
//   //       .copyWith(fontSize: fontSize, color: color),
//   // );
//   // }
//
//   static TextStyle fromFontBase(FontBase font, [Color? color]) {
//     return TextStyle(
//       // color: color,
//       fontFamily: font.family,
//       fontWeight: font.bold ? FontWeight.bold : FontWeight.normal,
//       fontStyle: font.italic ? FontStyle.italic : FontStyle.normal,
//       decoration:
//           font.underline ? TextDecoration.underline : TextDecoration.none,
//     );
//   }
// }
