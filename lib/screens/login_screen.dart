import 'package:entryexit/screens/screens.dart';
import 'package:entryexit/ui/input_decorations.dart';
import 'package:entryexit/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routerName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: FlutterLogo(
                  size: 150,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Inicia Sesión',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromRGBO(44, 98, 255, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputPadding(
                child: TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecorations.authInputDecoration(
                    hintText: 'john.doe@gmail.com',
                    labelText: 'Email',
                    suffixIcon: Icons.alternate_email,
                  ),
                  validator: (value) {
                    String pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = RegExp(pattern);
                    return regExp.hasMatch(value ?? '')
                        ? null
                        : 'El correo no es valido';
                  },
                  // onChanged: (value) => loginForm.email = value,
                ),
              ),
              InputPadding(
                child: TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecorations.authInputDecoration(
                    hintText: '********',
                    labelText: 'Password',
                    suffixIcon: Icons.lock_outline,
                  ),
                  validator: (value) {
                    if (value != null && value.length < 6)
                      return 'La contraseña debe tener al menos 6 caracteres';
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox.adaptive(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text('Remember me')
                    ],
                  ),
                  const Text('Forgot password?'),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  final navigator = Navigator.of(context);
                  navigator.pushReplacementNamed(HomeScreen.routerName);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Color.fromRGBO(44, 98, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
