import 'package:expense_tracker_app/expense_list.dart';
import 'package:expense_tracker_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import '../model/expense_model.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() {
    return _ExpensePageState();
  }
}

class _ExpensePageState extends State<ExpensePage> {
  final List<ExpenseModel> _registeredExpenses = [
    ExpenseModel(
      title: 'Flutter course',
      amount: 499,
      date: DateTime.now(),
      category: Category.work,
    ),
    ExpenseModel(
      title: 'Cinema',
      amount: 150,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(
            child: ExpenseList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
