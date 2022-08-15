// import 'package:flutter/material.dart';
// import 'package:flutter_blob/blob_button.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple[400],
//         title: const Text("Shader Blob"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: BlobButton.bouncing(
//         onTap: _incrementCounter,
//         backgroundColor: Colors.purple[900],
//         icon: const Icon(
//           Icons.add,
//           color: Colors.white,
//           size: 32,
//         ),
//       ),
//     );
//   }
// }

//************BLOB LAYOUT************** */
import 'package:flutter/material.dart';
import 'package:flutter_blob/blob_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final blobLayoutSize = const Size(400, 400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Shader Blob'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SizedBox(
          width: blobLayoutSize.width,
          height: blobLayoutSize.height,
          child: BlobLayout.from(
            blobs: [
              //Taking this from particle.dart file
              RotatingParticle.random(blobLayoutSize),
              RotatingParticle.random(blobLayoutSize),
              RotatingParticle.random(blobLayoutSize),
              RotatingParticle.random(blobLayoutSize),
              RotatingParticle.random(blobLayoutSize),
              RotatingParticle.random(blobLayoutSize),
              RotatingParticle.random(blobLayoutSize),
              RotatingParticle.random(blobLayoutSize),
            ],
            blobsColor: Colors.amber[800]!,
          ),
        ),
      ),
    );
  }
}
