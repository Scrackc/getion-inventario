import 'package:flutter/material.dart';

class ExitScreen extends StatelessWidget {
  static String routerName = '/exit';

  const ExitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salida de productos'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _Item(),
                    _Item(),
                    _Item(),
                    _Item(),
                    _Item(),
                    _Item(),
                    _Item(),
                    _Item(),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                // border: Border(
                //   top: BorderSide(
                //     width: 1,
                //   ),
                // ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Codigo del producto',
                    ),
                    enabled: false,
                    autofocus: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total de productos'),
                      Text('100'),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Color.fromRGBO(44, 98, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Imprimir ticket",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246, 246, 246),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(15),
            child: FlutterLogo(size: 50),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _ItemDetail(),
                IconButton(
                  icon: Icon(
                    Icons.delete_forever_outlined,
                    color: Color.fromRGBO(255, 94, 91, 114),
                    size: 25,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ItemDetail extends StatelessWidget {
  const _ItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Clover Outer',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "161.00",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(176, 196, 218, 1),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 227, 227, 227),
                  padding: EdgeInsets.all(0),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("1"),
            ),
            SizedBox(
                width: 25,
                height: 25,
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 227, 227, 227),
                    padding: EdgeInsets.all(0),
                  ),
                  icon: Icon(
                    Icons.remove,
                    size: 15,
                  ),
                  onPressed: () {},
                )),
          ],
        )
      ],
    );
  }
}
