abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterChangeTabMenu extends RegisterStates {
  final int index;
  RegisterChangeTabMenu(this.index);
}


class LoginChangePasswordVizState extends RegisterStates{}
class LoginLoadingState extends RegisterStates{}
class LoginSuccessState extends RegisterStates{}
class LoginFailState extends RegisterStates{}


