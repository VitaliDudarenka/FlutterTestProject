import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_project/blocs/university/university_bloc.dart';
import 'package:test_flutter_project/blocs/university/university_event.dart';
import 'package:test_flutter_project/blocs/university/university_state.dart';
import 'package:test_flutter_project/models/university.dart';
import 'package:test_flutter_project/network/university_repository.dart';

import 'resources/strings.dart';

class UniversityListWidget extends StatelessWidget {
  const UniversityListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UniversityBloc(RepositoryProvider.of<UniversityRepository>(context))
            ..add(const UniversityEvent.loadUniversities(null)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocBuilder<UniversityBloc, UniversityState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is Data) {
              print('data size ${state.data.length}');
              return Scaffold(
                  appBar: AppBar(
                    title: TextField(
                        onSubmitted: (text) {
                          context
                              .read<UniversityBloc>()
                              .add(UniversityEvent.loadUniversities(text));
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: Strings.enterCountry,
                            fillColor: Colors.black12,
                            filled: true)),
                  ),
                  body: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    controller: ScrollController(),
                    shrinkWrap: true,
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      final item = state.data[index];
                      return Column(
                        children: [
                          Text(item.name),
                          Text(item.webPages.first),
                          Text(item.country),
                          const SizedBox(height: 15)
                        ],
                      );
                    },
                  ));
            }
            if (state is Error) {
              return Center(
                child: Text(state.message.toString()),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
