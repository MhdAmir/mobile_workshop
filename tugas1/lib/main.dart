import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tugas 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterGanjil = 1;
  int _counterGenap = 0;
  final String _nrp = "3122600023";
  String _tampilNrp = '';
  int _counter = 0;
  String _segitiga = "";

  void _incrementCounter() {
    setState(() {
      _segitiga = "";
      _ganjilGenap();
      _tampilNRP();
      // _tampilSegitiga();
    });
  }

  void _ganjilGenap(){
    if(_counterGenap >= 20){
      _counterGanjil = 1;
      _counterGenap = 0;
    }else{
      _counterGanjil+=2;
      _counterGenap+=2;
    }
  }

  void _tampilNRP(){
    if(_counter <= 9){
      _tampilNrp += (_nrp[_counter]);
      _counter++;

    }else{
      _tampilNrp = "";
      _counter = 0;
    }
  }

  void _tampilSegitiga(){
    for(int i = 0; i < _counter ; i++){
      // for(int j = _counter; j >= i; j--){
      //   _segitiga += " ";
      // }
      for(int j = 0;  j < i ; j++){
        _segitiga += "*";
        if(j >= 0){
          _segitiga += " ";

        }
      }
      _segitiga += "\n";
    }
  }

  Widget _segitigaPyramid(int x) {
    List<Widget> children = [];

    for (int i = 1; i <= x; i++) {
      List<Widget> childrenRow = [];
      for (int j = 0; j < i; j++) {
        childrenRow.add(const Text(
          "0",
          textAlign: TextAlign.center,
        ));
      }
      children.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: childrenRow,
      ));
    }

    return Column(
      children: children,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
        
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'angka genap:',
              ),
              Text(
                '$_counterGenap',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Text(
                'angka ganjil:',
              ),
              Text(
                '$_counterGanjil',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Text(
                'nrp saya:',
              ),
              Text(
                '$_tampilNrp',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              _segitigaPyramid(_counter)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
