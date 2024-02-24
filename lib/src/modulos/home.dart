import 'package:flutter/material.dart';
import 'package:google/src/modulos/informacion.dart';
import 'package:google/src/modulos/principal.dart';
import 'package:google/src/modulos/privacidad.dart';
import 'package:google/widgets/custom_icon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: RichText(
            text: const TextSpan(
                text: 'Cuenta de',
                style: TextStyle(color: Colors.black, fontSize: 23),
                children: [
                  TextSpan(
                      text: ' Google',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black))
                ]),
          ),
          backgroundColor: const Color.fromARGB(230, 228, 229, 230),
          actions: [
            Row(
              children: [
                CustomIcon(
                  icon: Icons.help_outline,
                  onPressed: () {},
                ),
                CustomIcon(
                  icon: Icons.search,
                  onPressed: () {},
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset('assets/images/sett.png',
                      width: 55, height: 42),
                ),
              ],
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('Pagina Principal'),
              ),
              Tab(
                child: Text('Información Personal'),
              ),
              Tab(
                child: Text('Datos y Privacidad'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Principal(),
            Info(),
            Privacidad(),
          ],
        ),
      ),
    );
  }
}
