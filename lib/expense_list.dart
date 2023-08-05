import 'package:expense_tracker_app/widgets/expense_card.dart';
import 'package:flutter/material.dart';

import 'model/expense_model.dart';

class ExpenseList extends StatelessWidget{
  const ExpenseList({super.key, required this.expenses,required this.onRemoveExpense});

  final List<ExpenseModel> expenses;
  final void Function(ExpenseModel expense) onRemoveExpense;

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
          key: ValueKey(expenses[index]),
          background: Container(
            color: Colors.redAccent,
            margin: const EdgeInsets.symmetric(vertical: 8),
          ),
          onDismissed: (direction){
            onRemoveExpense(expenses[index]);
          },
          child: ExpenseCard(expenses[index])),
    );
  }
}