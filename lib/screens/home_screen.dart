import 'dart:ffi';

import 'package:entryexit/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen.g.dart';

@riverpod
class Example extends _$Example {
  @override
  int build() => 0;

  void increment() => state++;
}

class HomeScreen extends ConsumerWidget {
  static String routerName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Panel principal',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            _Card(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Marcas',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _Brand(),
                  _Brand(),
                  _Brand(),
                  _Brand(),
                  _Brand(),
                  _Brand(),
                  _Brand(),
                  _Brand(),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(),
      drawer: Sidemenu(),
    );
  }
}

class _Card extends StatelessWidget {
  // final title String;
  // final percentage float;
  // final promedy

  const _Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(44, 98, 255, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enero',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '500',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 25,
                )
              ],
            ),
            Text(
              'Salidas al dia promedio 45',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _Brand extends StatelessWidget {
  const _Brand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 231, 231, 231),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.store_mall_directory_outlined,
            size: 45,
          ),
          Text('Coca-Cola')
        ],
      ),
    );
  }
}
