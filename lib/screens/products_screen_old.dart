import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  static String routerName = '/products';

  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 240, 239, 239),
      appBar: AppBar(
        title: Text('PRODUCTOS'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: _Products(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Comprar',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(44, 98, 255, 1),
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  const _Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de columnas en la grilla
        crossAxisSpacing: 8.0, // Espacio horizontal entre columnas
        mainAxisSpacing: 8.0, // Espacio vertical entre filas
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return _Brand(color: Colors.black);
      },
    );
  }
}

class _Products extends StatelessWidget {
  const _Products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
            _Item(),
            _Item(),
            _Item(),
            _Item(),
            _Item(),
            _Item(),
          ],
        ),
      ),
    );
  }
}

class _Brand extends StatelessWidget {
  final Color color;
  const _Brand({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      // width: 150,
      // height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.ac_unit,
            size: 40,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'CocaCola',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 227, 227),
                borderRadius: BorderRadius.circular(10)),
            child: FlutterLogo(
              size: 50,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cocacola 600 ml',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '99.99',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text('Cantidad restante:'),
                  SizedBox(
                    width: 5,
                  ),
                  Text('20'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
