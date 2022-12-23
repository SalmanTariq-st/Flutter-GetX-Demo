import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxprac/next_page.dart';
import 'counter_controller.dart';

class HomePage extends GetView<CounterController> {
  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter in GetX',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => Text(
                  '${controller.count}',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      controller.decrement();
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 176, 138, 25))),
                      child: Text(
                        'Decrement',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      controller.increment();
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 176, 138, 25))),
                      child: Text(
                        'Increment',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.to(NextPage());
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.amber[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 176, 138, 25))),
                  child: Text(
                    'Next Page',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
