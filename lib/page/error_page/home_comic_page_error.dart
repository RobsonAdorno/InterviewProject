import 'package:flutter/material.dart';
import 'package:teste_flutter_crmall/core/theme/app_theme.dart';
import 'package:teste_flutter_crmall/core/widget/custom_font_style.dart';

class HomeComicPageError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppTheme.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomFontStyle(
              text: 'Desculpe, houve um problema em nosso serviço.',
              isTitle: true,
            ),
            Image.asset('assets/image/img_error.jpg'),
            CustomFontStyle(
              text: 'Por favor, reiniciei a aplicação!',
              isTitle: false,
            ),
          ],
        ));
  }
}
