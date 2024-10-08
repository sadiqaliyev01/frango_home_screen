import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frango_home_screen/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int currentIndex = 0;
 // int currentHorizontalIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(HomeIndexChanged(currentIndex));
  }

  // void horizontalIndexChanged(int index) {
  //   currentHorizontalIndex = index;
  //   emit(HomeHorizontalIndexChanged(currentHorizontalIndex));
  // }
}

