import 'package:easy_container/easy_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import '../../shared/components/components.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: EasyContainer(
                    height: 150,
                    width: 300,
                    padding: 10,
                    elevation: 10,
                    onTap: () => (){
                      HomeCubit.get(context).changeToInterior();
                    },
                    margin: 10,
                    borderRadius: 20,
                    color: primarySwatch,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Image.asset(
                            'assets/images/chair.png',
                          ),
                        ),
                        const Expanded(
                          child: Text(
                              'Interiors 1',
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: EasyContainer(
                    height: 150,
                    width: 300,
                    padding: 10,
                    elevation: 10,
                    onTap: () => debugPrint("Container Tapped"),
                    margin: 10,
                    borderRadius: 20,
                    color: primarySwatch,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Image.asset(
                            'assets/images/chair.png',
                          ),
                        ),
                        const Expanded(
                          child: Text(
                              'Interiors 2',
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: EasyContainer(
                    height: 150,
                    width: 300,
                    padding: 10,
                    elevation: 10,
                    onTap: () => debugPrint("Container Tapped"),
                    margin: 10,
                    borderRadius: 20,
                    color: primarySwatch,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Image.asset(
                            'assets/images/chair.png',
                          ),
                        ),
                        const Expanded(
                          child: Text(
                              'Interiors 3',
                              style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}








//
// return Container(
// margin: const EdgeInsets.only(
// left: 30, top: 100, right: 30, bottom: 50),
// height: double.infinity,
// width: double.infinity,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: const BorderRadius.only(
// topLeft: Radius.circular(10),
// topRight: Radius.circular(10),
// bottomLeft: Radius.circular(10),
// bottomRight: Radius.circular(10)
// ),
// boxShadow: [
// BoxShadow(
// color: Colors.grey.withOpacity(0.5),
// spreadRadius: 5,
// blurRadius: 7,
// offset: const Offset(0, 3), // changes position of shadow
// ),
// ],
// ),
// );
