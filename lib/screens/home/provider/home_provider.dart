
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:randomuser_api/screens/home/model/home_model.dart';
import 'package:randomuser_api/utils/api_helper.dart';

class HomeProvider extends ChangeNotifier
{
  RandomUser? data;
  ApiHelper apiHelper = ApiHelper();

  Future<RandomUser> find()
  async {
    RandomUser randomUser = await apiHelper.callApi();
    RandomUser data = randomUser;
    return data;
  }


  void change(Data)
  {
    data = Data;
    notifyListeners();
  }

}