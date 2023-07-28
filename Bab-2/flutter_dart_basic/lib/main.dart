import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _count_to_ten = 0;
  int _count_odd_or_even = 1;
  int _count_odd_number = 0;
  int _count_even_number = 0;
  int _count_prime_number = 0;
  int _prime_checker = 0;
  int _prime_number = 0;
  String _text = "Ganjil";
  String _text_odd = "Ganjil";
  String _text_even = "Ganjil";
  String _text_prime = "Prime";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementtoTenCounter() {
    setState(() {
      _count_to_ten++;
      if (_count_to_ten > 10) {
        _count_to_ten = 1;
      }
    });
  }

  void _oddEvenCounter() {
    setState(() {
      _count_odd_or_even++;
      if (_count_odd_or_even % 2 == 0) {
        _text = 'Genap';
      } else {
        _text = 'Ganjil';
      }
    });
  }

  void _oddNumberCounter() {
    setState(() {
      _count_odd_number++;
      if (_count_odd_number > 10) {
        _count_odd_number = 0;
      }

      _text_odd = "Ganjil: ";
      for (int i = 0; i <= _count_odd_number; i++) {
        if (i % 2 != 0) {
          _text_odd += '${i},';
        }
      }
    });
  }

  void _evenNumberCounter() {
    setState(() {
      _count_even_number++;

      _text_even = "Genap: ";
      for (int i = 0; i <= _count_even_number; i++) {
        if (i % 3 == 0 && i % 2 == 0 && i != 0) {
          _text_even += '${i},';
        }
      }
    });
  }

  void _primeNumberCounter() {
    setState(() {
      _count_prime_number++;
      _text_prime = "Prime: ";

      for (int i = 2; i <= _count_prime_number; i++) {
        _checkPrime(i);
      }
      // for (var i = 0; i < _count_prime_number; i++) {
      // _prime_checker = 1;
      // if (_prime_checker > 2) {
      //   break;
      // } else {
      //   _text_prime += '${i},';
      // }
      // }

      // for (int i = 0; i <= _count_prime_number; i++) {
      //   _prime_checker = 0;
      //   for (int j = 0; j <= _count_prime_number / 2; j++) {
      //     if (j != 0 && _count_prime_number % j == 0) {
      //       _prime_checker++;
      //     }
      //   }
      //   _text_prime += '${_count_prime_number},';
      // }
    });
  }

  void _checkPrime(int num) {
    int i, j = 0;
    bool _isPrime = false;
    j = (num / 2).truncate();
    for (var i = 2; i <= j; i++) {
      if (num % i == 0) {
        _isPrime = true;
        break;
      }
    }

    if (_isPrime == false) {
      _text_prime += '${num},';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Percobaan 1 (count to ten):',
            ),
            Text(
              '$_count_to_ten',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Percobaan 2 (odd or even):',
            ),
            Text(
              '$_count_odd_or_even',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Percobaan 3 (odd numbers):',
            ),
            Text(
              '$_count_odd_number',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text_odd,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Latihan (even number and multiples of 3):',
            ),
            Text(
              '$_count_even_number',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text_even,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Text(
              'Latihan (prime number):',
            ),
            Text(
              '$_count_prime_number',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text_prime,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
          _incrementtoTenCounter();
          _oddEvenCounter();
          _oddNumberCounter();
          _evenNumberCounter();
          _primeNumberCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
