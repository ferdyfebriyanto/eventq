import 'package:eventq/pages/auth/signup.dart';
import 'package:eventq/pages/home_peserta.dart';
import 'package:eventq/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                        "Let's Get Started",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: widget.controllerEmail,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Email',
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
                          hintText: 'Masukkan Password',
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Navbar(),
                            ),
                          );
                        },
                        child: Text('Login'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don’t have an account?'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                            child: Text('Register'),
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
