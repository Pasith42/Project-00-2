import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(TestSteam());
}

StreamController<String> streamController = StreamController<String>();

class TestSteam extends StatefulWidget {
  @override
  State<TestSteam> createState() => TestSteamState();
}

class TestSteamState extends State<TestSteam> {
  late Stream<String> myStream;
  @override
  void initState() {
    super.initState();
    myStream = streamController.stream;
    Timer(const Duration(milliseconds: 3000), () {
      streamController.sink.add('first value');
    });
    Timer(const Duration(milliseconds: 5000), () {
      streamController.sink.add('next value');
    });
  }

  @override
  void dispose() {
    super.dispose();
    streamController.close();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: StreamBuilder<String>(
            stream: myStream,
            builder: (context, snapshort) {
              if (snapshort.connectionState == ConnectionState.active) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      snapshort.data.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        DateTime date = DateTime.now();
                        streamController.sink.add(date.toIso8601String());
                      },
                      child: const Text('Add Stream'),
                    )
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
