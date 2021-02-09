import 'package:flutter/material.dart';
import 'package:teste_flutter_crmall/core/theme/app_theme.dart';

class ShopCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 4,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
