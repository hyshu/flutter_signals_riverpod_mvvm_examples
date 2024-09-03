import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signals/signals_flutter.dart';

import 'counter.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: MyHomePage());
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(counterNotifierProvider(ModalRoute.of(context)!));

    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Watch((context) => Text('counter1: ${vm.counter1}')),
          ElevatedButton(onPressed: () => vm.counter1.value += 1, child: const Text("counter1++")),
          const SizedBox(height: 30),
          Watch((context) => Text('counter2: ${vm.counter2}')),
          ElevatedButton(onPressed: () => vm.counter2.value += 1, child: const Text("counter2++")),
          const SizedBox(height: 30),
          Watch((context) => Text('total: ${vm.total}')),
        ]),
      ),
    );
  }
}
