import 'package:signals/signals.dart';

extension Writable<T> on ReadonlySignal<T> {
  T get writable => value;
  set writable(T value) => (this as Signal<T>).value = value;
}
