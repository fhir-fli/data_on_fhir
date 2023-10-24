import 'package:csv/csv.dart';
import 'package:gsheets/gsheets.dart';

import 'credentials.dart';

/// Download the sheets
Future<Map<String, List<List<dynamic>>>> downloadSheets(String sheetId) async {
  /// Assign the gsheets credentials
  final gsheets = GSheets(credentials);

  /// Get all of tabs/sheets at the stated location
  final ss = await gsheets.spreadsheet(sheetId);

  /// This is what we'll eventually be returning from this function
  final Map<String, List<List<dynamic>>> fileStrings = {};

  /// For each tab in the sheets
  for (var sheet in ss.sheets) {
    /// download the values for that tab
    final sheetStrings = await singleSheet(sheet);

    /// as long as it isn't null
    if (sheetStrings != null) {
      /// store the values in the fileStrings map. We go ahead and convert
      /// the values from a single string into a list of lists so we don't have
      /// to do it individually for each resourceType
      fileStrings[sheetStrings.first] = CsvToListConverter()
          .convert(sheetStrings.last, fieldDelimiter: '\t', eol: '\n');
    }
  }
  return fileStrings;
}

Future<List<String>?> singleSheet(Worksheet sheet) async {
  /// Start with an empty string
  var string = '';

  /// Read all of the values for all of the rows, values is a list of rows
  var values = await sheet.values.allRows();

  /// For each row, evaluate its values
  for (var v in values) {
    /// Join the values of each cell together separated by tabs
    string += v.join('\t');

    /// Separate each line with a carriage return
    string += '\n';
  }

  return [sheet.title, string];
}
