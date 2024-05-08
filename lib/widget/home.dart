import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String title;
  final String mensaje;
  final String hora;
  final Color icono;

  const ChatTile({
    Key? key,
    required this.title,
    required this.mensaje,
    required this.hora,
    required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.circle,
        size: 50,
        color: icono,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            hora,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
      subtitle: Text(
        mensaje,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      tileColor: Colors.white,
    );
  }
}

class statusTile extends StatelessWidget {
  final String title;
  final Color icono;

  const statusTile({
    Key? key,
    required this.title,
    required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.circle,
        size: 50,
        color: icono,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
      tileColor: Colors.white,
    );
  }
}

class llamadasTile extends StatelessWidget {
  final String title;
  final Color icono;

  const llamadasTile({
    Key? key,
    required this.title,
    required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        Icons.circle,
        size: 50,
        color: icono,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
      tileColor: Colors.white,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 2, 91, 5),
          title: Row(
            children: [
              Text(
                'WhatsApp',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 240),
              Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.more_vert_outlined,
                size: 30,
                color: Colors.white,
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: Container(
              padding: EdgeInsets.only(bottom: 5.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Chats',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Text(
                              'Estados',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Llamadas',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Column(  // Aqui va la tab de la camara
            children: [
              Container(
                height: 797,
                color: Colors.black,
              )
            ],
          ),
          Column(
            children: [
              ChatTile(
                title: 'MAMA',
                mensaje: '5 LLAMADAS PERDIDAS',
                hora: '1:00 PM',
                icono: Color.fromARGB(255, 161, 17, 127),
              ),
              ChatTile(
                title: 'Chat 2',
                mensaje: '🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣',
                hora: '2:05 PM',
                icono: Color.fromARGB(255, 13, 5, 248),
              ),
              ChatTile(
                title: 'Chat 3',
                mensaje: '✓✓😒😒',
                hora: '3:05 PM',
                icono: Color.fromARGB(255, 22, 123, 7),
              ),
              ChatTile(title: 'Papa', mensaje: '✓✓ Ya sali', hora: 'Ayer', icono: Colors.brown)
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              statusTile(
                  title: 'Mi Estado', icono: Color.fromARGB(255, 5, 83, 191)),
              statusTile(
                  title: 'Estado 1', icono: Color.fromARGB(255, 175, 147, 3)),
              statusTile(title: 'Estado 2', icono: Colors.green),
              Text(
                "Viewed Updates",
                style: TextStyle(fontSize: 30),
              ),
              statusTile(
                  title: 'Estado 3',
                  icono: const Color.fromARGB(137, 234, 7, 7)),
              Text("Muted Updates", style: TextStyle(fontSize: 30)),
              statusTile(
                  title: "Estado 4", icono: Color.fromARGB(255, 236, 214, 14))
            ],
          ),
          Column(
            children: [
              llamadasTile(
                  title: "MAMA", icono: Color.fromARGB(255, 161, 17, 127)),
              llamadasTile(
                  title: "MAMA", icono: Color.fromARGB(255, 161, 17, 127)),
              llamadasTile(
                  title: "MAMA", icono: Color.fromARGB(255, 161, 17, 127)),
              llamadasTile(
                  title: "MAMA", icono: Color.fromARGB(255, 161, 17, 127)),
              llamadasTile(
                  title: "MAMA", icono: Color.fromARGB(255, 161, 17, 127)),
              llamadasTile(
                  title: "Llamada 2", icono: Color.fromARGB(255, 1, 120, 176)),
            ],
          ),
        ]),
       
      ),
    );
  }
}
