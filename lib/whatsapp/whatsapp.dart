import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyWhatsApp extends StatefulWidget {
  const MyWhatsApp({super.key});

  @override
  State<MyWhatsApp> createState() => _WhatsappState();
}

class _WhatsappState extends State<MyWhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  Spacer(),
                  Icon(Icons.camera_alt),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              // size: 15,
                            )),
                      ))
                ],
              ),
            ),
            Text("Chat"),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: 'search here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                TextButton(onPressed: () {}, child: Text('All')),
                TextButton(onPressed: () {}, child: Text('Unread')),
                TextButton(onPressed: () {}, child: Text('Favourite')),
                TextButton(onPressed: () {}, child: Text('Groups')),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
            title: Text("Rohit"),
            subtitle: Text('haii'),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('11:30'),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
            title: Text("Manu"),
            subtitle: Text('hlooo'),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('11:25'),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
            title: Text("Sanu"),
            subtitle: Text("where are you"),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('11:13'),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
            title: Text("Micheal"),
            subtitle: Text('how are you'),
          ),
          Divider(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // unselectedLabelStyle: const TextStyle(
          // color: Color.fromARGB(255, 147, 141, 141), fontSize: 14),
          fixedColor: const Color.fromARGB(255, 147, 141, 141),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.update, color: Colors.grey),
              label: 'update',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Colors.grey),
              label: 'call',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.commute_rounded, color: Colors.grey),
              label: 'communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.grey),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.grey),
              label: 'settings',
            ),
          ]),
    );
  }
}
