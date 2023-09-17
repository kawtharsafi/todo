import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List mylist = ['Kawthar', 'Ali', 'Mosa', 'Safi', 'Zeyad', 'Toqa'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 25,
                child: Image.asset(
                  'asset/logo.png',
                  width: 40,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              const Text('TODO APP'),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container();
                      });
                },
                icon: Container(
                    child: const Icon(Icons.add),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black)))),
          ]),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mylist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    color: Color.fromARGB(255, 234, 172, 245),
                    // width: 50,
                    height: 70,

                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            mylist[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                          IconButton(
                              onPressed: () {
                                setState(() {});
                              },
                              icon: Container(
                                child: Icon(Icons.edit),
                                decoration:
                                    BoxDecoration(border: Border.all(width: 1)),
                              )),
                          IconButton(
                              onPressed: () {
                                mylist.removeAt(index);

                                setState(() {});
                              },
                              icon: Container(
                                child: Icon(
                                  Icons.delete,
                                  color:
                                      const Color.fromARGB(255, 241, 152, 146),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.red)),
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
