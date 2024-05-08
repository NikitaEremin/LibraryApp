part of 'items_bloc.dart';

@immutable
sealed class ItemsState {}

final class ItemsInitial extends ItemsState {}

final class ItemsLoadingState extends ItemsState{}

final class ItemsLoadedState extends ItemsState{
  final List<Items> items;
  ItemsLoadedState(this.items);
}

final class ItemsLoadingErrorState extends ItemsState{}



class Items{
  final String name;
  final String id;

  Items({required this.name, required this.id});

}