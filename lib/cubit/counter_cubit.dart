import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  //Jab b hum cubit extend karte hai toh hume Cubit ko constructor pass krna hota hai 
  //Cubit has a Constructor and its value needs to be passed from the child class
  //(Counter Cubit) to the parent class(Cubit) so we need to pass in the value which is 
  //initial state from counter Cubit to this Cubit and is case mai initial state mai hume
  //counter ki value 0 rakhni hai islie 0 pass kia hai
  CounterCubit() : super(0);

  void increment(){

    emit(state+1);
    // emit updates the state of this class to the state that is provided in this parameter 
    // so if I just part image State + one it would update the state to state + one and it 
    // would notify all the listeners listening to this counter Cubit that hey the state has 
    // changed please update your UI
  }

  void decrement(){
        if(state == 0){return;}
    emit(state - 1);
  }

}