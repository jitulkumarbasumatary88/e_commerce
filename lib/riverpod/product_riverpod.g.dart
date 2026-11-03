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

@ProviderFor(searchProducts)
final searchProductsProvider = SearchProductsFamily._();

final class SearchProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductsModel>,
          ProductsModel,
          FutureOr<ProductsModel>
        >
    with $FutureModifier<ProductsModel>, $FutureProvider<ProductsModel> {
  SearchProductsProvider._({
    required SearchProductsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchProductsHash();

  @override
  String toString() {
    return r'searchProductsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProductsModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductsModel> create(Ref ref) {
    final argument = this.argument as String;
    return searchProducts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchProductsHash() => r'fa8dd28e81bee27c336a7fa11a4a48e1b9fc0ae1';

final class SearchProductsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProductsModel>, String> {
  SearchProductsFamily._()
    : super(
        retry: null,
        name: r'searchProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchProductsProvider call(String query) =>
      SearchProductsProvider._(argument: query, from: this);

  @override
  String toString() => r'searchProductsProvider';
}
