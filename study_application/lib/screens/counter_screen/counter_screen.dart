import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_application/screens/counter_screen/counter_bloc/counter_screen_bloc.dart';
import 'package:study_application/screens/counter_screen/items_bloc/items_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  static String routeName = 'counter_page';

  @override
  Widget build(BuildContext context) {
    final counterBloc = CounterBloc();
    final itemsBloc = ItemsBloc();
    TextTheme textTheme = Theme.of(context).textTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => counterBloc,
        ),
        BlocProvider(
          create: (context) => itemsBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter with Bloc'),
        ),
        body: Center(
          child: Column(
            children: [
              BlocBuilder(
                  bloc: counterBloc,
                  builder: (BuildContext context, state) {
                    return Text(
                      state.toString(),
                      style: textTheme.headlineMedium,
                    );
                  }),
              BlocBuilder<ItemsBloc, ItemsState>(
                  bloc: itemsBloc,
                  builder: (BuildContext context, state) {
                    final items = state.items;
                    final status = state.status;
                    return Column(
                      children: [
                        if (items.isEmpty && state.isLoading)
                          const CircularProgressIndicator(),
                        if (items.isNotEmpty)
                          ...items.map((e) => Text('${e.name} ${e.id}')),
                        if (status.isNotEmpty)
                          ...status.map((e) => Text('${e.name} ${e.id}')),
                      ],
                    );
                  }),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: IconButton(
                onPressed: () {
                  counterBloc.add(IncrementCounterEvent());
                },
                icon: const Icon(Icons.add),
              ),
            ),
            IconButton(
              onPressed: () {
                counterBloc.add(DecrementCounterEvent());
              },
              icon: const Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                itemsBloc.add(GetItems(counterBloc.state));
              },
              icon: const Icon(Icons.refresh),
            ),
            IconButton(
              onPressed: () {
                itemsBloc.add(GetStatus(counterBloc.state));
              },
              icon: const Icon(Icons.download),
            ),
          ],
        ),
      ),
    );
  }
}
