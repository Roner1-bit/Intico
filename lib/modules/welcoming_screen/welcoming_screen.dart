import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intico_glob/modules/login_screen/login_screen.dart';
import 'package:intico_glob/modules/welcoming_screen/cubit/welcoming_cubit.dart';
import 'package:intico_glob/modules/welcoming_screen/cubit/welcoming_state.dart';
import 'package:intico_glob/shared/components/components.dart';

import '../phone_Registeration_screen/registeration_layout.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => WelcomingCubit(),
        child: BlocConsumer<WelcomingCubit, WelcomingStates>(
            listener: (context, state) {




            },
            builder: (context, state) {
              return Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Column(
                      children: [
                        Image.asset('assets/images/icon.png',
                          width: 500,
                          height: 400,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterLayout()),
                            );
                          },
                          child: Card(
                            elevation: 11,
                            shadowColor: textColor,

                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: textColor, width: 1)
                            ),
                            child: horizontalCardsCreator(
                                 imageAssets: 'assets/images/google_icon.png',
                                 title: 'Continue with Google'),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterLayout()),
                            );
                          },
                          child: Card(
                            elevation: 11,
                            shadowColor: textColor,
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: textColor, width: 1)
                            ),
                            child: horizontalCardsCreator(
                                imageAssets: 'assets/images/phone.png',
                                title: 'Continue with Phone'),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterLayout()),
                            );
                          },
                          child: Card(
                            elevation: 11,
                            shadowColor: textColor,
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: textColor, width: 1)
                            ),
                            child: horizontalCardsCreator(
                                imageAssets: 'assets/images/facebook_logo_icon.png',
                                title: 'Continue with Facebook'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }


  Widget horizontalCardsCreator({
    required String imageAssets,
    required String title,
    //required Function onTap
  }) {

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Visibility(
            visible: true,
            child: AnimatedContainer(
              alignment: Alignment.center,
              duration: const Duration(seconds: 1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageAssets,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }


}
