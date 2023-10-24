import 'package:fhir/r4.dart';

import '../codesystems_valuesets/codesystems_valuesets.dart';
import 'is_null_or_blank.dart';

List<CodeableConcept>? relationships(int relationshipIndex, dynamic row) {
  if (isNullOrBlank(relationshipIndex, row)) {
    return null;
  } else {
    final coding = codingForRoleCodes(row[relationshipIndex]);
    if (coding == null) {
      return null;
    } else {
      return [
        CodeableConcept(coding: [coding])
      ];
    }
  }
}
