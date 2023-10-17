import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';
import 'package:hacksteak/widgets/settings/settings_section_title.dart';

import '../../cubits/logo_fade_cubit.dart';

class FontConfig extends StatelessWidget {
  const FontConfig({super.key, required this.component, this.prefix});

  final String component;
  final String? prefix;

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    final defaultFont = Theme.of(context).textTheme.bodyMedium?.fontFamily;
    final List<String> availableFonts = [
      ...?DefaultTextStyle.of(context).style.fontFamilyFallback,
      if (defaultFont != null) defaultFont,
      "Lato",
      "OpenSans",
      "Poppins",
      "RobotoCondensed",
      "RobotoFlex",
      "RobotoSlab",
    ];

    final preferredFont = prefs.font[component];

    String preferredFontFamily = preferredFont.family;
    String? currentFontFamily = preferredFontFamily.isNotEmpty
        ? preferredFontFamily
        : DefaultTextStyle.of(context).style.fontFamily;
    final selectedFont =
        availableFonts.contains(currentFontFamily) ? currentFontFamily : null;

    return Column(
      children: [
        SettingsSection(title: "${prefix ?? ''} Font".trimLeft()),
        Card(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField(
                      value: selectedFont,
                      icon: const Icon(Icons.arrow_drop_down),
                      isExpanded: true,
                      items: availableFonts
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child:
                              Text(value, style: TextStyle(fontFamily: value)),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          context.read<SettingsCubit>().changeFontOf({
                            component: preferredFont.copyWith(family: value)
                          });
                        }
                      },
                    ),
                  ),
                  ToggleButtons(
                    borderWidth: 0,
                    isSelected: [
                      preferredFont.bold,
                      preferredFont.italic,
                      preferredFont.underline,
                    ],
                    onPressed: (index) {
                      switch (index) {
                        case 0:
                          context.read<SettingsCubit>().changeFontOf({
                            component: preferredFont.copyWith(
                                bold: !preferredFont.bold)
                          });
                          break;
                        case 1:
                          context.read<SettingsCubit>().changeFontOf({
                            component: preferredFont.copyWith(
                                italic: !preferredFont.italic)
                          });
                          break;
                        case 2:
                          context.read<SettingsCubit>().changeFontOf({
                            component: preferredFont.copyWith(
                                underline: !preferredFont.underline)
                          });
                          break;
                      }
                    },
                    children: const [
                      Icon(Icons.format_bold),
                      Icon(Icons.format_italic),
                      Icon(Icons.format_underline),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 12),
                  Text("Scale:"),
                  Expanded(
                    child: Slider(
                      min: 0.5,
                      max: 2,
                      value: preferredFont.scale,
                      onChanged: (v) {
                        context.read<LogoFadeCubit>().fadeOut();
                        context.read<SettingsCubit>().changeFontOf(
                            {component: preferredFont.copyWith(scale: v)});
                      },
                      onChangeStart: (v) {
                        context.read<LogoFadeCubit>().fadeOut();
                      },
                      onChangeEnd: (v) {
                        Future.delayed(const Duration(seconds: 1),
                            () => context.read<LogoFadeCubit>().fadeIn());
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
