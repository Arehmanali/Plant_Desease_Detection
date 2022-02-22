import 'package:agricure/data/farm/models/News.dart';
import 'package:agricure/ui/farm/news/bloc/bloc.dart';
import 'package:agricure/ui/widgets/news_customWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_theme.dart';
import 'bloc/bloc.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key}) : super(key: key);

  Widget _headerNews(BuildContext context, Article article) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Hero(
          tag: 'headerImage',
          child: article.urlToImage.isEmpty
              ? Container()
              : customImage(article.urlToImage),
        ),
        Container(
          padding: const EdgeInsets.only(left: 0, right: 10, bottom: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.keyboard_backspace,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _body(BuildContext context, Article article) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: _headerNews(context, article),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Text(article.title, style: AppTheme.headline5),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(article.author, style: AppTheme.subtitle2),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(article.getTime(), style: AppTheme.subtitle2),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
              ),
              Text(article.content, style: AppTheme.bodyText1)
            ],
          ),
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: BlocBuilder<DetailBloc, DetailState>(
          builder: (context, state) {
            if (state == null) {
              return const Center(child: Text('Null bloc'));
            }
            if (state is Failure) {
              return const Center(child: Text('Something went wrong'));
            }
            if (state is LoadedArticle) {
              if (state.selectedArticle == null) {
                return const Text('No content avilable');
              } else {
                return _body(
                  context,
                  state.selectedArticle,
                );
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        )));
  }
}
