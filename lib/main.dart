import 'package:data_on_fhir/transform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                    'Now, you need to share your spreadsheet with this app. To do this, copy the full url of your spreadsheet, and paste it in the text box below. Then click the "Set my Data on FHIR! button',
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
                    onPressed: () => transform(_controller.text),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
