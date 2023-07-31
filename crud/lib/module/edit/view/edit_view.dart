
import 'package:flutter/material.dart';
import 'package:crud/core.dart';
import '../controller/edit_controller.dart';

class EditView extends StatefulWidget {
    const EditView({Key? key}) : super(key: key);

    Widget build(context, EditController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Edit"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<EditView> createState() => EditController();
}
    