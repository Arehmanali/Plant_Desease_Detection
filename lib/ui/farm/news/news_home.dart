import 'package:agricure/app_theme.dart';
import 'package:agricure/data/farm/models/News.dart';
import 'package:agricure/ui/widgets/news_customWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Widget/newsCard.dart';
import 'bloc/bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _body(
    BuildContext context,
    List<dynamic> list, {
    required String type,
  }) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          title: Text(
            '${type.toUpperCase()} NEWS',
            style: AppTheme.headline5.copyWith(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 10.0,
          shadowColor: Colors.grey,
          pinned: true,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => NewsCard(
                      artical: list[index],
                      type: type.toUpperCase(),
                    ),
                childCount: list.length))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     systemNavigationBarColor: Theme.of(context).backgroundColor,
    //     statusBarColor: Theme.of(context).backgroundColor));
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
          if (state == null) {
            return const Center(child: Text('Null block'));
          }
          if (state is Failure) {
            return const Center(child: Text('Something went wrong'));
          }
          if (state is Loaded) {
            if (state.items.isEmpty) {
              return const Text('No content avilable');
            } else {
              return _body(context, state.items, type: state.type);
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        })));
  }
}
