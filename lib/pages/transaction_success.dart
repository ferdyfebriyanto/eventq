import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransactionSuccess extends StatelessWidget {
  const TransactionSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Icon(
                Icons.check_circle,
                color: Colors.blue,
                size: 100,
              ),
            ),
            Container(
              child: const Text("Transaction Success"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
