import 'package:flutter/material.dart';

class Counterprovider extends ChangeNotifier{
  List<int> numbers = [1,2,3];

  void add(){
    
    numbers.add(numbers.last+1);
    notifyListeners();
  }
  void minus(){
   if(numbers.isNotEmpty)
   {
    numbers.removeLast();
    notifyListeners();
   }
} 
}