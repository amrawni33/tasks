import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({Key? key}) : super(key: key);

  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  var ageController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Age Calculator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'AGE',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'CALCULATOR',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter number';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    prefix: Icon(Icons.person),
                    labelText: 'Birth year',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Your age is : $age',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if ((formKey.currentState)!.validate()) {
                        setState(() {
                          age = 2022 - int.parse(ageController.text);
                        });
                      }
                    },
                    child: const Text(
                      'CALCULATE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
