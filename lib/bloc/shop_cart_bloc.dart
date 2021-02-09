import 'package:rxdart/subjects.dart';
import 'package:teste_flutter_crmall/model/shop_cart.dart';
import 'package:teste_flutter_crmall/repository/database/shop_cart_data_repository.dart';

class ShopCartBloc {
  var _shopCartDataRepository = ShopCartDataBaseRepository();
  BehaviorSubject<ShopCart> _behaviorSubject = BehaviorSubject();

  Sink<ShopCart> get _inShopCartSink => _behaviorSubject.sink;
  Stream<ShopCart> get _outShopCartStream => _behaviorSubject.stream;

  void insertDataInShopCart(ShopCart shopCart) {
    _shopCartDataRepository.insertShopCart(shopCart);
  }

  dispose() {
    _behaviorSubject.close();
    _inShopCartSink.close();
  }
}
