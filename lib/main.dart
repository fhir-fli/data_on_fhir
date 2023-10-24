import 'package:data_on_fhir/transform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String error = '';
  bool showError = false;

  void updateError(Object e, StackTrace s) {
    setState(() {
      error = 'Error: $e\nStackTrace:\n$s';
      showError = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return MaterialApp(
      title: 'Data on Fhir',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Welcome to Data on FHIR',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: 700,
                  child: const Text(
                    'I\'ve created this simple application to allow anyone to more easily transform their data into FHIR. The first step is to make a copy of the Google Sheet template and fill it. Copy the url below, open it, and make a copy to your own Google Drive, then enter your data in the given format.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'https://docs.google.com/spreadsheets/d/1EgUNDntQxNa28nUJUDsvp9mELk3RMg_S4vRUY86xscg/edit#gid=0',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.copy),
                      onPressed: () {
                        Clipboard.setData(
                          ClipboardData(
                            text:
                                'https://docs.google.com/spreadsheets/d/1EgUNDntQxNa28nUJUDsvp9mELk3RMg_S4vRUY86xscg/edit#gid=0',
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 700,
                  child: const Text(
                    'Next, you need to share your spreadsheet with this app. To do this, copy the email below. Then go to your spreadsheet, click the "Share" button in the upper right corner and in the box that says "Add people and groups", paste the email, give it "Viewer" access, unclick the "Notify people" checkbox, and then click "Share".',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Email for spreadsheet access',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.copy),
                      onPressed: () {
                        Clipboard.setData(
                          ClipboardData(
                            text:
                                'data-on-fhir@fhirfli-401119.iam.gserviceaccount.com',
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 700,
                  child: const Text(
                    'Now, you need to share your spreadsheet with this app. To do this, copy the full url of your spreadsheet, and paste it in the text box below. When you click the "Set my Data on FHIR! button, the application will transform all of your data and download it in the default folder of your computer as a .tar.gz file.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: TextFormField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Complete Url to Your Google Spreadsheet',
                    ),
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      try {
                        transform(_controller.text);
                      } catch (e, s) {
                        updateError(e, s);
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              'assets/fire.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Set My Data on FHIR!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'If you run into any trouble, please feel free to email me at:    ',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'grey@fhirfli.dev',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy),
                        onPressed: () {
                          Clipboard.setData(
                            ClipboardData(text: 'grey@fhirfli.dev'),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'You are also welcome to join our   ',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'slack channel',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy),
                        onPressed: () {
                          Clipboard.setData(
                            ClipboardData(
                                text:
                                    'https://join.slack.com/t/fhir-fli/shared_invite/zt-25qp5igsk-9_e6ACfobI1fGQjTQX2r7g'),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                if (showError)
                  SizedBox(
                    width: 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'If you are seeing this, there has unfortunately been an error. Please copy the error below, and email it to me and I\'ll fix it as soon as I have a chance.',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'copy error',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: error));
                          },
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
