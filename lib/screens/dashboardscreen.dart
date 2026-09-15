import 'package:flutter/material.dart';
import '../screens/addexpenses_screen.dart';
class dashBoardScreen extends StatefulWidget {
  const dashBoardScreen({super.key});

  @override
  State<dashBoardScreen> createState() => _dashBoardScreenState();
}

class _dashBoardScreenState extends State<dashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "expense App"
        ) ,
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Balance', 
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey
                ),
              ),
              Text(
                "\$0",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(height: 24),
          
           Expanded(
             child: Center(
                child: Text("No expenses yet"),
              ),
           ),
          
            ],
          ),
        ) ,
         floatingActionButton: FloatingActionButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddExpenseScreen(),
        ),
      );
    },
    child: Icon(Icons.add),
  ),
);
        
    
  }
}