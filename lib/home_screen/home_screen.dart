import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frango_home_screen/cubit/home_cubit.dart';
import 'package:frango_home_screen/cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final ScrollController verticalScrollController = ScrollController();
    return ListView(
      children: [
        SizedBox(
          height: 200,
          child: Container(
            color: Colors.yellow,
            child: const Text(
              "dsada",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              int selectedIndex = 0;
              if (state is HomeIndexChanged) {
                selectedIndex = state.currentIndex;
              }
              return ListView.builder(
                itemCount: 12,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "$index",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            int selectedIndex = 0;
            if (state is HomeIndexChanged) {
              selectedIndex = state.currentIndex;
            }
            return ListView.builder(
              controller: verticalScrollController,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                final isSelected = selectedIndex == index;
                return Column(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          const Text("Lahmacun"),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Container(
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color:
                                    isSelected ? Colors.yellow : Colors.purple,
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
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Spacer(),
                                      const Text(
                                        "Sade Lahamcun",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Text("220 kcal"),
                                          SizedBox(width: 12),
                                          Text("180 qram"),
                                        ],
                                      ),
                                      const SizedBox(height: 24),
                                      Row(
                                        children: [
                                          const Text(
                                            "3.00 AZN",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
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
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Container(
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color:
                                    isSelected ? Colors.yellow : Colors.purple,
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
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Spacer(),
                                      Text(
                                        "Pendirli Lahamcun",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        children: [
                                          Text("290 kcal"),
                                          SizedBox(width: 12),
                                          Text("200 qram"),
                                        ],
                                      ),
                                      SizedBox(height: 24),
                                      Text(
                                        "3.50 AZN",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Spacer(),
                                    ],
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
        ),
      ],
    );
  }
}
