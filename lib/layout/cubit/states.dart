abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeChangeBottomNavBarState extends HomeStates {
  final int index;
  HomeChangeBottomNavBarState(this.index);
}

class HomeInteriorState extends HomeStates {}

class GetFoodSuccessState extends HomeStates{}

class GetFoodLoadingState extends HomeStates{}

class GetFoodErrorState extends HomeStates{
  final String error;
  GetFoodErrorState(this.error);

}

class SearchFoodLoadingState extends HomeStates{}
class SearchFoodSuccessState extends HomeStates{}

class SearchFoodFailState extends HomeStates{}

class FoodRemoveState extends HomeStates{}
class FoodRemoveSuccessState extends HomeStates{}
class FoodCalculationEmpty extends HomeStates{}
class FoodCalculationSuccess extends HomeStates{}


class GetUserSuccessState extends HomeStates{}

class GetUserLoadingState extends HomeStates{}

class GetUserErrorState extends HomeStates{
  final String error;
  GetUserErrorState(this.error);

}

class SetUserSuccessState extends HomeStates{}

class SetUserLoadingState extends HomeStates{}

class SetUserErrorState extends HomeStates{
  final String error;
  SetUserErrorState(this.error);

}



