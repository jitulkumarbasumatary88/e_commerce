// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

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

String _$productsNotifierHash() => r'09f456462e96527ce86df05fe0a5257587539128';

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
