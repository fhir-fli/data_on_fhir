import 'dart:typed_data';

import 'package:data_on_fhir/download_sheets.dart';
import 'package:fhir/r4.dart';
import 'package:fhir_bulk/r4.dart';
import 'package:file_saver/file_saver.dart';

import 'resources/resources.dart';

/// The function that coordinates the transforms from each tab in the sheet
Future<void> transform(String sheetId) async {
  /// Get the sheet ID from the URL, this allows a user to input just the ID
  /// or the full url and still have it work
  ///
  /// A typical Google Sheet URL looks like this:
  /// https://docs.google.com/spreadsheets/d/2BfOIXwiMaY00mZKGIiwz5eEBy4VTa_X3iQWER93mnbb/edit#gid=0
  ///
  /// But we only need: 2BfOIXwiMaY00mZKGIiwz5eEBy4VTa_X3iQWER93mnbb
  ///
  sheetId = sheetId.split('/edit').first.split('/').last;

  /// Calls the function to download the sheet information. It will return the
  /// sheets as a Map<String, List<List<dynamic>>>. The keys are the resourceType
  /// and the values are the contents of a single tab of the Google Sheet
  final fileStrings = await downloadSheets(sheetId);

  /// The first task is to create a List of patients from the patient tab
  final List<Patient>? patientList =
      fileStrings['patient'] == null ? null : patients(fileStrings['patient']!);

  if (patientList != null) {
    final ndJsonString = FhirBulk.toNdJson(patientList);
    final fileBytes = await FhirBulk.toTarGzFile([ndJsonString]);
    if (fileBytes != null) {
      await FileSaver.instance.saveFile(
          name: 'fhirdata.tar.gz', bytes: Uint8List.fromList(fileBytes));
    }
  }
}
