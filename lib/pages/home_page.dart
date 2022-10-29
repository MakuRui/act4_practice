import 'Package:flutter/material.dart';
import 'package:act4/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List studentList;
  late List count = [];

  @override
  void initState() {
    count = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Activity #4',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: count.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ExpansionTile(
                        leading: const Icon(Icons.account_circle),
                        trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                count.removeAt(index);
                              });
                            }, icon: const Icon(Icons.delete)),
                        title: Text(studentList[0]),
                        children: [
                          SizedBox(
                            height: 150,
                            child: ListView(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125, child: Text('Name: ')),
                                    SizedBox(child: Text(studentList[0])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125,
                                        child: Text('Email Address: ')),
                                    SizedBox(child: Text(studentList[1])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125,
                                        child: Text('Phone Number: ')),
                                    SizedBox(child: Text(studentList[2])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125, child: Text('Birthday: ')),
                                    SizedBox(child: Text(studentList[3])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125, child: Text('Age: ')),
                                    SizedBox(child: Text(studentList[4])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125, child: Text('Section: ')),
                                    SizedBox(child: Text(studentList[5])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125, child: Text('Course: ')),
                                    SizedBox(child: Text(studentList[6])),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                        width: 125, child: Text('Facebook: ')),
                                    SizedBox(child: Text(studentList[7])),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            List studentProfile = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfilePage()));
            setState(() {
              studentList = studentProfile;
              var item1 = 'count1';
              count.add(item1);
            });
          }),
    );
  }
}
