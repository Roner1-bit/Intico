import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intico_glob/layout/cubit/states.dart';
import 'package:intico_glob/shared/Bloc_Observer.dart';
import 'package:intico_glob/shared/components/components.dart';
import 'firebase_options.dart';
import 'layout/cubit/cubit.dart';
import 'modules/welcoming_screen/welcoming_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseFirestore.instance.settings =
  const Settings(
    persistenceEnabled: true,
  );

  BlocOverrides.runZoned(
        () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return BlocProvider(
        create: (BuildContext context) => HomeCubit(),
        //..getFoodData()
        //..getUser(),
        child:BlocConsumer<HomeCubit,HomeStates>(
          listener: (context,state){},
          builder: (context,state){
            return MaterialApp(
              title: 'Intico',
              theme: ThemeData(
                  scaffoldBackgroundColor: backgroundColor,
                  primarySwatch: primarySwatch
              ),
              home: const WelcomeScreen(),
            );
          },
        )
    );


  }
}





