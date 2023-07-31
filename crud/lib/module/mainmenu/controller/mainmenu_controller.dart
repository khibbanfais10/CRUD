
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:crud/state_util.dart';
import '../view/mainmenu_view.dart';

class MainmenuController extends State<MainmenuView> {
    static late MainmenuController instance;
    late MainmenuView view;

    @override
    void initState() {
        instance = this;
        super.initState();
        loadUser();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);


    List userList=[];

    loadUser() async{
      var response = await Dio().get(
      "https://capekngoding.com/6281225983774/api/users",
      options: Options(
      headers: {
      "Content-Type": "application/json",
      },
      ),
      );
      Map obj = response.data;
      userList = obj["data"];
      setState(() {
        
      });
    }

    deleteUser(dynamic id)async{
      
      var response = await Dio().delete(
      options: Options(
      headers: {
      "Content-Type": "application/json",
      },
      ),
      "https://capekngoding.com/6281225983774/api/users/$id",
      );
      print(response.statusCode);
      await loadUser();
    }
}
        
  