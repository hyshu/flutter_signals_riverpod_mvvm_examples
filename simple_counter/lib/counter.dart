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
  final counter = signal(0);

  CounterViewModel() {
    effect(() {
      print(counter);
    });
  }
}
