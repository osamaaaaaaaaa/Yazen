import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playing_with_flutter/controller/HomeController.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          color: Colors.blueGrey.shade400,
          margin: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: size.height * 0.3,
                  ),
                ),
                const Text(
                  ' عالم من الاناقه والجمال',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'size',
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    controller.selectTime(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey.shade200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            child: const Icon(
                          Icons.punch_clock_rounded,
                          color: Colors.white,
                          size: 70,
                        )),
                        const Text(
                          "احجز الان ",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //   Text('${controller.timeOfDay?.hour}'),
                if (controller.timeOfDay != null)
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          "يرجي الحضور الساعه ",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        Text(
                          ' ${controller.timeOfDay?.hour}:${controller.timeOfDay?.minute}',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
