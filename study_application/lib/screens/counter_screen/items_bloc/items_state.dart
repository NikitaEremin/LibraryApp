part of 'items_bloc.dart';

class ItemsState {
  final List<Items> items;
  final List<Status> status;
  bool isLoading;

  ItemsState({
    this.items = const [],
    this.status = const [],
    this.isLoading = false,
  });

  ItemsState copyWith({
    List<Items>? items,
    List<Status>? status,
    bool isLoading = false,
  }) {
    return ItemsState(
        items: items ?? this.items,
        status: status ?? this.status,
        isLoading: isLoading);
  }
}

// final class ItemsInitial extends ItemsState {}
//
// final class ItemsLoadingState extends ItemsState{}
//
// final class ItemsLoadedState extends ItemsState{
//   final List<Items> items;
//   ItemsLoadedState(this.items);
// }
//
// final class ItemsLoadingErrorState extends ItemsState{}

class Items {
  final String name;
  final String id;

  Items({required this.name, required this.id});
}

class Status {
  final String name;
  final String id;

  Status({required this.name, required this.id});
}
