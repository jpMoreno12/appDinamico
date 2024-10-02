import 'package:flutter/material.dart';
import 'package:formulario/widgets/appbar.dart';
import 'package:formulario/widgets/draggable/dragavel_app_bar.dart';
import 'package:formulario/widgets/main_principal.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => FormularioState();
}

class FormularioState extends State<Formulario> {
  bool _isTop = false;
  bool _isBottom = false;
  final String _appBar = 'appBar'; 
  

  @override
  Widget build(BuildContext context) {
    return Material(  
      child: Container(  
        color: Colors.amber,
        child: Column(  

          children: [  


            !_isTop && _isBottom ?
            DragTarget(
              builder: (context, accept, rejeccted) { 
                return SizedBox(
                  width: 400,
                  height: 90,
                  child: !_isTop ? const DragavelAppBar() : const AppBarr(),
                );
              },

              onWillAcceptWithDetails: (details) {
                return details.data == _appBar;
              },

              onAcceptWithDetails: (details) { 
                if (details.data == _appBar) {
                  setState(() {
                    _isBottom = false;
                    _isTop = true;
                  });
                }
              },
            ) :


            Visibility(
              visible: !_isBottom,
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

            const MainP(),

            DragTarget(builder: (context , accept, rejected) {
             return  SizedBox(  
              width: 400,
              height: 90,
                  child: !_isBottom
                      ? const DragavelAppBar()
                      :  Draggable(
                        data: _appBar,
                          feedback: const Material(
                            child: AppBarr(),
                          ),
                          childWhenDragging: const Offstage(offstage: true,),
                          child: const AppBarr(),
                        ),
             );
            },

            onWillAcceptWithDetails: (details) {
              return details.data == _appBar;
            },

            onAcceptWithDetails: (details) {
                if (details.data == _appBar) {
                  setState(() {
                    _isTop = false;
                    _isBottom = true;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
