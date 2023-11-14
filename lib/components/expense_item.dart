import 'package:expense_tracker/modals/expense_modal.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final ExpenseModel expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            Text(expense.title),
            Row(
              children: [
                Text('\$ ${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcon[expense.category],
                      color: Colors.purple.shade500,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(expense.formattedDate.toString()),
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
