import 'package:dartz/dartz.dart';
import 'package:flutter_testcode_practice/failure.dart';
import 'package:flutter_testcode_practice/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
