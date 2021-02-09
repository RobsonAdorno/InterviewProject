import 'package:flutter/material.dart';
import 'package:teste_flutter_crmall/model/comic_sumarry.dart';
import 'package:teste_flutter_crmall/page/widget/image_handler.dart';

class DetailsComicPage extends StatelessWidget {
  final List<Comic> listOfComics;
  final int index;

  DetailsComicPage(this.listOfComics, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0C11),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    child: ImageHandler(listOfComics[index].images)),
                Positioned(
                  top: 50,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Image.asset('assets/image/nametag.png'),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: Text(
                    listOfComics[index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    listOfComics[index].description ?? 'Não há descrição',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: CustomButton(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.red,
      child: Text('Shopping Cart'),
    );
  }
}
