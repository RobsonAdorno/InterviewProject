import 'package:flutter/material.dart';
import 'package:teste_flutter_crmall/core/theme/app_theme.dart';

class CustomFontStyle extends StatelessWidget {
  final String text;
  final bool isTitle;
  final Color color;

  CustomFontStyle(
      {@required this.text,
      @required this.isTitle,
      this.color = AppTheme.colorFont});

  @override
  Widget build(BuildContext context) {
    double _fontSize = isTitle ? 18 : 14;
    FontWeight _fontWeight = isTitle ? FontWeight.bold : FontWeight.normal;

    return Text(
      text,
      style: TextStyle(
          fontFamily: 'cream-DEMO',
          color: color,
          fontSize: _fontSize,
          fontWeight: _fontWeight),
    );
  }
}
