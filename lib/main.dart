import 'package:flutter/material.dart';
import 'cubit/points_counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PointsCounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: const PointsCounterView(),
        ),
      ),
    );
  }
}

class PointsCounterView extends StatelessWidget {
  const PointsCounterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
               BlocListener<PointsCounterCubit, PointsCounterState>(
                listener: (context, state) {
              
                },
                child: Text(
                      BlocProvider.of<PointsCounterCubit>(context).teamA.toString(),
                        style:const TextStyle(
                          fontSize: 150,
                        ),
                      ),
               ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<PointsCounterCubit>(context).increment('A',1);
                    },
                    child: const Text(
                      'Add 1 Point ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<PointsCounterCubit>(context).increment('A',2);
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<PointsCounterCubit>(context).increment('A',3);
                    },
                    child: const Text(
                      'Add 3 Point ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 500,
              child: VerticalDivider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                     BlocBuilder<PointsCounterCubit,PointsCounterState>(
                    builder: (context, state) {
                      return Text(
                        BlocProvider.of<PointsCounterCubit>(context).teamB.toString(),
                        style:const TextStyle(
                          fontSize: 150,
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<PointsCounterCubit>(context).increment('B',1);
                    },
                    child: const Text(
                      'Add 1 Point ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<PointsCounterCubit>(context).increment('B',2);
                    },
                    child: const Text(
                      'Add 2 Point ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<PointsCounterCubit>(context).increment('B',3);
                    },
                    child: const Text(
                      'Add 3 Point ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.orange,
            minimumSize: const Size(150, 50),
          ),
          onPressed: () {},
          child: const Text(
            'Reset',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
