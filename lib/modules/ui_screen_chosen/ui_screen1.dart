import 'package:flutter/material.dart';

class UiScreen extends StatefulWidget {
  UiScreen({Key? key}) : super(key: key);

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  int Pcount = 0;

  int Tcount = 0;

  int Wtime() {
    if (Pcount > 0) return (3 * (Pcount + Tcount - 1) / Tcount).round();
    return 0;
  }

  int t1IsHere = 0;
  bool t1() => t1IsHere == 0 ? false : true;
  int t2IsHere = 0;
  bool t2() => t2IsHere == 0 ? false : true;
  int t3IsHere = 0;
  bool t3() => t3IsHere == 0 ? false : true;
  int teller() {
    return t1IsHere + t2IsHere + t3IsHere;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          ' BBqM',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Your Number',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
              ),
            ),
            Text(
              '$Pcount',
              style: const TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                          Pcount++;
                      });
                    },
                    child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: const Icon(
                          Icons.add,
                          size: 120.0,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: const Icon(
                          Icons.remove,
                          size: 120.0,
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'You will wait ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
              ),
            ),
            Text(
              '${Wtime()}',
              style: const TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (t1IsHere == 0) {
                          t1IsHere = 1;
                        } else if (t1IsHere == 1) {
                          t1IsHere = 0;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      size: 130.0,
                      color: t1() ? Colors.teal : Colors.black,
                    )),
                const SizedBox(
                  width: 65.0,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (t2IsHere == 0) {
                          t2IsHere = 1;
                        } else if (t2IsHere == 1) {
                          t2IsHere = 0;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      size: 130.0,
                      color: t2() ? Colors.teal : Colors.black,
                    )),
                const SizedBox(
                  width: 65.0,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (t3IsHere == 0) {
                          t3IsHere = 1;
                        } else if (t3IsHere == 1) {
                          t3IsHere = 0;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      size: 130.0,
                      color: t3() ? Colors.teal : Colors.black,
                    )),
              ],
            ),
            const SizedBox(
              height: 120.0,
            ),
            Text(
              'There is ${teller()} here',
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
