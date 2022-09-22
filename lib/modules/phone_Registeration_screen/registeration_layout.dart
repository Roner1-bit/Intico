import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intico_glob/modules/phone_Registeration_screen/phone_Registeration_widgets/phone_login.dart';
import 'package:intico_glob/modules/phone_Registeration_screen/phone_Registeration_widgets/phone_registeration.dart';
import 'package:intico_glob/modules/welcoming_screen/welcoming_screen.dart';
import 'package:intico_glob/shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<String> screensTitle = ["Sign Up", "Login"];
    return BlocProvider(
        create: (BuildContext context) => PhoneRegisterCubit(),
        child: BlocConsumer<PhoneRegisterCubit, RegisterStates>(
            listener: (context, state) {

        }, builder: (context, state) {
          var mainCubit = PhoneRegisterCubit.get(context);

          return MaterialApp(
            theme: ThemeData(
              primarySwatch: primarySwatch,
            ),
            home: DefaultTabController(
              length: 2,
              child: Scaffold(

                  appBar: AppBar(
                    flexibleSpace: SafeArea(
                      child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            // Creates border
                            color: Colors.white),
                        tabs: const [
                          Tab(
                            text: 'Login In',
                          ),
                          Tab(text: 'Sign Up'),

                        ],
                      ),
                    ),
                    backgroundColor: primarySwatch,
                    elevation: 0,
                  ),
                  body: TabBarView(
                    children: [
                      PhoneLogin(),
                      PhoneSignUp(),
                    ],
                  ),
                floatingActionButton: FloatingActionButton(
                  onPressed: (){

                    Navigator.pushAndRemoveUntil<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const WelcomeScreen(),
                      ),
                          (Route<dynamic> route) => false,
                    );

                  },
                  backgroundColor: primarySwatch,
                  child: const Icon(Icons.arrow_back_ios_new),
                ),
              ),
            ),
          );
        }));
  }
}
