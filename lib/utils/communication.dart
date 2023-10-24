import 'package:fhir/r4.dart';

import '../codesystems_valuesets/codesystems_valuesets.dart';
import 'is_null_or_blank.dart';

List<T>? communication<T>(int preferredLanguageIndex, dynamic row) {
  if (isNullOrBlank(preferredLanguageIndex, row)) {
    return null;
  } else {
    final coding = codingForLanguage(row[preferredLanguageIndex]);
    if (coding == null) {
      return null;
    } else {
      final codeableConcept = CodeableConcept(coding: [coding]);
      switch (T) {
        case PatientCommunication:
          return [PatientCommunication(language: codeableConcept) as T];
        case RelatedPersonCommunication:
          return [RelatedPersonCommunication(language: codeableConcept) as T];
      }
    }
  }
  return null;
}
