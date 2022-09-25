import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import 'ex_ui2.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  var userController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30,),
               Row(
                 children: [
                   IconButton(
                       onPressed: (){
                         Navigator.pop(context);
                       },
                       icon: Icon(
                         Icons.arrow_back
                       )
                   ),
                   SizedBox(width: 80,),
                   const Text(
                     'LOGIN',
                     style: TextStyle(fontSize: 20.0),
                   ),
                 ],
               ),
                Container(
                    height: 500,
                    width: double.infinity,
                    child: const Image(
                        image: NetworkImage(
                            'https://img.freepik.com/premium-photo/astronaut-sitting-ground-holds-small-rocket-hand-3d-illustration_151689-423.jpg?w=360'))),
                defaultFormField(
                  controller: userController,
                  type: TextInputType.text,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Email Address must not be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                    labelText: 'Password',
                    isPassword: true,
                    prefix: Icons.lock,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    }
                ),
                const SizedBox(height: 15.0,),
                defaultButton(
                    text: 'login',
                    function: () {
                      if ((formKey.currentState)!.validate()) {

                      }
                    },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'don\'t have an account?',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  SignUp(),
                              ));
                        },
                        child: const Text(
                          'register!',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
