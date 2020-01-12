import 'package:equatable/equatable.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:meta/meta.dart';

abstract class NumberTriviaState extends Equatable {
  const NumberTriviaState(List<NumberTrivia> list);
}

class Empty extends NumberTriviaState {
  Empty(List<NumberTrivia> list) : super(list);

  @override
  List<Object> get props => [];
}

class Loading extends NumberTriviaState {
  Loading(List<NumberTrivia> list) : super(list);

  @override
  List<Object> get props => null;
}

class Loaded extends NumberTriviaState {
  final NumberTrivia trivia;
  Loaded({@required this.trivia}) : super([trivia]);

  @override
  List<Object> get props => null;
}

class Error extends NumberTriviaState {
  final String message;

  Error({@required this.message}) : super([message]);

  @override
  List<Object> get props => null;
}
