/* // ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:formulario/screens/formulario.dart';

class DraggableAppBar extends StatelessWidget {
  const DraggableAppBar({
    super.key,
    required this.position,
    required this.widget,
  });

  final bool position;
  final String widget;

  @override
  Widget build(BuildContext context) {
    return Visibility(
              visible:!_isBottom,
              child: Draggable(
                data: _appBar,
                childWhenDragging: const Offstage( 
                   offstage: true,
                ),
                feedback: const Material(  
                  child: AppBarr(),
        ),
                child: const AppBarr(),
      ),
    ), 
  }
}
 */
