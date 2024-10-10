import 'package:flutter/material.dart';
import 'package:frango_home_screen/home_screen/widgets/all_products.dart';
import 'package:frango_home_screen/home_screen/widgets/menu_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<HomeCubit>();
    // List<MenuCategoriesData> menuCategories = MenuCategoriesData.getCategories;
    //
    // final ScrollController verticalScrollController = ScrollController();
    return SafeArea(
      child: ListView(
        children: const [
          SizedBox(height: 20),
          SizedBox(
            height: 40,
            child: MenuCategories(), // menu categories
          ),
          SizedBox(height: 20),
          AllProducts(), // all products          // BlocBuilder<HomeCubit, HomeState>(
        ],
      ),
    );
  }
}
