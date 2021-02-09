import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:teste_flutter_crmall/bloc/comic_bloc.dart';
import 'package:teste_flutter_crmall/core/theme/app_theme.dart';
import 'package:teste_flutter_crmall/core/widget/custom_font_style.dart';
import 'package:teste_flutter_crmall/core/widget/custom_snackbar.dart';
import 'package:teste_flutter_crmall/model/comic_sumarry.dart';
import 'package:teste_flutter_crmall/page/details_comic_page.dart';
import 'package:teste_flutter_crmall/page/shop_cart_page.dart';
import 'package:teste_flutter_crmall/page/widget/custom_app_bar.dart';
import 'package:teste_flutter_crmall/page/widget/image_handler.dart';
import '../page/error_page/error_page.dart';

class HomeComicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: CustomSnackBar.snackGlobalKey,
        body: FutureBuilder<List<Comic>>(
          future: instanceBloc.comicList(),
          builder: (BuildContext context, AsyncSnapshot<List<Comic>> snapshot) {
            if (snapshot.hasError) {
              return HomeComicPageError();
            } else if (snapshot.connectionState.index == 1) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return HomeComicWidget(snapshot.data);
          },
        ));
  }
}

class HomeComicWidget extends StatelessWidget {
  final List<Comic> listOfComics;

  HomeComicWidget(this.listOfComics);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2 - 100,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image.asset(
                  'assets/image/background1.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        'assets/image/logo.png',
                        width: 100,
                      ),
                      IconButton(
                        color: AppTheme.backgroundColor,
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShopCartPage()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 90,
                    ),
                    CustomFontStyle(
                      isTitle: true,
                      text: 'Marvel Comics'.toUpperCase(),
                      color: AppTheme.backgroundColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomFontStyle(
                      isTitle: false,
                      text:
                          'Abaixo temos uma listagem de HQs da Marvel, desfrute',
                      color: AppTheme.backgroundColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image.asset(
                  'assets/image/background2.png',
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: SliderComic(listOfComics),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SliderComic extends StatelessWidget {
  final List<Comic> listOfComics;

  SliderComic(this.listOfComics);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: listOfComics.length,
        options: CarouselOptions(
          viewportFraction: 0.6,
          height: 340,
          enlargeCenterPage: true,
        ),
        itemBuilder: (BuildContext context, int index, int index2) =>
            ComicCard(index, this.listOfComics));
  }
}

class ComicCard extends StatelessWidget {
  final int index;
  final List<Comic> listOfComics;

  ComicCard(this.index, this.listOfComics);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsComicPage(listOfComics, index)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(40),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2 - 40,
                  child: Hero(
                      tag: listOfComics[index].id,
                      child: ImageHandler(listOfComics[index].images)),
                ),
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width / 2 - 40,
                color: Colors.red,
              ),
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        listOfComics[index].title ?? 'Não há titulo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
