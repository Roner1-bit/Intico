import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intico_glob/layout/cubit/states.dart';
import 'package:intico_glob/modules/Interiors_screen/Interiors_screen.dart';
import 'package:intico_glob/shared/components/chat_item/chat_item.dart';

import '../../modules/Home/home_screen.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());
  static HomeCubit get(context) => BlocProvider.of(context);

  int currentScreenIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    ChatItemWidget(1),
    const InteriorScreen(),

  ];

  void changeNavButton(int index) {
    currentScreenIndex = index;
    emit(HomeChangeBottomNavBarState(index));
  }

  void changeToInterior(){
    emit(HomeInteriorState());
  }






  bool equalsIgnoreCase(String string1, String string2) {
    return string1.toLowerCase().contains(string2.toLowerCase());
  }


}