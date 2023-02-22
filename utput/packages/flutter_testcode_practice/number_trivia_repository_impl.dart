import 'package:flutter_testcode_practice/number_trivia.dart';
import 'package:flutter_testcode_practice/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_testcode_practice/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl extends NumberTriviaRepository {
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) async {
    return Right(NumberTrivia(number: 1, text: 'tt'));
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
