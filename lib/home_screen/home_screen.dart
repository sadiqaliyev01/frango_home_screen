import 'dart:developer';

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
            child: const Text("dsada", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              int selectedIndex = 0;
              if(state is HomeIndexChanged){
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

                      if(isSelected == true) {
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
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "$index",
                        style: const TextStyle(color: Colors.white,
                            fontSize: 18),
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
                return GestureDetector(
                  onTap: () {
                    log("item $index tapped");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isSelected ? Colors.yellow : Colors.purple,
                      ),
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
