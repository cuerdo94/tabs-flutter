import 'dart:math';

import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  final List<String> nombres = [
    'Juan',
    'Maria',
    'Carlos',
    'Ana',
    'Pedro',
    'Laura',
    'Diego',
    'Luisa',
  ];

  final List<String> apellidos = [
    'González',
    'Rodríguez',
    'López',
    'Pérez',
    'Fernández',
    'Martínez',
    'Sánchez',
    'Ramírez',
  ];
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

  Widget tab1() {
    return const Center(child: Text('Contenido de Pestaña 1'));
  }

  Widget tab2() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.only(top: 3),
          color: Colors.grey.shade200,
          child: Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.circle_sharp,
                size: 40,
                color: generateRandomColor(),
              ),
              title: Text(nombreCompleto()),
              subtitle: Text(
                generateRandomLoremIpsum(),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
              trailing: ElevatedButton.icon(
                icon: const Icon(Icons.arrow_downward_rounded),
                label: const Text("Hi"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(148, 229, 183, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20.0), // Ajusta el radio para redondear
                  ),
                ),
                onPressed: () {},
              ),
              onTap: () {
                // Acción cuando se hace clic en un elemento de la lista
                print('Clic en el elemento ${index + 1}');
              },
            ),
          ),
        );
      },
    );
  }

  Widget tab3() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(20, (index) {
          return Text('Contenido de Pestaña $index');
        }),
      ),
    );
  }

  String nombreCompleto() {
    final randomNombreIndex = Random().nextInt(nombres.length);
    final randomApellidoIndex = Random().nextInt(apellidos.length);

    final nombre = nombres[randomNombreIndex];
    final apellido = apellidos[randomApellidoIndex];

    return '$nombre $apellido';
  }

  Color generateRandomColor() {
    final random = Random();
    final r = random.nextInt(256); // Componente rojo (0-255)
    final g = random.nextInt(256); // Componente verde (0-255)
    final b = random.nextInt(256); // Componente azul (0-255)

    return Color.fromARGB(255, r, g, b); // 255 es la opacidad (alfa)
  }

  String generateRandomLoremIpsum() {
    const loremIpsum =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla interdum lectus auctor nisl varius, eget convallis lectus auctor. Fusce luctus malesuada nisl ut euismod. Sed viverra metus vitae vestibulum. Aliquam sed justo non quam pharetra scelerisque. Curabitur bibendum nunc eu quam iaculis, at venenatis ex pharetra. In eget interdum leo, a ullamcorper eros. Vivamus quis ex eget orci malesuada rhoncus. Sed euismod dolor quis purus facilisis tristique. Vestibulum pharetra erat et velit lacinia fermentum. Nulla facilisi. Nullam nec dolor nec nisi sollicitudin venenatis vel sed dui. Nulla facilisi. Pellentesque volutpat viverra lorem, nec dapibus est malesuada a. Cras sit amet vulputate justo.";

    final words = loremIpsum.split(' ');
    final random = Random();
    final wordCount = random.nextInt(21) + 10; // Entre 10 y 30 palabras

    return words.take(wordCount).join(' ');
  }
}
