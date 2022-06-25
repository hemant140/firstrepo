import 'dart:convert';

import 'package:awsome_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();

  var myText = 'Login';
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState(){
    super.initState();
    getData();
  }
  
  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey,
        title: Text('Demo App'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, "/login");
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: data!=null?
          ListView.builder(
            itemBuilder: (context, index){
              return Padding(
                  padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text('ID : ${data[index]['id']}'),
                  leading: Image.network(data[index]["url"]),
                ),
              );
            },
            itemCount: data.length,
          )
            : Center(
          child: CircularProgressIndicator(),
        ),
        ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText =  _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}