import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'items_event.dart';

part 'items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc() : super(ItemsInitial()) {
    on<GetItems>(_onGetItemsEvent);
  }

  _onGetItemsEvent(GetItems event, Emitter<ItemsState> emit) async {
    emit(ItemsLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    final List<Items> items =
        List.generate(event.count, (index) => Items(id: index.toString(), name: 'Item'));

    emit(ItemsLoadedState(items));
  }
}
