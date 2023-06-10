

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_getxservices/service.dart';



Future<void> main() async {
  await initServices();
  runApp( MyApp());
}

Future<void> initServices() async{
  print("Starting Services....");
  await Get.putAsync<Service>(()async =>await Service());
  print("All services started....");

}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green,),
      home: Scaffold(appBar: AppBar(title: const Text("Getx Services")),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){Get.find<Service>().incrementCounter();}, child: const Text("Increment"))
        ],
      ))
      
      
      )
    );
  }
}
