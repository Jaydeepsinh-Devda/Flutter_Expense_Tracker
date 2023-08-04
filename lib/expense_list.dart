import 'package:expense_tracker_app/widgets/expense_card.dart';
import 'package:flutter/cupertino.dart';

import 'model/expense_model.dart';

class ExpenseList extends StatelessWidget{
  const ExpenseList({super.key, required this.expenses});

  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseCard(expenses[index]),
    );
  }
}