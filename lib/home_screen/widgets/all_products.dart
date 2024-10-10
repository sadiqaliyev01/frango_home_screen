import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frango_home_screen/cubit/home_cubit.dart';
import 'package:frango_home_screen/cubit/home_state.dart';
import 'package:frango_home_screen/data/local/menu_categories_data.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuCategoriesData> menuCategories = MenuCategoriesData.getCategories;

    final ScrollController verticalScrollController = ScrollController();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        int selectedIndex = 0;
        if (state is HomeIndexChanged) {
          selectedIndex = state.currentIndex;
        }
        return ListView.builder(
          controller: verticalScrollController,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: menuCategories.length,
          itemBuilder: (BuildContext context, int index) {
            final data = menuCategories[index];
            final isSelected = selectedIndex == index;
            return Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Text(
                        data.categoryNames,
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: isSelected ? Colors.yellow : Colors.black,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 140,
                                height: 160,
                                child: Image.network(
                                  "https://wla.berkeley.edu/images/random/random${index + 1}.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      data.categoryNames,
                                      style: GoogleFonts.roboto(
                                        color: isSelected
                                            ? Colors.black
                                            : Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Row(
                                      children: [
                                        Text(
                                          "220 kcal",
                                          style: GoogleFonts.roboto(
                                            color: isSelected
                                                ? Colors.black
                                                : Colors.yellow,
                                            fontSize: 14,
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          "180 qram",
                                          style: GoogleFonts.roboto(
                                            color: isSelected
                                                ? Colors.black
                                                : Colors.yellow,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    Row(
                                      children: [
                                        Text(
                                          "3.00 AZN",
                                          style: GoogleFonts.roboto(
                                            color: isSelected
                                                ? Colors.black
                                                : Colors.yellow,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const SizedBox(width: 48),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.grey[800],
                                          ),
                                          onPressed: () {},
                                          child: const Icon(Icons.add),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
