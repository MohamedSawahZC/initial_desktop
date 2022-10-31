import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:clinic_system_nusrse_version/controller/HomeScreen/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/HomeScreen/states.dart';
import '../shared/constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BlocConsumer<HomePageCubit, HomePageStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
            //TODO : 1) Side Bar
            SizedBox(
                width: 200,
                child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        WindowTitleBarBox(child: MoveWindow()),
                        Expanded(child: Container())
                      ],
                    ))),
            //TODO : 2) Left Side
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Column(children: [
                  WindowTitleBarBox(
                    child: Row(
                      children: [
                        Expanded(child: MoveWindow()),
                        const WindowButtons()
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        );
      },
    );
  }
}
