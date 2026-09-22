import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/categories.dart';


class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  String? selectedCategory;
  DateTime? selectedDate;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Expense"),
      ),
     body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Form(
    key: _formKey,
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Title",
          ),
          validator: (value){
            if (value == null || value.isEmpty){
              return "please enter a title";
            }
            return null;
          },
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Amount",
            
          ),
          
        ),
       DropdownButtonFormField<String>(
    decoration: InputDecoration(
      labelText: "Category",
    ),
    items: expenseCategories.map((category) {
      return DropdownMenuItem(
        value: category,
        child: Text(category),
      );
    }).toList(),
    onChanged: (value) {
      setState(() {
        selectedCategory = value;
      });
    },
    ),
    const SizedBox(height: 16),
    Row(
    children: [
      Text(
        selectedDate == null
            ? "No date selected"
            : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
      ),
      IconButton(
        icon: Icon(Icons.calendar_today),
        onPressed: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
          );
          setState(() {
            selectedDate = pickedDate;
          });
        },
      ),
    ],
    ),
      ],
    ),
  ),
),
    );
  }
}