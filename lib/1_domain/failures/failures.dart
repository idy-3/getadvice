

import 'package:equatable/equatable.dart';

abstract class Failure with EquatableMixin {}

class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class GeneralFailure extends Failure {
  @override
  List<Object?> get props => [];
}
