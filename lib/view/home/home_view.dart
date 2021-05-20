import 'package:beststartflutter/components/card/categories_card.dart';
import 'package:beststartflutter/constants/color_constants.dart';
import 'package:beststartflutter/core/base/base_state.dart';
import 'package:beststartflutter/core/extension/context_extension.dart';
import 'package:beststartflutter/view/home/home_model.dart';
import 'package:beststartflutter/view/home/home_view_model.dart';
import 'package:flutter/material.dart';

part 'home_string_values.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseState {
  HomeModel model;
  final _HomeStringValues values = _HomeStringValues();

  final HomeViewModel viewModel = HomeViewModel();

  int value = 0;
  @override
  void initState() {
    super.initState();
    model = HomeModel('ÖZBEK', 'Furkan');
  }

  void _changeValue() {
    value = viewModel.randomValue();
    setState(() {});
  }

  Color get _primary => value % 2 == 0 ? Colors.red : Colors.blue;
  Color get _secondary => value % 2 == 0 ? Colors.green : Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton(),
      appBar: AppBar(),
      body: Column(
        children: [
          buildText(context),
          Expanded(child: buildCategoriesCard()),
          Expanded(child: buildListView(context)),
        ],
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: _changeValue,
      child: Text('$value'),
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      values.title,
      style: Theme.of(context)
          .textTheme
          .headline1
          .copyWith(color: ColorConstants.instance.appleBlossom),
    );
  }

  CategoriesCard buildCategoriesCard() {
    return CategoriesCard(
      name: model.description,
      body: model.title,
    );
  }

  ListView buildListView(BuildContext context) {
    return ListView(
      children: [
        AnimatedContainer(
          duration: durationConstants.durationLow,
          height: MediaQuery.of(context).size.height * 0.1,
          color: _primary,
        ),
        AnimatedContainer(
          duration: durationConstants.durationLow,
          height: MediaQuery.of(context).size.height * 0.01,
          color: _secondary,
        ),
        AnimatedContainer(
          duration: durationConstants.durationLow,
          height: context.dynamicHeight(0.1),
          color: _primary,
        ),
        AnimatedContainer(
          duration: durationConstants.durationLow,
          height: context.dynamicHeight(0.01),
          color: _secondary,
        ),
      ],
    );
  }
}
