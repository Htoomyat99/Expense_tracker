import 'package:expense_tracker/components/expense_list.dart';
import 'package:expense_tracker/pages/new_expense.dart';
import 'package:flutter/material.dart';
import '../modals/expense_modal.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<ExpenseModel> _registerExpenses = [
    ExpenseModel(
      title: "J Donut",
      amount: 10.88,
      date: DateTime.now(),
      category: Category.food,
    ),
    ExpenseModel(
      title: 'Flutter Course',
      amount: 15.04,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  void showAddModal() {
    showModalBottomSheet(context: context, builder: (ctx) => NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Expense Tracker',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(onPressed: showAddModal, icon: Icon(Icons.add)),
        ],
        backgroundColor: Colors.purple.shade500,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(child: ExpenseList(expenses: _registerExpenses))
          ],
        ),
      ),
    );
  }
}
