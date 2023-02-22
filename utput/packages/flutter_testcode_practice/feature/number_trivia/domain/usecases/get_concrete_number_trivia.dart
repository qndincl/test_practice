import 'package:dartz/dartz.dart';
import 'package:flutter_testcode_practice/failure.dart';
import 'package:flutter_testcode_practice/number_trivia.dart';
import 'package:flutter_testcode_practice/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
