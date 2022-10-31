import 'package:clinic_system_nusrse_version/controller/HomeScreen/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomePageInitialStates());

  static HomePageCubit get(context) => BlocProvider.of(context);

  List<Widget> screen=[

  ];
  int index=0;

  void ChangeScreen(int? number){
    index = number!;
    emit(ChangeScreenState());
  }



}