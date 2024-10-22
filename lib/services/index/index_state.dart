part of 'index_cubit.dart';

final class IndexState extends Equatable {
  final PageIndex index;
  final List<GlobalKey> pageKeys;

  const IndexState({required this.index, required this.pageKeys});

  IndexState copyWith(
          {required PageIndex index, required List<GlobalKey> pageKeys}) =>
      IndexState(index: index, pageKeys: pageKeys);

  @override
  List<Object> get props => [index, pageKeys];
}
