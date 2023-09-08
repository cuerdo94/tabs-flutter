import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de Pestañas en Flutter'),
        ),
        body: DefaultTabController(
          length: 3, // Número de pestañas
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent,
                height: 50,
              ),
              TabBar(
                dividerColor: Colors.blue,
                indicatorColor: Colors.blue,
                overlayColor: MaterialStateProperty.all(Colors.blue),
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Pestaña 1'),
                  Tab(text: 'Pestaña 2'),
                  Tab(text: 'Pestaña 3'),
                ],
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                    tab1(),
                    tab2(),
                    tab3(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Botton"))));
  }

  Widget tab3() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 2'),
          Text('Contenido de Pestaña 3')
        ],
      ),
    );
  }

  Widget tab2() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Elemento ${index + 1}'),
          onTap: () {
            // Acción cuando se hace clic en un elemento de la lista
            print('Clic en el elemento ${index + 1}');
          },
        );
      },
    );
  }

  Widget tab1() {
    return const Center(child: Text('Contenido de Pestaña 1'));
  }
}
