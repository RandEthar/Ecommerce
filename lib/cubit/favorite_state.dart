part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}
final class FavoriteMarked extends FavoriteState {}
final class FavoriteUnMarked extends FavoriteState {}