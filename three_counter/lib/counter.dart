import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:signals/signals.dart';

part 'counter.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  CounterViewModel build(ModalRoute route) => CounterViewModel();
}

class CounterViewModel {
  final counter1 = signal(0);
  final counter2 = signal(0);
  final total = signal(-1);

  CounterViewModel() {
    effect(() {
      print("$counter1, $counter2");
      untracked(() => total.value += 1);
    });
  }
}
