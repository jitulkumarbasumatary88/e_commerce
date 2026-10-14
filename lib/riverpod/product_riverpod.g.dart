// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductsNotifier)
final productsProvider = ProductsNotifierProvider._();

final class ProductsNotifierProvider
    extends $AsyncNotifierProvider<ProductsNotifier, ProductsModel> {
  ProductsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsNotifierHash();

  @$internal
  @override
  ProductsNotifier create() => ProductsNotifier();
}

String _$productsNotifierHash() => r'1dbb45dc1f429e159133b827b5b42b95110aa362';

abstract class _$ProductsNotifier extends $AsyncNotifier<ProductsModel> {
  FutureOr<ProductsModel> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ProductsModel>, ProductsModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductsModel>, ProductsModel>,
              AsyncValue<ProductsModel>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
