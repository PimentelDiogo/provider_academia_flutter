import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProviderController extends ChangeNotifier{
  String name ='Nome';
  String imgAvatar = 'https://cdn.dribbble.com/users/2118516/screenshots/12095538/media/ba412c50d634cc943ac2610dfe5f6d77.png?compress=1&resize=400x300';
  String bithDate = 'Data';

  void mudarDados(){
    bithDate = '10.04.1993';
    imgAvatar ='https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg';
    name ='Diogo';
    notifyListeners();
  }
}