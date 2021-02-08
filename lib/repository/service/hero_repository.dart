import 'package:dio/dio.dart';
import 'package:teste_flutter_crmall/model/comic_sumarry.dart';

import '../../core/util/dio_util/dio_util.dart';
import '../../core/helper/helper_mount_url.dart';
import '../repository.dart';

class HeroRepository implements IHeroRepository {
  Dio dio = CustomDio.createDio();

  @override
  void deleteHero() {
    // TODO: implement deleteHero
  }

  @override
  void saveHero() {
    // TODO: implement saveHero
  }

  @override
  void updateHero() {
    // TODO: implement updateHero
  }

  @override
  List<ComicSummary> comicList<ComicSummary>() {
    // TODO: implement comicList
    throw UnimplementedError();
  }

  Future<List> comicLista<T>() async {
    return await dio.get(HelperMountURL.mountURL()).then((data) {
      return data.data['data']['results'];
    }).catchError((error) => DioError(error: error));
  }
}
