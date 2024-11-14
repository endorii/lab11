import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './color_state.dart';

class CustomPreviewContainer extends StatelessWidget {
  const CustomPreviewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorState>(context);
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(provider.red, provider.green, provider.blue, 1),
      ),
    );
  }
}
