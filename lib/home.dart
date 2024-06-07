import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ussd_app/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

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
                      color: Constants.COLOR_1,
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
                            color: Constants.COLOR_2,
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
                              color: Constants.COLOR_1,
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
                                Constants.COLOR_1,
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
                                Constants.COLOR_1,
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
                                Constants.COLOR_1,
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
                                Constants.COLOR_1,
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
                      color: Constants.COLOR_1),
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
                  itemCount: Constants.FORFAIT_INTERNET.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = Constants.FORFAIT_INTERNET[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 3.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Constants.COLOR_2,
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
                                        color: Constants.COLOR_1),
                                  ),
                                  const Text(
                                    'XOF',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Constants.COLOR_1),
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
                      color: Constants.COLOR_1),
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
                  itemCount: Constants.FORFAIT_APPEL.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = Constants.FORFAIT_APPEL[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 3.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Constants.COLOR_2,
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
                                        color: Constants.COLOR_1),
                                  ),
                                  const Text(
                                    'XOF',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Constants.COLOR_1),
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
              height: 30,
            ),

            const Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Historique',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: Constants.COLOR_1),
                ),
                Spacer(),
                TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        Text(
                          'Voir Plus',
                          style:
                              TextStyle(color: Constants.COLOR_1),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 18,
                          color: Constants.COLOR_1,
                        ),
                      ],
                    ))
              ],
            ),

            const SizedBox(
              height: 4,
            ),

            SizedBox(
              height: 120,
              child: Center(
                // ============================== Row Historiques ===============================
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.HISTORIQUE.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = Constants.HISTORIQUE[index];

                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                        shadowColor: Colors.grey,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            
                            children: [
                              const Icon(Icons.history_rounded, size: 50,),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Dernière transaction',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),),
                                    const SizedBox(
                                    height: 3,
                                  ),
                                  Text('Achat ${item.typeForfait} ${item.montantForfait}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(item.dateTime,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
