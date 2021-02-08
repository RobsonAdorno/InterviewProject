import 'package:flutter/widgets.dart';

import './util/custom_router.dart';
import '../page/home_comic_page.dart';

class Routes {
  static const HOME_PAGE = "/home";

  static Route onGeneratedRouter(RouteSettings routeSettings) {
    final String pathElements = routeSettings.name;

    if (pathElements == HOME_PAGE) {
      return CustomRouter(builder: (BuildContext context) => HomeComicPage());
    }
  }
}
