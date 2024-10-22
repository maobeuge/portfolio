part of 'language_cubit.dart';

final class LanguageState extends Equatable {
  final Map<String, dynamic> texts;

  const LanguageState({required this.texts});

  LanguageState copyWith({required Map<String, dynamic> texts}) =>
      LanguageState(texts: texts);

  @override
  List<Object> get props => [texts];
}
