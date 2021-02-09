import 'package:teste_flutter_crmall/model/shop_cart.dart';

abstract class IShopCartDataRepository {
  Future<int> insertShopCart(ShopCart shopCart);
  List<ShopCart> listShopCart();
}
