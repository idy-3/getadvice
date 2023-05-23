
import 'package:getadvice/1_domain/entities/advice_entity.dart';
import 'package:getadvice/1_domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

import '../../0_data/repositories/advice_repo_impl.dart';
import '../repositories/advice_repo.dart';

class AdviceUseCases {
  final AdviceRepo adviceRepo;
  AdviceUseCases({required this.adviceRepo});

  Future<Either<Failure, AdviceEntity>> getAdvice() async{
    return adviceRepo.getAdviceFromDatasource();
    // // execute business logic
    // await Future.delayed(const Duration(seconds: 3),() {});
    // // return right(const AdviceEntity(advice: 'Fake advice test', id: 1));
    // return left(ServerFailure());
  }
}