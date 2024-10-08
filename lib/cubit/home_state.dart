sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeIndexChanged extends HomeState {
  final int currentIndex;

  HomeIndexChanged(this.currentIndex);
}
//
// final class HomeHorizontalIndexChanged extends HomeState {
//   final int currentHorizontalIndex;
//
//   HomeHorizontalIndexChanged(this.currentHorizontalIndex);
// }
