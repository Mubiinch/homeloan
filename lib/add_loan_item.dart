import 'package:homeloan/loan_item.dart';
import 'package:flutter/material.dart';

class AddLoanItem extends StatefulWidget {
  const AddLoanItem({super.key});

  @override
  State<AddLoanItem> createState() => _AddLoanItemState();
}

class _AddLoanItemState extends State<AddLoanItem> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String? nameError;
  String? priceError;

  void saveProduct() {
    setState(() {
      nameError = null;
      priceError = null;
    });
    String name = nameController.text;
    String price = priceController.text;

    if (name.isEmpty) {
      setState(() {
        nameError = "Name is required";
      });
      return;
    }
    if (price.isEmpty) {
      setState(() {
        priceError = "Amount is required";
      });
      return;
    }

    LoanItem loanItem = LoanItem(name, int.parse(price));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Loan Entry"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter person name",
                labelText: "Person name",
                border: OutlineInputBorder(),
                errorText: nameError,
              ),
              controller: nameController,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter loan amount",
                labelText: "Amount",
                border: OutlineInputBorder(),
                errorText: priceError,
              ),
              keyboardType: TextInputType.number,
              controller: priceController,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: saveProduct, child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
