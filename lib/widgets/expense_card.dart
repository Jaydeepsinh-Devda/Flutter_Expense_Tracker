import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget{
  const ExpenseCard(this.expense,{super.key});

  final ExpenseModel expense;

  @override
  Widget build(BuildContext context){
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: const TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 4,),
            Row(
              children: [
                Text('₹${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8,),
                    Text(expense.formattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}