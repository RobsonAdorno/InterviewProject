import 'package:teste_flutter_crmall/model/comic_sumarry.dart';

abstract class IHeroRepository {
  void saveHero();
  void updateHero();
  void deleteHero();
  List<ComicSummary> comicList<ComicSummary>();
}
