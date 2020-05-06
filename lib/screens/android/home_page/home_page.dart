import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloclibrary/blocs/home/home_bloc.dart';
import 'package:flutterbloclibrary/blocs/home/home_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final _bloc = HomeBloc();

    @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("flutter_bloc"),
      ),
      body: BlocBuilder(
        bloc: _bloc,
        builder: (context, HomeState state){
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  state.counter.toString(),
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Row(
        children: <Widget>[
          FloatingActionButton(
            onPressed: () =>  _bloc.onIncrement,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () =>  _bloc.onDecrement,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
