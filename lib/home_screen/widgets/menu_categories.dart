import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frango_home_screen/cubit/home_cubit.dart';
import 'package:frango_home_screen/cubit/home_state.dart';
import 'package:frango_home_screen/data/local/menu_categories_data.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCategories extends StatelessWidget {
  const MenuCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuCategoriesData> menuCategories = MenuCategoriesData.getCategories;
    final cubit = context.read<HomeCubit>();
    final ScrollController verticalScrollController = ScrollController();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        int selectedIndex = 0;
        if (state is HomeIndexChanged) {
          selectedIndex = state.currentIndex;
        }
        return ListView.builder(
          itemCount: menuCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final data = menuCategories[index];
            final isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                cubit.changeIndex(index);

                if (isSelected == true) {
                  verticalScrollController.animateTo(0,
                      duration: const Duration(microseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.yellow : Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  data.categoryNames,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: isSelected ? Colors.black : Colors.white,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
