import 'package:flutter/material.dart';

import 'package:expense_tracker_app/screens/expense_page.dart';

void main(){
  runApp(
   MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const ExpensePage(),
    )
  );
}