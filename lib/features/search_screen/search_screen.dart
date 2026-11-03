import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../data/api_service.dart';
import '../../data/products_model.dart';
import '../../shared/app_container.dart';
import '../../shared/app_search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final ApiService _apiService = ApiService();

  Timer? _debounce;
  List<Products> _suggestions = [];
  bool _isLoading = false;

  void _onSearchChanged(String query) {
    _debounce?.cancel();

    if (query.trim().isEmpty) {
      setState(() {
        _suggestions = [];
        _isLoading = false;
      });
      return;
    }

    setState(() => _isLoading = true);

    _debounce = Timer(const Duration(milliseconds: 500), () async {
      try {
        final result = await _apiService.searchProducts(query.trim());
        if (mounted) {
          setState(() {
            _suggestions = result.products ?? [];
            _isLoading = false;
          });
        }
      } catch (e) {
        if (mounted) {
          setState(() => _isLoading = false);
        }
      }
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },

      child: MediaQuery.withClampedTextScaling(
        maxScaleFactor: 1,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                AppContainer(
                  borderRadius: BorderRadius.zero,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],

                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),

                      Expanded(
                        child: AppSearchBar(
                          controller: _controller,
                          onChanged: _onSearchChanged,
                        ),
                      ),

                      AppSpacing.w10,
                    ],
                  ),
                ),

                Expanded(
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.pink,
                          ),
                        )
                      : _controller.text.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.search_rounded,
                                size: 80,
                                color: AppColors.grey,
                              ),

                              AppSpacing.h15,

                              const Text(
                                'Search for Products...',
                                style: AppTextStyles.heading,
                              ),

                              AppSpacing.h5,

                              Text(
                                'Find clothes, shoes, electronics and more',
                                style: AppTextStyles.body.copyWith(
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      : _suggestions.isEmpty
                      ? Center(
                          child: Text(
                            'No products found for "${_controller.text}"',
                            style: AppTextStyles.title.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                        )
                      : ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemCount: _suggestions.length,
                          separatorBuilder: (context, index) => const Divider(
                            height: 1,
                            color: AppColors.grey100,
                          ),
                          itemBuilder: (context, index) {
                            final item = _suggestions[index];
                            return ListTile(
                              leading: const Icon(
                                Icons.search_rounded,
                                color: AppColors.grey,
                              ),

                              title: Text(
                                item.title ?? '',
                                style: AppTextStyles.title.copyWith(),
                              ),

                              trailing: const Icon(
                                Icons.north_west_rounded,
                                size: 18,
                                color: AppColors.grey,
                              ),

                              onTap: () {
                                AppRoutes.toProductListScreen(
                                  context,
                                  searchQuery: item.title,
                                );

                                _controller.clear();
                                setState(() {
                                  _suggestions = [];
                                });
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
