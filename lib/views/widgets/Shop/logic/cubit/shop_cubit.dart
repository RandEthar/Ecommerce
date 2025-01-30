import 'package:ecommerce_app/core/services/home_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/core/utils/widgets/product_item_model.dart';
import 'package:meta/meta.dart';

part 'shop_state.dart';

class ShopCubit extends Cubit<ShopState> {
  HomeServicesImpl homeServicesImpl = HomeServicesImpl();
  ProductItemModel?productItemModel;
  ShopCubit() : super(ShopInitial());
  SizeItem newSize=SizeItem.S;
  void updateSize(ProductItemModel product ){
    product.size=newSize;
      emit(ShopSizedUpdate());
    print("size=${newSize}");

  }
 

}
