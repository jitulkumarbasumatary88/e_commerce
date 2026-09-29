// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getProducts)
final getProductsProvider = GetProductsProvider._();

final class GetProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductsModel>,
          ProductsModel,
          FutureOr<ProductsModel>
        >
    with $FutureModifier<ProductsModel>, $FutureProvider<ProductsModel> {
  GetProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProductsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProductsHash();

  @$internal
  @override
  $FutureProviderElement<ProductsModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductsModel> create(Ref ref) {
    return getProducts(ref);
  }
}

String _$getProductsHash() => r'6786289abdca81b74fc6658b2ab581dd25af0099';
