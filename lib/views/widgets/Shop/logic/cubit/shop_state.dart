part of 'shop_cubit.dart';

@immutable
sealed class ShopState {}

final class ShopInitial extends ShopState {}

final class ShopSizedUpdate extends ShopState {

}