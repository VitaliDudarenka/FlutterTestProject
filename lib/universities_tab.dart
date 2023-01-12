import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:test_flutter_project/blocs/university/university_bloc.dart';
import 'package:test_flutter_project/blocs/university/university_event.dart';
import 'package:test_flutter_project/blocs/university/university_state.dart';
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
                body: getDataWidget(state));
          },
        ),
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
    return AnimationLimiter(
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: ScrollController(),
        shrinkWrap: true,
        itemCount: state.data.length,
        itemBuilder: (context, index) {
          final item = state.data[index];
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(item.name),
                    Text(item.webPages.first),
                    Text(item.country),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  } else if (state is Error) {
    return Center(
      child: Text(state.message.toString()),
    );
  } else {
    return Container();
  }
}
