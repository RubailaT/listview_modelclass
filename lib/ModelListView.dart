 import 'package:flutter/material.dart';
import 'package:listview_modelclass/modellist.dart';

class ModelListView extends StatelessWidget {
  const ModelListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items=[Model_demo(item: "Facebook",price: "778"),
      Model_demo(item: "facebook",price: "768"),
      Model_demo(item: "A10 NETWORKS INC.",price: "678"),
      Model_demo(item: "intel corp",price: "458"),
      Model_demo(item: "HP Inc",price: "798"),
      Model_demo(item: "Advanced micro Devices inc.",price: "778"),
      Model_demo(item: "Apple inc",price: "348"),
      Model_demo(item: "Microsoft Corporation",price: "767"),

    ];

    // List Items=["Facebook","A10 NETWORKS INC.",
    //   "Intel corp","HP Inc","Advanced micro Devices inc.",
    //   "Apple inc","Amazon.com Inc.",
    //   "Microsoft Corporation","Facebook" ];
    // List Letters=["F","A","I","H","A","A","A","M","F"];
    //
    //
    // List Trail=["339.1","10.34","56.96",
    //   "32.43","77.44","133.98","3505.44","265.51","339.1"];

    return Scaffold(
      appBar: AppBar(title: Text("Model List View"),),
      body:ListView.builder(
        itemCount: items.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigo,
                  child: Text(items[index].item[0].toUpperCase()),
                ),
                title: Text(items[index].item),
                trailing: Text('\$ '+items[index].price),
              ),

            );

          },),

    );
  }
}
