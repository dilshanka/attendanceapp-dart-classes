import 'package:flutter/material.dart';
// import 'package:modernlogintute/pages/third.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Widget> containers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Attendance app",
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            // Existing containers
            for (Widget container in containers) container,

            // New container added when the floating action button is pressed
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
              onPressed: () {
                _openInputWindow(context);
              },
              child: const Text('Add a Date',),
            ),
          ],
        ),
      ),
   
    );
  }

  void _openInputWindow(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InputPage()),
    );

    if (result != null) {
      setState(() {
        containers.add(
          Column(
            children: [

               Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 174, 101),
           
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 380,
                height: 70,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const third()),
                    // );
                  },
                  child: const Text(
                    "EE5241",
                    style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
              ),








              // Container(
              //   margin: const EdgeInsets.only(top: 20),
              //   child: Center(
              //     child: Text(
              //       "EE5241",
              //       style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold),

                        
              //     ),


                  






              //   ),
              //   decoration: const BoxDecoration(
              //     color: Color.fromARGB(255, 230, 174, 101),
              //     borderRadius: BorderRadius.all(Radius.circular(10)),
              //   ),
              //   width: 380,
              //   height: 70,
              // ),
              const SizedBox(height: 10),
              Text(
                result,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      });
    }
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance app'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(labelText: 'Enter the Date'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
               child: const Text('OK'),
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange
               ),
              
              onPressed: () {
                Navigator.pop(context, _textController.text);
                
              },
              
              
             
              
            ),
          ],
        ),
      ),
    );
  }
}
