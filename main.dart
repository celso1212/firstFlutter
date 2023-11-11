import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeiro APP"),
        actions: [
          Icon(Icons.favorite),
          Icon(Icons.notifications),
          Icon(Icons.search),
        ],
      ),
      body: Column(children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              color: Colors.grey,
              child: Center(
                child: Text("Categorias"),
                )
            )
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              color: Colors.grey,
              child: Center(
                child: Text("Categorias"),
                )

            )
          ],
        )
        Expanded(child: 
        ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index){
            return Card(
              child: Container(
                height: 150,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Image.network("https://source.unsplash.com/150x150/?marvel"),
                  Text("Os Vingadores")]
                ),
              )
              );
            },
          )
        )
      ]),
      floatingActionButton: InkWell(
        onTap: (){
          print("Adicione um anuncio");
        },
        child: Container(
          width: 200,
          height: 50,
          color: Colors.yellow,
          child: Center(
            child: Text("Adicionar Anuncio"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    )
  }
}