import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frango_home_screen/cubit/home_cubit.dart';
import 'package:frango_home_screen/cubit/home_state.dart';
import 'package:frango_home_screen/data/local/frango_tako_data.dart';
import 'package:frango_home_screen/data/local/menu_categories_data.dart';
import 'package:frango_home_screen/home_screen/widgets/add_button.dart';
import 'package:frango_home_screen/home_screen/widgets/product_description.dart';
import 'package:frango_home_screen/home_screen/widgets/product_name.dart';
import 'package:frango_home_screen/home_screen/widgets/product_price.dart';
import 'package:frango_home_screen/home_screen/widgets/product_image.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuCategoriesData> menuCategories = MenuCategoriesData.getCategories;

    final ScrollController verticalScrollController = ScrollController();

    List<FrangoTakoData> takoData = FrangoTakoData.getFrangoTakoData;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        int selectedIndex = 0;
        if (state is HomeIndexChanged) {
          selectedIndex = state.currentIndex;
        }

        return ListView.builder(
          controller: verticalScrollController,
          shrinkWrap: true,
          itemCount: menuCategories.length,
          itemBuilder: (BuildContext context, int index) {
            final category = menuCategories[index];
            final isSelected = selectedIndex == index;

            // Her kategori için Card oluştur
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Column(
                    children: [
                      // Kategori başlığı
                      Text(
                        category.categoryNames,
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: takoData.length, // Kategoriye ait ürün sayısı
                          itemBuilder: (BuildContext context, int productIndex) {
                            final product = FrangoTakoData.getFrangoTakoData[productIndex]; // Ürün bilgilerini al

                            // Ürün bilgilerini göster
                            return Container(
                              height: 160,
                              margin: const EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: isSelected ? Colors.yellow : Colors.black,
                              ),
                              child: Row(
                                children: [
                                  ProductImage(
                                    imageLink: 'https://wla.berkeley.edu/images/random/random${index + 1}.jpg',
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Spacer(),
                                        ProductName(
                                          productName: product.name,
                                          style: GoogleFonts.roboto(
                                            color: isSelected ? Colors.black : Colors.yellow,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        ProductDescription(
                                          description: product.description,
                                          style: GoogleFonts.roboto(
                                            color: isSelected ? Colors.black : Colors.yellow,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(height: 24),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              ProductPrice(
                                                price: product.price,
                                                style: GoogleFonts.roboto(
                                                  color: isSelected ? Colors.black : Colors.yellow,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const SizedBox(width: 60),
                                              const AddButton(),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
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
