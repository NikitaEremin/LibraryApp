part of 'items_bloc.dart';


sealed class ItemsEvent {}

class GetItems extends ItemsEvent{
  final int count;
  GetItems(this.count);
}


class GetStatus extends ItemsEvent{
  final int count;
  GetStatus(this.count);
}

