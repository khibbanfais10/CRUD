
import 'package:flutter/material.dart';
import 'package:crud/core.dart';
import '../controller/list_user_controller.dart';

class ListUserView extends StatefulWidget {
    const ListUserView({Key? key}) : super(key: key);

    Widget build(context, ListUserController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("ListUser"),
        actions: const [],
        ),
        body: SingleChildScrollView(
       child: ListView.builder(
       itemCount: 3,
       physics: const ScrollPhysics(),
       itemBuilder: (BuildContext context, int index) {
       return Card(
       child: ListTile(
       leading: CircleAvatar(
       backgroundColor: Colors.grey[200],
       backgroundImage: const NetworkImage(
       "https://i.ibb.co/QrTHd59/woman.jpg",
       ),
       ),
       title: const Text("Jessica Doe"),
       subtitle: const Text("Programmer"),
       ),
       );
       },
       ),
        ),
    );
    }

    @override
    State<ListUserView> createState() => ListUserController();
}
    