abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeChangeBottomNavBarState extends HomeStates {
  final int index;
  HomeChangeBottomNavBarState(this.index);

}



}