import 'package:bloc_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

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

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back)),
      ),
          floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: '1',
              onPressed: (){
                counterCubit.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              heroTag: '2',
              onPressed: (){
                
                counterCubit.decrement();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.minimize),
            ),
          ],
        ),
    );
  }
}