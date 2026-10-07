// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartNotifier)
final cartProvider = CartNotifierProvider._();

final class CartNotifierProvider
    extends $NotifierProvider<CartNotifier, List<Products>> {
  CartNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartNotifierHash();

  @$internal
  @override
  CartNotifier create() => CartNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Products> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Products>>(value),
    );
  }
}

String _$cartNotifierHash() => r'765a00fad2b456eb7befd42725267863d5a193f7';

abstract class _$CartNotifier extends $Notifier<List<Products>> {
  List<Products> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<Products>, List<Products>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Products>, List<Products>>,
              List<Products>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
