import 'package:flutter/material.dart';
import 'package:flutter_operations_p/models/auth_response.dart';
import 'package:flutter_operations_p/service/login_api_service.dart';
import 'package:flutter_operations_p/ui/pages/login/widget/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailFieldController = TextEditingController();
    TextEditingController _passwordFieldController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextLogin(labelText: 'Correo Electrónico', textType: TextInputType.emailAddress,controller: _emailFieldController),
              SizedBox(height: 16.0),
              TextLogin(labelText: 'Contraseña', textType: TextInputType.visiblePassword,controller: _passwordFieldController),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () async {
                  AuthResponse authResponse = await LoginApiService.login(_emailFieldController.text, _passwordFieldController.text);
                  if(authResponse.status== 'success'){
                    
                  }
                },
                child: Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}