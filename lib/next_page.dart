import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxprac/counter_controller.dart';

class NextPage extends StatelessWidget {
  // CounterController controller = Get.put(CounterController());

  final controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${controller.count}',
            style: TextStyle(fontSize: 52, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 12, 30, 12),
              decoration: BoxDecoration(
                  color: Colors.amberAccent[200],
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                'Back',
                style: TextStyle(fontSize: 32),
              ),
            ),
          )
        ],
      )),
    );
  }
}
