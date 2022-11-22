import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_visibility_controller.dart';

class LtsmVisibilityView extends StatefulWidget {
  const LtsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, LtsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children:  [
              /*
              ? Buat variabel visible di dalam State/Controller
              ! bool visible = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.visible = controller.visible!;
              controller.setState((){});
              */
                
              */
              ///2
              if(controller.visible)
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ///3
              MaterialButton(
                onPressed: () {
                  controller.visible = controller.visible!;
                  controller.setState(() {
                    if(controller.visible == false){
                      controller.visible = true;
                    }else{
                      controller.visible =false;
                    }
                  });
                },
                child: Text("Tekan",
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmVisibilityView> createState() => LtsmVisibilityController();
}