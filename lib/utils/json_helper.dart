import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quotes/screen/home/model/home_model.dart';

class JsonHelper
{
  static JsonHelper helper=JsonHelper._();
  JsonHelper._();
  Future<List<QuotesModel>> QuotesJson()async {
    var jsonString = await rootBundle.loadString("assets/json/quotes.json");
    List jsonList=jsonDecode(jsonString);
    List<QuotesModel> quotesList=jsonList.map((e)=>QuotesModel.mapToModel(e)).toList();
    return quotesList;

  }
}