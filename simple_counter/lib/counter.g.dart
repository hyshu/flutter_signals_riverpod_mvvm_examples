// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterNotifierHash() => r'7368b69ac4248d927723f27578f3d7646ceb10d4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CounterNotifier
    extends BuildlessAutoDisposeNotifier<CounterViewModel> {
  late final ModalRoute<dynamic> route;

  CounterViewModel build(
    ModalRoute<dynamic> route,
  );
}

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
const counterNotifierProvider = CounterNotifierFamily();

/// See also [CounterNotifier].
class CounterNotifierFamily extends Family<CounterViewModel> {
  /// See also [CounterNotifier].
  const CounterNotifierFamily();

  /// See also [CounterNotifier].
  CounterNotifierProvider call(
    ModalRoute<dynamic> route,
  ) {
    return CounterNotifierProvider(
      route,
    );
  }

  @override
  CounterNotifierProvider getProviderOverride(
    covariant CounterNotifierProvider provider,
  ) {
    return call(
      provider.route,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'counterNotifierProvider';
}

/// See also [CounterNotifier].
class CounterNotifierProvider
    extends AutoDisposeNotifierProviderImpl<CounterNotifier, CounterViewModel> {
  /// See also [CounterNotifier].
  CounterNotifierProvider(
    ModalRoute<dynamic> route,
  ) : this._internal(
          () => CounterNotifier()..route = route,
          from: counterNotifierProvider,
          name: r'counterNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterNotifierHash,
          dependencies: CounterNotifierFamily._dependencies,
          allTransitiveDependencies:
              CounterNotifierFamily._allTransitiveDependencies,
          route: route,
        );

  CounterNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.route,
  }) : super.internal();

  final ModalRoute<dynamic> route;

  @override
  CounterViewModel runNotifierBuild(
    covariant CounterNotifier notifier,
  ) {
    return notifier.build(
      route,
    );
  }

  @override
  Override overrideWith(CounterNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterNotifierProvider._internal(
        () => create()..route = route,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        route: route,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CounterNotifier, CounterViewModel>
      createElement() {
    return _CounterNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterNotifierProvider && other.route == route;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, route.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CounterNotifierRef on AutoDisposeNotifierProviderRef<CounterViewModel> {
  /// The parameter `route` of this provider.
  ModalRoute<dynamic> get route;
}

class _CounterNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<CounterNotifier,
        CounterViewModel> with CounterNotifierRef {
  _CounterNotifierProviderElement(super.provider);

  @override
  ModalRoute<dynamic> get route => (origin as CounterNotifierProvider).route;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
