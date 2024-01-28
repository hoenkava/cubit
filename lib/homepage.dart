
import 'package:bloc_cubit/cubit/counter_cubit.dart';
import 'package:bloc_cubit/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    // BlocProvider.of: This is a method provided by the bloc package in Flutter. 
    // It is used to retrieve the instance of a BLoC (Business Logic Component) 
    // from the nearest ancestor in the widget tree.    

    // <CounterCubit>: This is a type parameter specifying the type of BLoC to retrieve. 
    // In this case, it's specifying that it is looking for an instance of CounterCubit.

    // (context): The context parameter is the build context. It is used to locate the 
    // nearest ancestor BlocProvider widget in the widget tree and obtain the associated 
    // CounterCubit

    // final counterCubit: This declares a variable named counterCubit with the inferred 
    // type. The obtained CounterCubit instance will be stored in this variable.
    return 
    Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text( title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterCubit, int>(
                bloc: counterCubit,
                builder:(context, counter) {return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );}
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const IncDecPage()));
        }, child: const Icon(Icons.arrow_forward),),
    
      );
    
  }
}
