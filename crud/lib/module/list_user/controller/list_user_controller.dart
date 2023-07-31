
import 'package:flutter/material.dart';
import 'package:crud/state_util.dart';
import '../view/list_user_view.dart';

class ListUserController extends State<ListUserView> {
    static late ListUserController instance;
    late ListUserView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    