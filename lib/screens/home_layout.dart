import 'package:bloc_x/screens/cubit/cubit.dart';
import 'package:bloc_x/screens/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
        child: BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
          listener: (context, state) {},
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
                key: scaffoldKey,
                body: cubit.bnbItems[cubit.currentIndex],
                bottomNavigationBar: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: cubit.currentIndex,
                    onTap: (index) {
                      cubit.changeIndex(index);
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.task_alt_rounded),
                        label: "Tasks",
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.check_circle_rounded),
                          label: "Done"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.archive_rounded), label: "Archived")
                    ]));
          }),
    ));
  }
}
