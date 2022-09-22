import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intico_glob/layout/cubit/states.dart';
import 'package:intico_glob/modules/Interiors_screen/Interiors_screen.dart';
import 'package:intico_glob/modules/phone_Registeration_screen/cubit/states.dart';
import 'package:intico_glob/shared/components/chat_item/chat_item.dart';


class PhoneRegisterCubit extends Cubit<RegisterStates> {
  PhoneRegisterCubit() : super(RegisterInitialState());
  static PhoneRegisterCubit get(context) => BlocProvider.of(context);

  static int currentScreenIndex = 0;

  List<Widget> screens = [
  ];

  void changeNavButton(int index) {
    currentScreenIndex = index;
    emit(RegisterChangeTabMenu(index));
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  changeVisibilityPassword() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(LoginChangePasswordVizState());
  }



}