import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_project/blocs/university/university_event.dart';
import 'package:test_flutter_project/blocs/university/university_state.dart';
import 'package:test_flutter_project/network/university_repository.dart';

import 'blocs/university/university_stream.dart';
import 'resources/strings.dart';

class UniversityListWidget extends StatefulWidget {
  const UniversityListWidget({super.key});

  @override
  State<UniversityListWidget> createState() {
    return UniversityListWidgetState();
  }
}

class UniversityListWidgetState extends State<UniversityListWidget> {
  UniversityStreamController? _uiController;

  @override
  void initState() {
    _uiController = UniversityStreamController(
        RepositoryProvider.of<UniversityRepository>(context));
    _uiController!.inputEventSink
        .add(const UniversityEvent.loadUniversities(""));
    super.initState();
  }

  @override
  void dispose() {
    _uiController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<UniversityState>(
        stream: _uiController!.outputStateStream,
        initialData: const UniversityState.loading(),
        builder: (context, snapshot) {
          return Scaffold(
              appBar: AppBar(
                title: TextField(
                    onSubmitted: (text) {
                      _uiController!.inputEventSink
                          .add(UniversityEvent.loadUniversities(text));
                    },
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: Strings.enterCountry,
                        fillColor: Colors.black12,
                        filled: true)),
              ),
              body: getDataWidget(snapshot.data!));
        },
      ),
    );
  }
}

Widget getDataWidget(UniversityState state) {
  if (state is Loading) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  } else if (state is Data) {
    print('data size ${state.data.length}');
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      controller: ScrollController(),
      shrinkWrap: true,
      itemCount: state.data.length,
      itemBuilder: (context, index) {
        final item = state.data[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Text(item.name),
            Text(item.webPages.first),
            Text(item.country),
            const SizedBox(height: 10)
          ],
        );
      },
    );
  } else if (state is Error) {
    return Center(
      child: Text(state.message.toString()),
    );
  } else {
    return Container();
  }
}
