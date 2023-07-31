
import 'package:flutter/material.dart';
import 'package:crud/state_util.dart';
import '../view/edit_view.dart';

class EditController extends State<EditView> {
    static late EditController instance;
    late EditView view;

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
        
    