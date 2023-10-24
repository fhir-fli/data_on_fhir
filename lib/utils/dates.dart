import 'package:fhir/r4.dart';

FhirDate? fhirDateFromSpreadsheet(dynamic value) {
  if (FhirDate(value.toString()).isValid) {
    return FhirDate(value.toString());
  } else if (int.tryParse(value.toString()) != null) {
    var epoch = new DateTime(1899, 12, 30);
    var currentDate =
        epoch.add(new Duration(days: int.parse(value.toString())));
    return FhirDate(currentDate);
  } else {
    throw 'Not a Date';
  }
}
