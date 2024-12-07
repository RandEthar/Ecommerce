


class SiginState {}

final class SiginInitial extends SiginState {}
final class SiginLoading extends SiginState {}
final class SiginSuccess extends SiginState {}
final class SiginFailer extends SiginState {
  final String message;

  SiginFailer({required this.message});
}



