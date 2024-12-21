import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  void funChange() {
    if (state is FavoriteMarked) {
      emit(FavoriteUnMarked());
    } else {
      emit(FavoriteMarked());
    }
  }
}
