import 'package:ecommerce_app/core/services/firestore_services.dart';
import 'package:ecommerce_app/core/utils/api_endpoints.dart';
import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';

abstract class HomeServices {
  Future<List<ProductItemModel>> getHomeData();
  Future<void> addProductToFavorite(ProductItemModel productitem);
  Future<void> removeProdectFromFavorite(ProductItemModel productitem);
  Future<List<ProductItemModel>> getFavoriteProducts();
}

class HomeServicesImpl extends HomeServices {
  FirestoreService firestoreService = FirestoreService.instance;

  @override
  Future<List<ProductItemModel>> getHomeData() async {
    var data = await firestoreService.getCollection(
      path: ApiEndpoints.getProducts(),
      builder: (data, documentId) {
        return ProductItemModel.fromMap(data);
      },
    );
    return data;
  }

  @override
  Future<void> addProductToFavorite(ProductItemModel productitem) async {
    await firestoreService.setData(
        path: ApiEndpoints.addToFavorites(productitem.id),
        data: productitem.toMap());
  }

  @override
  Future<void> removeProdectFromFavorite(ProductItemModel productitem) async {
    firestoreService.deleteData(
        path: ApiEndpoints.addToFavorites(productitem.id));
  }

  @override
  Future<List<ProductItemModel>> getFavoriteProducts() async {
     List<ProductItemModel> date = await firestoreService.getCollection(
        path: ApiEndpoints.getFavorites(),
        builder: (data, indexDecioment) {
          return ProductItemModel.fromMap(data);
        });
        return date;
  }
}
