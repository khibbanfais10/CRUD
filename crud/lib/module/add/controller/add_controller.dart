
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:crud/state_util.dart';
import '../view/add_view.dart';

class AddController extends State<AddView> {
    static late AddController instance;
    late AddView view;

    @override
    void initState() {
        instance = this;
        super.initState();

        if(widget.item != null){
          username = widget.item!["username"].toString();
          address = widget.item!["address"].toString();

        }
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
    String username = "";
    String address = "";

    bool get isCreateMode{
      return widget.item==null;
    }
    addUser() async{
      if(isCreateMode){
      var response = await Dio().post(
      "https://capekngoding.com/6281225983774/api/users",
      options: Options(
      headers: {
      "Content-Type": "application/json",
      },
      ),
      data: {
      "username": username,
      "address": address,
      },
      );
      Map obj = response.data;
      Navigator.pop(context);
    }else{
      var id = widget.item!["id"];
       var response = await Dio().post(

      "https://capekngoding.com/6281225983774/api/users/$id",
      options: Options(
      headers: {
      "Content-Type": "application/json",
      },
      ),
      data: {
      "username": username,
      "address": address,
      },
      );
      Map obj = response.data;
      Navigator.pop(context);
    }
    }
}
        
    