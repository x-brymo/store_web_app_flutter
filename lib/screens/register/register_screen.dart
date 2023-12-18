import 'package:flutter/material.dart';
import 'package:store_web_app/screens/dashboard/dashboard_screen.dart';
import 'package:store_web_app/screens/register/widgets/animate_linner.dart';
import 'package:store_web_app/utils/plugin/query_plugin.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Card(
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();

   double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: _updateFormProgress,
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedProgressIndicator(value: _formProgress),
          const SizedBox(
            height:15,
          ),
          Text('Sign up', style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height:45,
              child: TextFormField(
                controller: _firstNameTextController,
                decoration: const InputDecoration(
                  labelText: 'First name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height:45,
              child: TextFormField(
                controller: _lastNameTextController,
                decoration: const InputDecoration(
                  labelText: 'Last name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height:45,
              child: TextFormField(
                controller: _usernameTextController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            width: context.widthScreen,
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  return states.contains(MaterialState.disabled)
                      ? null
                      : Colors.white;
                }),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  return states.contains(MaterialState.disabled)
                      ? null
                      : Colors.deepOrange;
                }),
              ),
              onPressed: ()=> 
              _formProgress ==1 ?
              Navigator.push(context, MaterialPageRoute(builder: (s)=>const DashBoardScreen() )) : null ,
              child: const Text('Sign up'),
            ),
          ),
        ],
      ),
    );
  }
  void _updateFormProgress() {
  var progress = 0.0;
  final controllers = [
    _firstNameTextController,
    _lastNameTextController,
    _usernameTextController
  ];

  for (final controller in controllers) {
    if (controller.value.text.isNotEmpty) {
      progress += 1 / controllers.length;
    }
  }

  setState(() {
    _formProgress = progress;
  });
}
}
