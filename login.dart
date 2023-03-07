import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title:Text("awikwok"),
        actions: [
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),

        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                height: 20000,
              ),
              Container(
                color: Colors.blue,
                height: 200,
              )
            ],
          )
      )
  );
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement login functionality here
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                // Implement forgot password functionality here
              },
              child: Text("Forgot Password?"),
            ),
          ],
        ),
      ),
    );
  }
}

