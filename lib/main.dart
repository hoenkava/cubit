import 'package:bloc_cubit/cubit/counter_cubit.dart';
import 'package:bloc_cubit/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // BlocProvider: It is typically used to manage the lifecycle of a BLoC by providing 
      // it to the widget tree.
      create: (_) => CounterCubit(),
      // create parameter of BlocProvider. It's responsible for creating the instance of 
      // the BLoC that will be provided to the widget tree.
      // _: The underscore here is a conventional way to indicate that the parameter is 
      // not being used. In this case, it's not necessary to use the parameter.
      // CounterCubit(): This is the instantiation of the CounterCubit class, 
      //Isi 1 instance ko ab hum poore code mai use karenge, toh agar is class k 
      //business logic mai kisi b chiz ki value change hogi toh wo har jagh reflect hogi presumably a 
      // BLoC class that extends Cubit or a similar class provided by the bloc package. 
      // It represents the business logic for managing state related to a counter.
      child: MaterialApp(
        title: 'Cubit Tutorial',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Cubit'),
      ),
    );
  }
}

