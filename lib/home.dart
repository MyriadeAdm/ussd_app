import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ussd_app/forfait_internet.dart';

import 'forfait_appel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<ForfaitInternet> _forfaitsInternet = [
    ForfaitInternet('45 Mo', 'Validité 1 jour', '100'),
    ForfaitInternet('100 Mo', 'Validité 1 jour', '200'),
    ForfaitInternet('180 Mo', 'Validité 1 jour', '350'),
    ForfaitInternet('180 Mo', 'Validité 1 jour', '350'),
    ForfaitInternet('180 Mo', 'Validité 1 jour', '350'),
  ];
  final List<ForfaitAppel> _forfaitsAppel = [
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '100'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '200'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '350'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '600'),
    ForfaitAppel('1000f V TR', '25 SMS', 'Validité 1 jour', '1000'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ussd App'),
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ========================== Box orange avec numero [D]
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(222, 97, 43, 1),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 25.0, horizontal: 10.0)),
                        Ink(
                          width: 40,
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Color.fromRGBO(34, 98, 97, 1),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            '90 12 34 56',
                            style: TextStyle(
                              color: Color.fromRGBO(222, 97, 43, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.05,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // ========================== Box orange avec numero [F]
            const SizedBox(
              width: 100,
              height: 20,
            ),
            SizedBox(
              height: 35,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(222, 97, 43, 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        onPressed: () {
                          if (kDebugMode) {
                            print('Appel pressed!');
                          }
                        },
                        child: const Text(
                          'Appel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(222, 97, 43, 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        onPressed: () {
                          if (kDebugMode) {
                            print('Internet button pressed!');
                          }
                        },
                        child: const Text(
                          'Internet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(222, 97, 43, 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        onPressed: () {
                          if (kDebugMode) {
                            print('Credit button pressed!');
                          }
                        },
                        child: const Text(
                          'Crédit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(222, 97, 43, 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        onPressed: () {
                          if (kDebugMode) {
                            print('Transactions button pressed!');
                          }
                        },
                        child: const Text(
                          'Transactions',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            const Divider(
              color: Colors.deepOrange,
              height: 20,
              indent: 80,
              endIndent: 80,
              thickness: 0.5,
            ),

            const Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Forfaits Internet',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(222, 97, 43, 5)),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 104,
              color: Colors.white,
              child: Center(
                //=========================debut de megas et etc....
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _forfaitsInternet.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = _forfaitsInternet[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 3.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(34, 98, 97, 1),
                        ),
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.mega,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                item.validite,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.white),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    item.prix,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                        color: Color.fromRGBO(222, 97, 43, 5)),
                                  ),
                                  const Text(
                                    'XOF',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Color.fromRGBO(222, 97, 43, 5)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            //==============================Section forfaits appel [D]============================

            const SizedBox(
              height: 25,
            ),

            const Divider(
              color: Colors.deepOrange,
              height: 20,
              indent: 80,
              endIndent: 80,
              thickness: 0.5,
            ),

            const Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Forfaits Appel',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(222, 97, 43, 5)),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 125,
              color: Colors.white,
              child: Center(
                //=========================debut des forfaits appels et etc....
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _forfaitsAppel.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = _forfaitsAppel[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 3.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(34, 98, 97, 1),
                        ),
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.credit,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                '+ ${item.msg}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                              Text(
                                item.validite,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.white),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    item.prix,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                        color: Color.fromRGBO(222, 97, 43, 5)),
                                  ),
                                  const Text(
                                    'XOF',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Color.fromRGBO(222, 97, 43, 5)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            //==============================Section forfaits appel [F]============================

            //==============================Section Historique transaction [D]============================

            const SizedBox(
              height: 60,
            ),

            const Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Historique',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: Color.fromRGBO(222, 97, 43, 5)),
                ),
                Spacer(),
                TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        Text('Voir Plus'),
                        Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ))
              ],
            ),

            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sync_alt),
            label: 'Forfaits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Réglages',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[700],
        unselectedItemColor: Colors.grey.shade700,
        onTap: _onItemTapped,
      ),
    );
  }
}
