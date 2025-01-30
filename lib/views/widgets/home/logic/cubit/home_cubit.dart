import 'dart:developer';

import 'package:ecommerce_app/core/services/home_services.dart';
import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeServicesImpl homeServices = HomeServicesImpl();
  HomeCubit() : super(HomeInitial());
  List<ProductItemModel> favoritesProduct = [];
  void toggleFavorite(ProductItemModel productItem) async {
    emit(FavoriteChangedLoading());
    bool isFound =
        favoritesProduct.any((element) => element.id == productItem.id);
    if (isFound) {
      log('remove');
      favoritesProduct.removeWhere((element) => element.id == productItem.id);
      await homeServices.removeProdectFromFavorite(productItem);
    } else {
      log('add');
      favoritesProduct.add(productItem);
      await homeServices.addProductToFavorite(productItem);
    }
    emit(FavoriteChangedSuccsess());
  }

  bool isFav(ProductItemModel productItem) {
    return favoritesProduct.any((element) => (element.id) == productItem.id);
  }

  void fitchDataWhenOpenApp() async {
    favoritesProduct = await homeServices.getFavoriteProducts();
  }

  Future<void> fetchHomeDate() async {
    emit(HomeDataLoading());
    await Future.delayed(const Duration(seconds: 10));
    try {
      var data = await homeServices.getHomeData();
      emit(HomeDataSucces(data));
    } catch (e) {
      emit(HomeDataFalier(e.toString()));
    }
  }
}
