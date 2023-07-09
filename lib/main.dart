// ignore_for_file: sized_box_for_whitespace, duplicate_ignore, deprecated_member_use, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:basketball_counter_app/Cubit/Countercubit.dart';
import 'package:basketball_counter_app/Cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointcounter());
}

// ignore: camel_case_types, use_key_in_widget_constructors
class pointcounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, counterstate>(
        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
        builder: (context, State) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text("points counter"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: duplicate_ignore
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Team A",
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            " ${BlocProvider.of<CounterCubit>(context).teamApoints}",
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamInctement(team: 'A', buttonnumber: 1);
                            },
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamInctement(team: 'A', buttonnumber: 2);
                            },
                            child: const Text(
                              "Add 2 point",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamInctement(team: 'A', buttonnumber: 3);
                            },
                            child: const Text(
                              "Add 3 point",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 500,
                      child: const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 60,
                        endIndent: 60,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Team B",
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            " ${BlocProvider.of<CounterCubit>(context).teamBpoints}",
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamInctement(team: 'B', buttonnumber: 1);
                            },
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamInctement(team: 'B', buttonnumber: 2);
                            },
                            child: const Text(
                              "Add 2 point",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamInctement(team: 'B', buttonnumber: 3);
                            },
                            child: const Text(
                              "Add 3 point",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
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
                    primary: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, State) {});
  }
}
