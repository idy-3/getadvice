

import 'package:getadvice/0_data/datasources/advice_remote_datasource.dart';
import 'package:getadvice/0_data/exceptions/exceptions.dart';
import 'package:getadvice/1_domain/entities/advice_entity.dart';
import 'package:getadvice/1_domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

import '../../1_domain/repositories/advice_repo.dart';


class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDatasource adviceRemoteDatasource;
  AdviceRepoImpl({required this.adviceRemoteDatasource});

  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource() async {
    try {
      final result = await adviceRemoteDatasource.getRandomAdviceFromApi();
      return right(result);
    } on ServerException catch (_) {
      return left(ServerFailure());
    }
    catch (e){
      return left(GeneralFailure());
    }

  }

}