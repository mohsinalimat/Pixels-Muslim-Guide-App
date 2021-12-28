import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../constants.dart';


class MorningOrNightProvider extends ChangeNotifier {
  CarouselType _carouselType = CarouselType.Morning;
  CrossFadeState _fadeState = CrossFadeState.showFirst;
  double _rotationValue = 0.0;

  /*-----------------------------------------------------------------------------------------------*/
  /*----------------------------------  getting carousel type  ------------------------------------*/
  /*-----------------------------------------------------------------------------------------------*/
  get carouselType => _carouselType;
  /*-----------------------------------------------------------------------------------------------*/
  /*-------------------------------------  getting fade state  ----------------------------------*/
  /*-----------------------------------------------------------------------------------------------*/
  get fadeState => _fadeState;
  /*-----------------------------------------------------------------------------------------------*/
  /*----------------------------------- getting rotation value  ---------------------------------*/
  /*-----------------------------------------------------------------------------------------------*/
  get rotationValue => _rotationValue;

  /*-----------------------------------------------------------------------------------------------*/
  /*----------------------------------  Setting carousel type  ------------------------------------*/
  /*-----------------------------------------------------------------------------------------------*/
  setCarouselType(carouselType) {
    _carouselType = carouselType;
    notifyListeners();
  }

  /*-----------------------------------------------------------------------------------------------*/
  /*-------------------------------------  setting fade state  ----------------------------------*/
  /*-----------------------------------------------------------------------------------------------*/
  switchFadeState(fadeState) {
    _fadeState = fadeState;
    notifyListeners();
  }


  /*-----------------------------------------------------------------------------------------------*/
  /*---------------------------------------  Rotation value  --------------------------------------*/
  /*-----------------------------------------------------------------------------------------------*/
  setRotationValue(val) {
    _rotationValue = val;
    notifyListeners();
  }
}