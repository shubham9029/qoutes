import 'package:get/get.dart';
import 'package:quotes/screen/home/model/home_model.dart';
import 'package:quotes/utils/json_helper.dart';

class HomeController extends GetxController
{
  RxList<QuotesModel>list=<QuotesModel>[].obs;
  RxBool isLight = false.obs;
  Future<void> getJson()
  async {
    List<QuotesModel>? l1 =await JsonHelper.helper.QuotesJson();
    list.value = l1;
  }
}