
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:quotes/screen/home/controller/home_controller.dart';
import 'package:quotes/screen/home/model/home_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    controller.getJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.black ,

        title: Text("Quotes"),
        centerTitle: true,
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed('detail');
                controller.list;
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100,
                padding: EdgeInsets.all(10),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                  ),
                child: Text(
                  "${controller.list[index].quote}",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis
                  ),
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}
