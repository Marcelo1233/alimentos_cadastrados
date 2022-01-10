import 'package:flutter/material.dart';

class ListaCompras extends StatefulWidget {
  const ListaCompras({Key? key}) : super(key: key);

  @override
  _ListaComprasState createState() => _ListaComprasState();
}
class _ListaComprasState extends State<ListaCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Lista de alimentos",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        )),
      ),  
      
      body: ListView.builder( 
          itemCount: 8,
          itemBuilder: (context, index) {
            return GetCard();
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[300],
        tooltip: 'Adicionar alimento',
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
  Widget GetCard() {
    return Container( 

      margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
      height: 95,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 9, top: 10),
                  child: const Text("Nome:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 9, top: 10),
                  child: const Text("Inglês:"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 7, top: 10),
                  height: 24,
                  width: 187,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: const <Widget>[
                        Text(
                          "Grupo:",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)
                       ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  Text("Quantidade"),
                ],
              ),
            ),
          ], 
        ),
      ),
    );
  }
}