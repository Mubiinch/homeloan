import 'package:homeloan/add_loan_item.dart';
import 'package:homeloan/loan_item_widget.dart';
import 'package:flutter/material.dart';

import 'loan_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loan Management"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddLoanItem(),
        )),
        label: Text("New Loan Entry"),
        icon: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return LoanWidget(LoanItem("Aslam", 1200));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            height: 80,
            child: Center(
              child: Text("Total Receivables: 0",style: TextStyle(fontSize: 20),),
            ),
          )
        ],
      ),
    );
  }
}
