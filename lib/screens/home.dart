import 'package:flutter/material.dart';
import 'package:flutter_json/controller/json_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JsonController>(
        init: JsonController(),
        builder: (jsonController) => Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.black,
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            appBar: AppBar(
              title: const Text("Home"),
            ),
            body: Obx(
              () => ListView(
                children: [
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: jsonController.users.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  color: Colors.white,
                                  height: 130,
                                  width: 110,
                                  child: Image.network(
                                    jsonController.users[index].avatar,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(jsonController.users[index].name),
                            Text(jsonController.users[index].email),
                          ],
                        );
                      }),
                ],
              ),
            )));
  }
}
