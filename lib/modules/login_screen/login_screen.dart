import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../layout/layout.dart';
import '../../shared/components/components.dart';
import 'cubit/login_cubit.dart';
import 'cubit/login_state.dart';

class LoginScreen extends StatelessWidget{

  LoginScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state){

        },
      builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              title: const Text('Login with Phone'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    children:[
                      const SizedBox(
                        height: 25.0,
                      ),
                      defaultFormField(
                          controller: emailController,
                          textType: TextInputType.number,
                          validate: (String value){
                            if(value.isEmpty){
                              return 'Please enter your user name correctly.';
                            }
                          },
                          label: 'Phone',
                          prefix: Icons.phone_android_outlined
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      defaultFormField(
                          controller: passwordController,
                          textType: TextInputType.visiblePassword,
                          validate: (String value){
                            if(value.isEmpty){
                              return 'Please enter your password correctly.';
                            }
                          },
                          label: 'Password',
                          prefix: Icons.lock,
                          suffix: LoginCubit.get(context).suffix,
                          isPassword: LoginCubit.get(context).isPassword,
                          suffixPressed: (){
                            LoginCubit.get(context).changeVisibilityPassword();
                          }
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      ConditionalBuilder(
                          condition: state is! LoginLoadingState,
                          builder: (context) =>
                              defaultButton(
                                submitFunction: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context) => const HomeLayout()),
                                        (Route<dynamic> route) => false,

                                  );
                                },
                                text: 'Sign in',
                                background: primarySwatch,
                              ),
                          fallback: (context) =>
                          CircularProgressIndicator(
                            color: primarySwatch,
                          )
                      ),
                      const SizedBox(
                        height: 25.0,
                      )
                    ]
                ),
              ),
            ),
          );
      },


      ),

    );
  }






}