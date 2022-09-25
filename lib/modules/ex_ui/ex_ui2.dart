import 'package:flutter/material.dart';
import 'package:tasks/modules/ex_ui/ex_ui1.dart';

import '../../shared/components/components.dart';

class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);

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
                      'SIGNUP',
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
                  text: 'signup',
                  function: () {
                    if ((formKey.currentState)!.validate()) {

                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      ' have an account?',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  Login(),
                              ));
                        },
                        child: const Text(
                          'login!',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ))
                  ],
                ),
                const Text(
                    '_______________OR_______________ ',
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      child: Image(image: NetworkImage('https://www.facebook.com/images/fb_icon_325x325.png')),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF5Tn_IxRSNPd28qLvzFzwYEYnhkuj6VGm3Hw6RuU&s')),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image(image: NetworkImage('https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png')),
                    ),
                    SizedBox(width: 10,),
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
