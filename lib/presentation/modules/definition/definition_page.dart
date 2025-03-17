import 'package:assessment/presentation/base/page/base_page.dart';
import 'package:assessment/presentation/config/theme/dimensions.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:assessment/presentation/modules/definition/bloc/definition_bloc.dart';
import 'package:assessment/presentation/modules/definition/components/word_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/menu_item_widget.dart';

class DefinitionPage extends BasePage<DefinitionBloc> {
  const DefinitionPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DefinitionState();
  }
}

class _DefinitionState extends PageState<DefinitionBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(DefinitionEvent.downloadWordInfo());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: context.appColorScheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(
            customBorder: CircleBorder(),
            borderRadius: BorderRadius.circular(Dimensions.circularBorder),
            child: PopupMenuButton<int>(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              itemBuilder:
                  (context) => [
                    PopupMenuItem<int>(
                      value: 1,
                      child: MenuItemWidget(icon: Icons.share, text: 'Share'),
                    ),
                    PopupMenuDivider(),
                    PopupMenuItem<int>(
                      value: 2,
                      child: MenuItemWidget(
                        icon: Icons.note_alt,
                        text: 'Add note',
                      ),
                    ),
                    PopupMenuItem<int>(
                      value: 3,
                      child: MenuItemWidget(icon: Icons.star, text: 'Favorite'),
                    ),
                    PopupMenuItem<int>(
                      value: 4,
                      child: MenuItemWidget(
                        icon: Icons.bookmark,
                        text: 'Add to list',
                      ),
                    ),
                    PopupMenuDivider(),

                    PopupMenuItem<int>(
                      value: 5,
                      child: MenuItemWidget(
                        icon: Icons.flag,
                        text: 'Report image',
                      ),
                    ),
                  ],
              child: Container(
                padding: EdgeInsets.all(Dimensions.margin_8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withAlpha(120),
                ),
                child: Icon(Icons.more_horiz),
              ),
            ),
          ),
        ],
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white.withAlpha(120),
          ),
          onPressed: () {},
          icon: Icon(Icons.clear),
        ),
      ),
      body: SingleChildScrollView(
        child: WordComponent(),
      ),
    );
  }
}
