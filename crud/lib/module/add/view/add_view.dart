
import 'package:flutter/material.dart';
import 'package:crud/core.dart';
import '../controller/add_controller.dart';

class AddView extends StatefulWidget {
  final Map? item; 
    const AddView({Key? key,this.item}) : super(key: key);

    Widget build(context, AddController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Add User"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(),
            child: TextFormField(
            initialValue: controller.username,
            maxLength: 20,
            decoration: const InputDecoration(
            labelText: 'Username',
            
            labelStyle: TextStyle(
            color: Colors.blueGrey,
            ),
            enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
            color: Colors.blueGrey,
            ),
            ),
            helperText: "add username",
            ),
            onChanged: (value) {
              controller.username = value;
            },
            ),
            ),
            Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(),
            child: TextFormField(
              initialValue: controller.address,
            
            maxLength: 50,
            decoration: const InputDecoration(
            labelText: 'address',
            labelStyle: TextStyle(
            color: Colors.blueGrey,
            ),
            enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
            color: Colors.blueGrey,
            ),
            ),
            helperText: "add address",
            ),
            onChanged: (value) {
              controller.address = value;
            },
            ),
            ),
          ],
        )
        ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.addUser(),
        ),
    );
    }

    @override
    State<AddView> createState() => AddController();
}

    