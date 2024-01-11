import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const List<MenuItem> appMenuItems = [
  MenuItem(
    title: 'Inicio',
    subTitle: 'Inicio de la aplicación',
    link: '/home',
    icon: Icons.home_outlined,
  ),
  MenuItem(
    title: 'Productos',
    subTitle: 'Ver los productos',
    link: '/products',
    icon: Icons.list_outlined,
  ),
  MenuItem(
    title: 'Salida',
    subTitle: 'Nueva Salida de productos',
    link: '/exit',
    icon: Icons.shopping_cart_checkout,
  ),
  MenuItem(
    title: 'Usuarios',
    subTitle: 'Administración de usuarios',
    link: '/users',
    icon: Icons.supervised_user_circle_outlined,
  ),
];
