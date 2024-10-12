import 'package:flutter/material.dart';
import 'package:frango_home_screen/data/local/frango_tako_menyu_data.dart';
import 'package:frango_home_screen/home_screen/widgets/add_button.dart';
import 'package:frango_home_screen/home_screen/widgets/product_description.dart';
import 'package:frango_home_screen/home_screen/widgets/product_image.dart';
import 'package:frango_home_screen/home_screen/widgets/product_name.dart';
import 'package:frango_home_screen/home_screen/widgets/product_price.dart';
import 'package:google_fonts/google_fonts.dart';

class FrangoTakoMenyuCard extends StatelessWidget {
  const FrangoTakoMenyuCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<FrangoTakoMenyuData> frangoTakoMenuData =
        FrangoTakoMenyuData.getFrangoTakoMenuData;
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 8,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "FRANGO TAKO MENYU",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: ListView.builder(
              itemCount: frangoTakoMenuData.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final data = frangoTakoMenuData[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.black,
                    ),
                    child: Row(
                      children: [
                        const ProductImage(
                          imageLink:
                              'https://imageproxy.wolt.com/venue/612362d89a4171001403701c/05114526-04d2-11ec-b591-0a738749434e_toyuq_doner_coreyde.jpg',
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              ProductName(
                                productName: data.name,
                                style: GoogleFonts.roboto(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 12),
                              ProductDescription(
                                description: data.description,
                                style: GoogleFonts.roboto(
                                  color: Colors.yellow,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 24),
                              Expanded(
                                child: Row(
                                  children: [
                                    ProductPrice(
                                      price: data.price,
                                      style: GoogleFonts.roboto(
                                        color: Colors.yellow,
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
