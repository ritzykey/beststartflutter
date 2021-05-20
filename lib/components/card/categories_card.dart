import 'package:beststartflutter/constants/border_constants.dart';
import 'package:beststartflutter/constants/color_constants.dart';
import 'package:beststartflutter/constants/padding_constants.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String name;
  final String body;

  const CategoriesCard({Key key, @required this.name, @required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      margin: PaddingConstants.instance.paddingNormal,
      shape: BorderConstants.instance.radiusAllCircular,
      child: Expanded(
        child: buildAlignPaddingText(context),
      ),
    );
  }

  Align buildAlignPaddingText(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: PaddingConstants.instance.paddingNormal,
        child: buildColumnTexts(context),
      ),
    );
  }

  Column buildColumnTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextName(context),
        buildTextBody(context),
      ],
    );
  }

  Text buildTextName(BuildContext context) {
    return Text(name,
        style: Theme.of(context).textTheme.headline3.copyWith(
              color: ColorConstants.instance.white,
              fontWeight: FontWeight.bold,
            ));
  }

  Text buildTextBody(BuildContext context) {
    return Text(
      body,
      style: Theme.of(context)
          .textTheme
          .headline5
          .copyWith(color: ColorConstants.instance.white),
    );
  }
}
