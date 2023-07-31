
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:crud/core.dart';
import '../controller/mainmenu_controller.dart';

class MainmenuView extends StatefulWidget {
    const MainmenuView({Key? key}) : super(key: key);

    Widget build(context, MainmenuController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Main Menu"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
        itemCount: controller.userList.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.userList[index];
        return InkWell(
          onTap: () async{
            await Navigator.push(context, MaterialPageRoute(builder: (c)=>AddView(item: item!,)));
            await controller.loadUser();
          },
          child: Card(
          child: ListTile(
            
          title:  Text("${item["username"]}"),
          subtitle:  Text("${item["address"]}"),
          trailing: IconButton(onPressed: ()=>controller.deleteUser("${item["id"]}"), icon: Icon(Icons.delete)),
          ),
          ),
        );
        },
        ),

        
        ),
        floatingActionButton:   FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddView()),
        );
        },
        ),
    );
    }

    @override
    State<MainmenuView> createState() => MainmenuController();
}
    