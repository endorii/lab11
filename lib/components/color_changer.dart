import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './color_state.dart';
import './slider_section.dart';
import './custom_preview_container.dart';

class ColorChanger extends StatelessWidget {
  const ColorChanger({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorState>(context);
    return Column(
      children: [
        SliderSection(
          label: "Red",
          value: provider.red.toDouble(),
          onChanged: (value) => provider.setRed(value.toInt()),
        ),
        SliderSection(
          label: "Green",
          value: provider.green.toDouble(),
          onChanged: (value) => provider.setGreen(value.toInt()),
        ),
        SliderSection(
          label: "Blue",
          value: provider.blue.toDouble(),
          onChanged: (value) => provider.setBlue(value.toInt()),
        ),
        const SizedBox(height: 20),
        const CustomPreviewContainer(),
      ],
    );
  }
}
