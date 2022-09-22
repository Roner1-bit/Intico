import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/layout.dart';
import '../../../shared/components/components.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class PhoneSignUp extends StatelessWidget {

  PhoneSignUp({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String firstName="";
  String lastName="";
  String phone="";
  String password="";
  String confirmedPassword="";

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhoneRegisterCubit, RegisterStates>(

        listener: (context, state) {

        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                    children:[
                      const SizedBox(
                        height: 25.0,
                      ),
                      defaultFormField(
                          controller: firstNameController,
                          textType: TextInputType.name,
                          validate: (String value){
                            if(value.isEmpty){
                              return 'Please enter your password correctly.';
                            }
                          },
                          label: 'First Name',
                          prefix: Icons.account_circle,

                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      defaultFormField(
                        controller: lastNameController,
                        textType: TextInputType.name,
                        validate: (String value){
                          if(value.isEmpty){
                            return 'Please enter your password correctly.';
                          }
                        },
                        label: 'Last Name',
                        prefix: Icons.account_circle,

                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      defaultFormField(
                        controller: phoneNumber,
                        textType: TextInputType.number,
                        validate: (String value){
                          if(value.isEmpty){
                            return 'Please enter your phone number correctly.';
                          }
                        },
                        label: 'Phone Number',
                        prefix: Icons.phone_android,

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
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context) => const HomeLayout()),
                                        (Route<dynamic> route) => false,

                                  );
                                },
                                text: 'Register',
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
        }
    );
  }
}