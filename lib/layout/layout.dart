

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> screensTitle = [
      "Click on food to add to food calculator",
      "Food Calculator",
      "Steps Calculator",
      "Personal info",
    ];

    String screenTitle=screensTitle[0];
    return BlocProvider(
        create: (BuildContext context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, HomeStates>(
            listener: (context, state) {
              if(state is AppChangeBottomNavBarState){
                screenTitle=screensTitle[state.index];
              }

            },
            builder: (context, state) {

              var mainCubit = HomeCubit.get(context);

              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.redAccent[900],
                  title: Text(
                    screenTitle,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  elevation: 0,
                  actions: [
                    // Navigate to the Search Screen
                    IconButton(
                        onPressed: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => const SearchScreen())),
                        icon: const Icon(Icons.search))
                  ],
                ),
                backgroundColor: Colors.redAccent[900],
                body: mainCubit.screens[mainCubit.currentScreenIndex],
                bottomNavigationBar: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: Colors.deepOrange,
                  selectedItemColor: Colors.red,
                  unselectedItemColor: Colors.grey,
                  currentIndex: mainCubit.currentScreenIndex,
                  onTap: (index){
                    mainCubit.changeNavButton(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.fastfood,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.calculate_outlined,
                      ),
                      label: 'Food Calculator',
                    ),

                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.do_not_step,
                      ),
                      label: 'Steps Calculator',
                    ),

                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.account_box,
                      ),
                      label: 'Personal Info',
                    ),

                  ],
                ),
              );
            }
        )
    );
  }
}