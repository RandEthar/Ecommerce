class SiginupState {}

final class SiginupInitial extends SiginupState {}




final class SiginupLoading extends SiginupState {}

final class SiginupSuccess extends SiginupState {}
final class SiginupFailer extends SiginupState {
  final String massage;

  SiginupFailer({required this.massage});




}