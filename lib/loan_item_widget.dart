import 'package:flutter/material.dart';

import 'loan_item.dart';

class LoanWidget extends StatelessWidget {
  LoanItem loan;

  LoanWidget(this.loan);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: ListTile(
        title: Text(
          loan.personName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "${loan.amount} Rs.",
          style: TextStyle(color: Colors.green),
        ),
        trailing: Card(
          color:
              loan.isReturned ? Colors.greenAccent : Colors.amber,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            child: Text(
              loan.isReturned?"Returned":"Pending",
              style: TextStyle(
                  fontSize: 12,
                  color:
                      loan.isReturned == "Completed" ? Colors.green : Colors.pink),
            ),
          ),
        ),
      ),
    );
  }
}
