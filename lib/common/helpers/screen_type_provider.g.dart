// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_type_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$screenTypeHash() => r'480e00dda4c531abe379f99438fc6e3f55d13337';

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

typedef ScreenTypeRef = AutoDisposeProviderRef<ScreenType>;

/// Provider used to return a [ScreenType] based on the width of the device.
/// Parameter [useContext] is optional (useful if we do not have access to buildContext). If not provided buildContext is used
///
/// Copied from [screenType].
@ProviderFor(screenType)
const screenTypeProvider = ScreenTypeFamily();

/// Provider used to return a [ScreenType] based on the width of the device.
/// Parameter [useContext] is optional (useful if we do not have access to buildContext). If not provided buildContext is used
///
/// Copied from [screenType].
class ScreenTypeFamily extends Family<ScreenType> {
  /// Provider used to return a [ScreenType] based on the width of the device.
  /// Parameter [useContext] is optional (useful if we do not have access to buildContext). If not provided buildContext is used
  ///
  /// Copied from [screenType].
  const ScreenTypeFamily();

  /// Provider used to return a [ScreenType] based on the width of the device.
  /// Parameter [useContext] is optional (useful if we do not have access to buildContext). If not provided buildContext is used
  ///
  /// Copied from [screenType].
  ScreenTypeProvider call({
    bool useContext = true,
  }) {
    return ScreenTypeProvider(
      useContext: useContext,
    );
  }

  @override
  ScreenTypeProvider getProviderOverride(
    covariant ScreenTypeProvider provider,
  ) {
    return call(
      useContext: provider.useContext,
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
  String? get name => r'screenTypeProvider';
}

/// Provider used to return a [ScreenType] based on the width of the device.
/// Parameter [useContext] is optional (useful if we do not have access to buildContext). If not provided buildContext is used
///
/// Copied from [screenType].
class ScreenTypeProvider extends AutoDisposeProvider<ScreenType> {
  /// Provider used to return a [ScreenType] based on the width of the device.
  /// Parameter [useContext] is optional (useful if we do not have access to buildContext). If not provided buildContext is used
  ///
  /// Copied from [screenType].
  ScreenTypeProvider({
    this.useContext = true,
  }) : super.internal(
          (ref) => screenType(
            ref,
            useContext: useContext,
          ),
          from: screenTypeProvider,
          name: r'screenTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$screenTypeHash,
          dependencies: ScreenTypeFamily._dependencies,
          allTransitiveDependencies:
              ScreenTypeFamily._allTransitiveDependencies,
        );

  final bool useContext;

  @override
  bool operator ==(Object other) {
    return other is ScreenTypeProvider && other.useContext == useContext;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, useContext.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
