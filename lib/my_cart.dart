import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:getx_1/controller.dart';
import 'package:getx_1/total_page.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  MyController controls = Get.put(MyController());

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Books",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          controls.increment();
                        },
                        icon: Icon(Icons.add)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Obx(() => Text(
                        controls.books.value.toString(),
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  
                  Obx(() => Text(
                        controls.booktotalprice.toString(),
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          controls.decrement();
                        },
                        icon: Icon(Icons.remove)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Pens",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          onPressed: () {
                            controls.PensIncrement();
                          },
                          icon: Icon(Icons.add))),
                  SizedBox(
                    width: 20,
                  ),
                  Obx(() => Text(
                        controls.pens.value.toString(),
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),

                  Obx(() => Text(
                        controls.pentotalprice.toString(),
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  

                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          controls.PensDecrement();
                        },
                        icon: Icon(Icons.remove)),
                    
                  ),             
            
                ],
              ),
              SizedBox(
                height: 30,
              ),

              Row(               
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(()=>Totalpage());
                      },
                      child: Text("Total")),
                ],
              )
             
            ],
          ),
        ),
      ),
    );
  }
}
