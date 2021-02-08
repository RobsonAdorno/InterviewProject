import 'package:flutter/material.dart';

import '../../core/constant/constant.dart';

class ImageHandler extends StatelessWidget {
  final String urlImage;

  ImageHandler(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return urlImage.isEmpty
        ? Image.asset(Strings.characterList[0]['imgUrl'])
        : Image.network(
            urlImage + '.jpg',
            fit: BoxFit.fill,
          );
  }
}
