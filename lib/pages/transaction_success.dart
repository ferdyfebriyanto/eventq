import 'package:eventq/pages/home_peserta.dart';
import 'package:eventq/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class TransactionSuccess extends StatelessWidget {
  const TransactionSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navbar()),
                  );
                },
                child: const Text("Back to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
