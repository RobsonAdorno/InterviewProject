import 'package:flutter/material.dart';
import 'package:teste_flutter_crmall/core/routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: Routes.HOME_PAGE,
    debugShowCheckedModeBanner: false,
    onGenerateRoute: Routes.onGeneratedRouter,
  ));
}
