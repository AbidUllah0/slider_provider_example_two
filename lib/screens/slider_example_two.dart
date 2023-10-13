import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_provider2/provider/slider_provider.dart';

class SliderExampleTwo extends StatefulWidget {
  const SliderExampleTwo({super.key});

  @override
  State<SliderExampleTwo> createState() => _SliderExampleTwoState();
}

class _SliderExampleTwoState extends State<SliderExampleTwo> {
  @override
  Widget build(BuildContext context) {
    //after using consumer remove this
    //final providerObj = Provider.of<SliderProvider>(context, listen: false);

    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Slider Example Provider',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (onChangevalue) {
                  value.setValue(onChangevalue);
                },
              );
            },
          ),
          // Slider(
          //   min: 0,
          //   max: 1,
          //   value: providerObj.value,
          //   onChanged: (value) {
          //     providerObj.setValue(value);
          //   },
          // ),
          SizedBox(
            height: 20,
          ),
          //with  consumer
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue.withOpacity(value.value),
                    child: Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(value.value),
                    child: Center(
                      child: Text('Container 2'),
                    ),
                  ),
                ),
              ],
            );
          }),
          //withoutConsumer
          // Row(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         height: 100,
          //         color: Colors.blue.withOpacity(providerObj.value),
          //         child: Center(
          //           child: Text('Container 1'),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 100,
          //         color: Colors.red.withOpacity(providerObj.value),
          //         child: Center(
          //           child: Text('Container 2'),
          //         ),
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
