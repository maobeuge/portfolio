import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio/constants/texts.dart';

part 'language_state.dart';

enum LanguageEnum { fr, en, kr }

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageState(texts: AppTexts.fr));

  onChangeLanguage({required LanguageEnum language}) {
    switch (language) {
      case LanguageEnum.en:
        emit(state.copyWith(texts: AppTexts.en));
        break;
      case LanguageEnum.kr:
        emit(state.copyWith(texts: AppTexts.kr));
        break;
      default:
        emit(state.copyWith(texts: AppTexts.fr));
    }
  }
}
