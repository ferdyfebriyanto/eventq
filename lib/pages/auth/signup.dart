import 'package:eventq/pages/auth/login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/logo2.png',
                        width: 180,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(height: 80),
                      Text(
                        "Register Account",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: widget.controllerEmail,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: widget.controllerEmail,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: widget.controllerPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: widget.controllerPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Konfirmasi Password',
                          isDense: true,
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign Up'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Text('Login'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
