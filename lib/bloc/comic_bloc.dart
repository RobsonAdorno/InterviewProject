import 'package:dio/dio.dart';
import 'package:teste_flutter_crmall/model/comic_sumarry.dart';
import 'package:teste_flutter_crmall/repository/service/hero_repository.dart';

class _ComicBloc {
  HeroRepository _heroRepository = HeroRepository();

  Future<List<Comic>> comicList() async {
    return await _heroRepository.comicLista().then((data) {
      List<Comic> listOfComics = [];
      Comic _comic;

      for (var a in data) {
        _comic = Comic();
        List image = a['images'];

        _comic.countItens = data.length;
        _comic = Comic.fromMap(a);
        _comic.images = image.isEmpty ? '' : a['images'][0]['path'].toString();

        listOfComics.add(_comic);
      }

      return listOfComics;
    }).catchError((error) => DioError(error: error));
  }
}

final instanceBloc = _ComicBloc();
