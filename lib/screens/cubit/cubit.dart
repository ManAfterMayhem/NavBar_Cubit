import 'package:bloc_x/screens/archived_tasks.dart';
import 'package:bloc_x/screens/cubit/states.dart';
import 'package:bloc_x/screens/done_tasks.dart';
import 'package:bloc_x/screens/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bnbItems = [
    const TasksScreen(),
    const DoneTasks(),
    const ArcivedTasks(),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangedBottomNavState());
  }
}
