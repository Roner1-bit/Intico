import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intico_glob/modules/welcoming_screen/cubit/welcoming_state.dart';


class WelcomingCubit extends Cubit<WelcomingStates>{

  WelcomingCubit():super(WelcomingInitialState());
  static WelcomingCubit get(context) => BlocProvider.of(context);

}