import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_id/bloc/get_home/get_home_cubit.dart';
import 'package:food_id/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //initialize bloc provider
      create: (context) => GetHomeCubit(),
      child: MaterialApp(
        title: 'FOOD.ID',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
