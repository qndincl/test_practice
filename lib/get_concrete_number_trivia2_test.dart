import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testcode_practice/failure.dart';
import 'package:flutter_testcode_practice/feature/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_testcode_practice/number_trivia.dart';
import 'package:flutter_testcode_practice/number_trivia_repository.dart';
import 'package:flutter_testcode_practice/number_trivia_repository_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
// import 'get_concrete_number_trivia_test.mocks.dart';

class Cat {
  String sound() => "Meow";
  bool eatFood(String food, {bool? hungry}) => true;
  Future<void> chew() async => print("Chewing...");
  int walk(List<String> places) => 7;
  void sleep() {}
  void hunt(String place, String prey) {}
  int lives = 9;
}
/*
Abstract classes can't be instantiated.
Try creating an instance of a concrete subtype.
라는 에러 땜에 아래 _FakeEither 만듦
*/

// class _FakeEither<L, R> extends SmartFake implements Either<L, R> {
//   _FakeEither(
//     Object parent,
//     Invocation parentInvocation,
//   ) : super(
//           parent,
//           parentInvocation,
//         );
// }

// class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {
//   MockNumberTriviaRepository() {
//     throwOnMissingStub(this);
//   }
//   @override
//   Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int? number) => (super.noSuchMethod(
//         Invocation.method(#getConcreteNumberTrivia, [number]),
//         returnValue: Future<Either<Failure, NumberTrivia>>.value(_FakeEither<Failure, NumberTrivia>(
//           this,
//           Invocation.method(
//             #getConcreteNumberTrivia,
//             [number],
//           ),
//         )),
//       ) as Future<Either<Failure, NumberTrivia>>);
// }

// class MockNumberTriviaRepository extends Mock implements NumberTriviaRepositoryImpl {}

class MockCat extends Mock implements Cat {}

// @GenerateNiceMocks([MockSpec<MockNumberTriviaRepository>()])
@GenerateMocks([NumberTriviaRepository])
void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late Cat cat;
  late final tNumber;
  late int tesvalue;
  late final tNumberTrivia;
  // setUpAll(() {
  setUp(() {
    cat = MockCat();
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
    tNumber = 1;
    tesvalue = 0;
    tNumberTrivia = NumberTrivia(number: 1, text: 'test');
  });

  test(
    'should get trivia for the number from the repository',
    () async {
      // when(cat.sound()).thenReturn("Purr");
      // expect(cat.sound(), "Purr");

      // "On the fly" implementation of the Repository using the Mockito package.
      // When getConcreteNumberTrivia is called with any argument, always answer with
      // the Right "side" of Either containing a test NumberTrivia object.

      when(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber))
          .thenAnswer((_) async => Right(tNumberTrivia));
      // The "act" phase of the test. Call the not-yet-existent method.
      final result = await usecase.execute(number: tNumber);
      // UseCase should simply return whatever was returned from the Repository
      expect(result, Right(tNumberTrivia));
      // Verify that the method has been called on the Repository
      verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
      // Only the above method should be called and nothing more.
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );

  // test(
  //   'should get trivia for the number from the repository',
  //   () async {
  //     // arrange
  //     when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
  //         .thenAnswer((_) async => Right(tNumberTrivia));
  //     // act
  //     final result = await usecase(Params(number: tNumber));
  //     // assert
  //     expect(result, Right(tNumberTrivia));
  //     verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
  //     verifyNoMoreInteractions(mockNumberTriviaRepository);
  //   },
  // );
}
