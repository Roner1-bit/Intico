import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intico_glob/modules/phone_Registeration_screen/cubit/cubit.dart';

import '../../../layout/layout.dart';
import '../../../shared/components/components.dart';
import '../cubit/states.dart';


class PhoneLogin extends StatelessWidget{

  PhoneLogin({Key? key}) : super(key: key);


  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhoneRegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
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

                              return 'Please enter your user name correctly.';

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

                              return 'Please enter your password correctly.';

                          },
                          label: 'Password',
                          prefix: Icons.lock,
                          suffix: PhoneRegisterCubit.get(context).suffix,
                          isPassword: PhoneRegisterCubit.get(context).isPassword,
                          suffixPressed: (){
                            PhoneRegisterCubit.get(context).changeVisibilityPassword();
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
                                 print(_formKey.currentState);
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
        });
  }



}