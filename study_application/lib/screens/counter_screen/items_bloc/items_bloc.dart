import 'package:flutter_bloc/flutter_bloc.dart';

part 'items_event.dart';

part 'items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc() : super(ItemsState()) {
    on<GetItems>(_onGetItems);
    on<GetStatus>(_onGetStatus);
  }

  _onGetItems(GetItems event, Emitter<ItemsState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final List<Items> items =
    List.generate(
        event.count, (index) => Items(id: index.toString(), name: 'Item'));
    emit(state.copyWith(items: items));
  }


  _onGetStatus(GetStatus event, Emitter<ItemsState> emi) {
    emit(state.copyWith(isLoading: true));
    final List<Status> status =
    List.generate(
        event.count, (index) => Status(id: index.toString(), name: 'Status'));
    emit(state.copyWith(status: status));
  }
}
