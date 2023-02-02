import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/controller.dart';
import 'package:getx_1/my_cart.dart';

class Totalpage extends StatelessWidget {
  Totalpage({super.key});

  MyController controls = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(       
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total",style: TextStyle(
             
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              
                ),
                SizedBox(height: 20,),

                // Text(controls.sum.toString()),
                Obx(()=>Text("TotalItems == "+ controls.sum.toString(),
                style: TextStyle(             
                  color: Colors.greenAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))),

                SizedBox(height: 20,),

                Obx(()=>Text("Total Price == " + controls.totalprice.toString(),                
                style: TextStyle(             
                  color: Colors.greenAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,))),

                
                SizedBox(height: 20,),

                 Container(
                    width: 80,
                    height: 30,                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Colors.blue,
                    ),
                   child: ElevatedButton(
                        onPressed: () {
                          Get.to(()=>MyCart());
                        },
                        child: Text("Total")),
                 ),
            
          ],
        ),
      ),
    
    

    );
  }
}