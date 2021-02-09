import 'package:teste_flutter_crmall/model/shop_cart.dart';
import 'package:teste_flutter_crmall/repository/database/database_provider.dart';
import 'package:teste_flutter_crmall/repository/i_shop_cart_database_repository.dart';

class ShopCartDataBaseRepository implements IShopCartDataRepository {
  ShopCartDataBaseRepository() {
    DatabaseProvider.databaseProvider.initDatabase();
  }

  @override
  Future<int> insertShopCart(ShopCart shopCart) async {
    final db = await DatabaseProvider.databaseProvider.database;

    var table = await db.rawQuery("SELECT MAX(id)+1 as id FROM Shopcart");
    int id = table.first["id"];

    return await db.rawInsert(
        "INSERT Into Shopcart (id,price,total,title)"
        " VALUES (?,?,?,?)",
        [id, shopCart.price, shopCart.total, shopCart.title]);
  }

  @override
  List<ShopCart> listShopCart() {
    // TODO: implement listShopCart
    throw UnimplementedError();
  }
}
