import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'index_state.dart';

enum PageIndex { home, about, workflow, contact }

List<GlobalKey> pageKeys = [
  GlobalKey(debugLabel: "home"),
  GlobalKey(debugLabel: "about"),
  GlobalKey(debugLabel: "workflow"),
  GlobalKey(debugLabel: "contact"),
];

class IndexCubit extends Cubit<IndexState> {
  IndexCubit(final PageIndex index)
      : super(IndexState(index: index, pageKeys: pageKeys));

  onChangeIndex({required PageIndex newIndex}) {
    Scrollable.ensureVisible(pageKeys[newIndex.index].currentContext!,
        duration: const Duration(milliseconds: 200), curve: Curves.easeOut);
    emit(state.copyWith(index: newIndex, pageKeys: pageKeys));
  }
}
