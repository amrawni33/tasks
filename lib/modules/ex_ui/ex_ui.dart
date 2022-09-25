import 'package:flutter/material.dart';
import 'package:tasks/modules/ex_ui/ex_ui1.dart';

import '../../shared/components/components.dart';
import 'ex_ui2.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to EDU',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            Container(
                height: 500,
                width: double.infinity,
                child: const Image(
                    image: NetworkImage(
                        'https://img.freepik.com/premium-photo/astronaut-sitting-ground-holds-small-rocket-hand-3d-illustration_151689-423.jpg?w=360'))),
            defaultButton(
              text: 'login',
              function: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  Login(),
                    ));
              },
              background: Colors.blue,
            ),
            const SizedBox(
              height: 15.0,
            ),
            defaultButton(
              text: 'signup',
              function: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SignUp(),
                    ));
              },
              background: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
