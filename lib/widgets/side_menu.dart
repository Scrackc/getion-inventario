import 'package:entryexit/config/menu/menu_items.dart';
import 'package:flutter/material.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          _DrawerHeader2(),
          // _DrawerHeader1(),
          SizedBox(
            height: 20,
          ),
          ...appMenuItems.map(
            (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: () {
                // final navigator = Navigator.of(context);
                Navigator.pop(context); // Cerrar el Drawer
                Navigator.pushNamed(context, item.link);
              },
            ),
          )
        ],
      ),
    );
  }
}

class _DrawerHeader2 extends StatelessWidget {
  const _DrawerHeader2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: CircleAvatar(
              child: Text('E'),
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Eduardo Pérez',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('prz.rmz.eduardo@gmail.com')
            ],
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader1 extends StatelessWidget {
  const _DrawerHeader1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      accountName: Text(
        'Eduardo Pérez Ramírez',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      accountEmail: Text(
        'prz.rmz.eduardo@gmail.com',
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ),
      currentAccountPictureSize: Size(60, 60),
      currentAccountPicture: CircleAvatar(
        child: Text('E'),
        backgroundColor: Color.fromARGB(255, 221, 221, 221),
        foregroundColor: Colors.black,
      ),
    );
  }
}
