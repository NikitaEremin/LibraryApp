part of 'items_bloc.dart';

@immutable
sealed class ItemsEvent {}

class GetItems extends ItemsEvent{
  final int count;
  GetItems(this.count);
}