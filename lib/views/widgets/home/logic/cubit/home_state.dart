part of 'home_cubit.dart';


sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class FavoriteChangedSuccsess extends HomeState {}
final class FavoriteChangedLoading extends HomeState {}
final class HomeDataSucces extends HomeState {
  final List<ProductItemModel> products;

  HomeDataSucces(this.products);
}
final class HomeDataLoading extends HomeState {

}
final class HomeDataFalier extends HomeState {
  final String massage;

  HomeDataFalier(this.massage);

}