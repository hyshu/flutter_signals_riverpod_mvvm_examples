import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:signals/signals.dart';

import 'writable_extension.dart';

part 'counter.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  CounterViewModel build(ModalRoute route) => CounterViewModel(counterNotifierProvider(route).notifier);

  void increment() => state.counter.writable += 1;
}

class CounterViewModel {
  final counter = signal(0).readonly();

  final Refreshable<CounterNotifier> notifier;

  CounterViewModel(this.notifier) {
    effect(() {
      print(counter);
    });
  }
}
