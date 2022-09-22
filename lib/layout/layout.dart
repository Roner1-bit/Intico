import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intico_glob/modules/Interiors_screen/Interiors_screen.dart';
import 'package:intico_glob/shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> screensTitle = [
      "Home",
      "Chats",
      "Favorites",
      "Profile",
    ];
    String screenTitle=screensTitle[0];
    return BlocProvider(
        create: (BuildContext context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, HomeStates>(
            listener: (context, state) {
              if(state is HomeChangeBottomNavBarState){
                screenTitle=screensTitle[state.index];
              }
              if(state is HomeInteriorState){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InteriorScreen()),
                );
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
                        onPressed: () {},
                        icon: const Icon(Icons.search))
                  ],
                ),
                backgroundColor: Colors.redAccent[900],
                body: mainCubit.screens[mainCubit.currentScreenIndex],
                bottomNavigationBar: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  selectedItemColor: primarySwatch,
                  unselectedItemColor: Colors.grey,
                  currentIndex: mainCubit.currentScreenIndex,
                  onTap: (index){
                    mainCubit.changeNavButton(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.chat_outlined,
                      ),
                      label: 'Chats',
                    ),

                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite,
                      ),
                      label: 'Favorites',
                    ),

                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.account_box,
                      ),
                      label: 'Profile',
                    ),

                  ],
                ),
              );
            }
        )
    );
  }
}