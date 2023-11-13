import 'package:flutter/material.dart';
import '../modals/expense.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<ExpenseModel> registerExpenses = [
    ExpenseModel(
      title: "J Donut",
      amount: 100,
      date: DateTime.now(),
      category: Category.food,
    ),
    ExpenseModel(
      title: 'Flutter Course',
      amount: 1000,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('data'),
          ],
        ),
      ),
    );
  }
}
