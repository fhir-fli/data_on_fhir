import 'package:fhir/r4.dart';

Coding? codingForRoleCodes(String display) {
  final index =
      rolecodes.concept?.indexWhere((element) => element.display == display);
  if (index == null || index == -1) {
    return null;
  } else {
    return Coding(
      code: rolecodes.concept![index].code,
      display: display,
      system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-RoleCode'),
    );
  }
}

final rolecodes = CodeSystem.fromJson({
  "resourceType": "CodeSystem",
  "id": "v3-RoleCode",
  "language": "en",
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Placeholder</div>"
  },
  "url": "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
  "identifier": [
    {"system": "urn:ietf:rfc:3986", "value": "urn:oid:2.16.840.1.113883.5.111"}
  ],
  "version": "2.2.0",
  "name": "RoleCode",
  "title": "RoleCode",
  "status": "active",
  "experimental": false,
  "date": "2019-12-15",
  "publisher": "Health Level 7",
  "contact": [
    {"name": "Health Level Seven"}
  ],
  "description":
      "A set of codes further specifying the kind of Role; specific classification codes for further qualifying RoleClass codes.",
  "caseSensitive": true,
  "hierarchyMeaning": "is-a",
  "content": "complete",
  "property": [
    {
      "extension": [
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-symmetry",
          "valueCode": "antisymmetric"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-transitivity",
          "valueCode": "transitive"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-reflexivity",
          "valueCode": "irreflexive"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-isNavigable",
          "valueBoolean": true
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-relationshipKind",
          "valueCode": "Specializes"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-inverseName",
          "valueString": "Generalizes"
        }
      ],
      "code": "Specializes",
      "description":
          "The child code is a more narrow version of the concept represented by the parent code.  I.e. Every child concept is also a valid parent concept.  Used to allow determination of subsumption.  Must be transitive, irreflexive, antisymmetric.",
      "type": "Coding"
    },
    {
      "extension": [
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-symmetry",
          "valueCode": "antisymmetric"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-transitivity",
          "valueCode": "transitive"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-reflexivity",
          "valueCode": "irreflexive"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-isNavigable",
          "valueBoolean": true
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-relationshipKind",
          "valueCode": "Generalizes"
        },
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-inverseName",
          "valueString": "Specializes"
        }
      ],
      "code": "Generalizes",
      "description":
          "Inverse of Specializes.  Only included as a derived relationship.",
      "type": "Coding"
    },
    {
      "extension": [
        {
          "url":
              "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-relationshipKind",
          "valueCode": "Specializes"
        }
      ],
      "code": "rim-ClassifiesClassCode",
      "uri":
          "http://terminology.hl7.org/CodeSystem/utg-concept-properties#rim-ClassifiesClassCode",
      "description":
          "The child code is a classification of the particular class group identified by the 'classCode' in a RIM class as the parent code.  Used only in RIM backbone classes to link the code and classCode values.",
      "type": "Coding"
    },
    {
      "code": "internalId",
      "uri":
          "http://terminology.hl7.org/CodeSystem/utg-concept-properties#v3-internal-id",
      "description":
          "The internal identifier for the concept in the HL7 Access database repository.",
      "type": "code"
    },
    {
      "code": "notSelectable",
      "uri": "http://hl7.org/fhir/concept-properties#notSelectable",
      "description":
          "Indicates that the code is abstract - only intended to be used as a selector for other concepts",
      "type": "boolean"
    },
    {
      "code": "synonymCode",
      "uri": "http://hl7.org/fhir/concept-properties#synonym",
      "description":
          "An additional concept code that was also attributed to a concept",
      "type": "code"
    },
    {
      "code": "subsumedBy",
      "uri": "http://hl7.org/fhir/concept-properties#parent",
      "description": "The concept code of a parent concept",
      "type": "code"
    },
    {
      "code": "status",
      "uri": "http://hl7.org/fhir/concept-properties#status",
      "description":
          "A property that indicates the status of the concept. One of active, experimental, deprecated, or retired.",
      "type": "code"
    },
    {
      "code": "deprecationDate",
      "uri": "http://hl7.org/fhir/concept-properties#deprecationDate",
      "description":
          "The date at which a concept was deprecated. Concepts that are deprecated but not inactive can still be used, but their use is discouraged.",
      "type": "dateTime"
    }
  ],
  "concept": [
    {
      "code": "_AffiliationRoleType",
      "display": "AffiliationRoleType",
      "definition":
          "Concepts characterizing the type of association formed by player and scoper when there is a recognized Affiliate role by which the two parties are related.\r\n\r\n*Examples:* Business Partner, Business Associate, Colleague",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "AFFL"
          }
        },
        {"code": "internalId", "valueCode": "21489"}
      ]
    },
    {
      "code": "_AssignedRoleType",
      "display": "AssignedRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "ASSIGNED"
          }
        },
        {"code": "internalId", "valueCode": "21326"}
      ]
    },
    {
      "code": "_CertifiedEntityType",
      "display": "CertifiedEntityType",
      "definition": "Defines types of certifications for all entities",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "QUAL"
          }
        },
        {"code": "internalId", "valueCode": "21120"}
      ]
    },
    {
      "code": "_CitizenRoleType",
      "display": "CitizenRoleType",
      "definition":
          "A role type used to qualify a person's legal status within a country or nation.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23063"}
      ]
    },
    {
      "code": "_ContactRoleType",
      "display": "ContactRoleType",
      "definition": "Types of contact for Role code \"CON\"",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "CON"
          }
        },
        {"code": "internalId", "valueCode": "21122"}
      ]
    },
    {
      "code": "_IdentifiedEntityType",
      "display": "IdentifiedEntityType",
      "definition":
          "**Definition:** A code representing the type of identifier that has been assigned to the identified entity (IDENT).\r\n\r\n**Examples:** Example values include Social Insurance Number, Product Catalog ID, Product Model Number.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22400"}
      ]
    },
    {
      "code": "_LivingSubjectProductionClass",
      "display": "LivingSubjectProductionClass",
      "definition":
          "Code indicating the primary use for which a living subject is bred or grown",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21128"}
      ]
    },
    {
      "code": "_MedicationGeneralizationRoleType",
      "display": "MedicationGeneralizationRoleType",
      "definition":
          "Identifies the specific hierarchical relationship between the playing and scoping medications.\r\n\r\n*Examples:* Generic, Generic Formulation, Therapeutic Class, etc.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "GEN"
          }
        },
        {"code": "internalId", "valueCode": "21532"}
      ]
    },
    {
      "code": "_MemberRoleType",
      "display": "MemberRoleType",
      "definition": "Types of membership for Role code \"MBR\"",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "MBR"
          }
        },
        {"code": "internalId", "valueCode": "21129"}
      ]
    },
    {
      "code": "_PersonalRelationshipRoleType",
      "display": "PersonalRelationshipRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "PRS"
          }
        },
        {"code": "internalId", "valueCode": "21131"}
      ]
    },
    {
      "code": "_PolicyOrProgramCoverageRoleType",
      "display": "PolicyOrProgramCoverageRoleType",
      "definition":
          "**Description:** A role recognized through the eligibility of an identified party for benefits covered under an insurance policy or a program based on meeting eligibility criteria.\r\n\r\nEligibility as a covered party may be conditioned on the party meeting criteria to qualify for coverage under a policy or program, which may be mandated by law. These criteria may be:\r\n\r\n1.  The sole basis for coverage, e.g., being differently abled may qualify a person for disability coverage\r\n2.  May more fully qualify a covered party role e.g, being differently abled may qualify an adult child as a dependent\r\n3.  May impact the level of coverage for a covered party under a policy or program, e.g., being differently abled may qualify a program eligible for additional benefits.\r\n\r\n**Discussion:** The Abstract Value Set \"CoverageRoleType\", which was developed for use in the Canadian realm \"pre-coordinate\" coverage roles with other roles that a covered party must play in order to be eligible for coverage, e.g., \"handicapped dependent\". These role.codes may only be used with COVPTY to avoid overlapping concepts that would result from using them to specify the specializations of COVPTY, e.g., the role.class DEPEN should not be used with the role.code family dependent because that relationship has overlapping concepts due to the role.code precoodination and is conveyed in FICO with the personal relationship role that has a PART role link to the covered party role. For the same reasons, the role.class DEPEN should not be used with the role.code HANDIC (handicapped dependent); the role.code DIFFABLE (differently abled) should be used instead.\r\n\r\nIn summary, the coded concepts in the Abstract Value Set \"CoveredPartyRoleType\" can be \"post-coordinated\" with the \"RoleClassCoveredParty\" Abstract Value Set. Decoupling these concepts is intended to support an expansive range of covered party concepts and their semantic comparability.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21961"}
      ]
    },
    {
      "code": "_ResearchSubjectRoleBasis",
      "display": "ResearchSubjectRoleBasis",
      "definition":
          "Specifies the administrative functionality within a formal experimental design for which the ResearchSubject role was established. Examples: screening - role is used for pre-enrollment evaluation portion of the design; enrolled - role is used for subjects admitted to the active treatment portion of the design.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "RESBJ"
          }
        },
        {"code": "internalId", "valueCode": "21133"}
      ]
    },
    {
      "code": "_ServiceDeliveryLocationRoleType",
      "display": "ServiceDeliveryLocationRoleType",
      "definition":
          "A role of a place that further classifies the setting (e.g., accident site, road side, work site, community location) in which services are delivered.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "SDLOC"
          }
        },
        {"code": "internalId", "valueCode": "21134"}
      ]
    },
    {
      "code": "_SpecimenRoleType",
      "display": "SpecimenRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "SPEC"
          }
        },
        {"code": "internalId", "valueCode": "21135"}
      ]
    },
    {
      "code": "CLAIM",
      "display": "claimant",
      "definition": "A party that makes a claim for coverage under a policy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21949"}
      ]
    },
    {
      "code": "communityLaboratory",
      "display": "Community Laboratory",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21580"}
      ]
    },
    {
      "code": "GT",
      "display": "Guarantor",
      "definition":
          "An individual or organization that makes or gives a promise, assurance, pledge to pay or has paid the healthcare service provider.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18109"}
      ]
    },
    {
      "code": "homeHealth",
      "display": "Home Health",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21581"}
      ]
    },
    {
      "code": "laboratory",
      "display": "Laboratory",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21576"}
      ]
    },
    {
      "code": "pathologist",
      "display": "Pathologist",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21578"}
      ]
    },
    {
      "code": "PH",
      "display": "Policy Holder",
      "definition": "Policy holder for the insurance policy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18108"}
      ]
    },
    {
      "code": "phlebotomist",
      "display": "Phlebotomist",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21577"}
      ]
    },
    {
      "code": "PROG",
      "display": "program eligible",
      "definition":
          "A party that meets the eligibility criteria for coverage under a program.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21950"}
      ]
    },
    {
      "code": "PT",
      "display": "Patient",
      "definition":
          "The recipient for the service(s) and/or product(s) when they are not the covered party.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18106"}
      ]
    },
    {
      "code": "subject",
      "display": "Self",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21579"}
      ]
    },
    {
      "code": "thirdParty",
      "display": "Third Party",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21582"}
      ]
    },
    {
      "code": "_AdministrativeLocationRoleType",
      "display": "AdministrativeLocationRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21331"}
      ]
    },
    {
      "code": "_ClinicalOrganizationRoleType",
      "display": "ClinicalOrganizationRoleType",
      "definition":
          "A role of an organization that further classifies the clincial responsibility for the healthcare care delivered during an encounter. E.g. cardiology service, pediatric service, nursing services.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21121"}
      ]
    },
    {
      "code": "_CommissioningPartyRoleType",
      "display": "CommissioningPartyRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21330"}
      ]
    },
    {
      "code": "_DeviceOperatorType",
      "display": "DeviceOperatorType",
      "definition":
          "Indicates the type of person that is responsible for operating the device related to the incident reported in ICSR.\r\n\r\nExamples include: Physician, Nurse, Medical Technician, Respiratory Technician.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21409"}
      ]
    },
    {
      "code": "_EmployeeRoleType",
      "display": "EmployeeRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21328"}
      ]
    },
    {
      "code": "_HealthcareProviderRoleType",
      "display": "HealthcareProviderRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21325"}
      ]
    },
    {
      "code": "_LicensedRoleType",
      "display": "LicensedRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21324"}
      ]
    },
    {
      "code": "_NDCRelatedDrugEntityType",
      "display": "NDCRelatedDrugEntityType",
      "definition": "NDC Regulated Drug Entity Type",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21130"}
      ]
    },
    {
      "code": "_OrganizationPartRoleType",
      "display": "OrganizationPartRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21329"}
      ]
    },
    {
      "code": "_ProductProcessingOrganizationRoleType",
      "display": "ProductProcessingOrganizationRoleType",
      "definition":
          "**Description:** Indicates the role that an organization takes in the process by which a product goes from an original manufacturer to the eventual consumer.\r\n\r\n**Examples:**Manufacturer, re-processor\r\n\r\n**Note:**These two values are currently used in adverse event and product problem reporting.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "22080"}
      ]
    },
    {
      "code": "_ProductSafetyReportPartyRoleType",
      "display": "ProductSafetyReportPartyRoleType",
      "definition":
          "**Description:**Captures the different roles that are recorded to characterize the qualifications or stations in life of persons or organizations who participate as senders or as receivers of adverse event or product problem reports.\r\n\r\n**Example:**Example values may include: physician, healthcare facility, attorney, family member, regulatory agency. Initial effort to find defined concepts for this value set will focus on the HIPAA provider taxonomy.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "22045"}
      ]
    },
    {
      "code": "_QualifiedRoleType",
      "display": "QualifiedRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21327"}
      ]
    },
    {
      "code": "DEP",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18888"}
      ]
    },
    {
      "code": "DEPEN",
      "display": "dependent",
      "definition":
          "A party covered under a policy based on association with a subscriber.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21954"}
      ]
    },
    {
      "code": "FM",
      "display": "Family Member",
      "definition":
          "A member of the covered party's family. This could be the spouse, a parent, a grand parent, a sibling, etc.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18107"}
      ]
    },
    {
      "code": "INDIV",
      "display": "individual",
      "definition": "A party covered under a policy as the policyholder.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21952"}
      ]
    },
    {
      "code": "NAMED",
      "display": "named insured",
      "definition":
          "A party to an insurance policy to whom the insurer agrees to indemnify for losses, provides benefits for, or renders services.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21951"}
      ]
    },
    {
      "code": "PSYCHCF",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "19725"}
      ]
    },
    {
      "code": "SUBSCR",
      "display": "subscriber",
      "definition":
          "A party covered under a policy based on association with a sponsor who is the policy holder, and whose association may provide for the eligibility of dependents for coverage",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21953"}
      ]
    },
    {
      "code": "BILL",
      "display": "Billing Contact",
      "definition":
          "A contact role used to identify a person within a Provider organization that can be contacted for billing purposes (e.g. about the content of the Invoice).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "17623"},
        {"code": "subsumedBy", "valueCode": "_AdministrativeContactRoleType"}
      ]
    },
    {
      "code": "ORG",
      "display": "organizational contact",
      "definition":
          "A contact for an organization for administrative purposes. Contact role specifies a person acting as a liason for the organization.\r\n\r\nExample: HR Department representative.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21332"},
        {"code": "subsumedBy", "valueCode": "_AdministrativeContactRoleType"}
      ]
    },
    {
      "code": "PAYOR",
      "display": "Payor Contact",
      "definition":
          "A contact role used to identify a person within a Payor organization to whom this communication is addressed.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "17624"},
        {"code": "subsumedBy", "valueCode": "_AdministrativeContactRoleType"}
      ]
    },
    {
      "code": "_AgentRoleType",
      "display": "AgentRoleType",
      "definition":
          "Parties that may or should contribute or have contributed to an Act.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23767"},
        {"code": "subsumedBy", "valueCode": "_AffiliationRoleType"}
      ]
    },
    {
      "code": "_CoverageSponsorRoleType",
      "display": "CoverageSponsorRoleType",
      "definition":
          "**Description:**Codes that indicate a specific type of sponsor. Used when the sponsor's role is only either as a fully insured sponsor or only as a self-insured sponsor. NOTE: Where a sponsor may be either, use the SponsorParticipationFunction.code (fully insured or self insured) to indicate the type of responsibility. (CO6-0057)",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "SPNSR"
          }
        },
        {"code": "internalId", "valueCode": "22170"},
        {"code": "subsumedBy", "valueCode": "_AffiliationRoleType"}
      ]
    },
    {
      "code": "_PayorRoleType",
      "display": "PayorRoleType",
      "definition":
          "**Description:**PayorRoleType for a particular type of policy or program benefit package or plan where more detail about the coverage administration role of the Payor is required. The functions performed by a Payor qualified by a PayorRoleType may be specified by the PayorParticpationFunction value set.\r\n\r\n**Examples:**A Payor that is a TPA may administer a managed care plan without underwriting the risk.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22091"},
        {"code": "subsumedBy", "valueCode": "_AffiliationRoleType"}
      ]
    },
    {
      "code": "RESPRSN",
      "display": "responsible party",
      "definition":
          "The role played by a party who has legal responsibility for another party.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22030"},
        {"code": "subsumedBy", "valueCode": "_AffiliationRoleType"}
      ]
    },
    {
      "code": "AMENDER",
      "display": "amender",
      "definition":
          "An entity which corrected, edited, or amended pre-existing information.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23768"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "CLASSIFIER",
      "display": "classifier",
      "definition":
          "An individual authorized to assign an original classification to information, including compilations of unclassified information, based on a determination that the information requires protection against unauthorized disclosure. The individual marks the information with immutable, computable, and human readable security labels in accordance with applicable security labeling policies. The labeling policies provide instructions on whether and if so how the security labels may be later reclassified \\[i.e., upgraded, downgraded, used in derivative classification, or declassified\\] in a manner that preserves the overridden original classification binding and provenance.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23769"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "CONSENTER",
      "display": "consenter",
      "definition":
          "An entity or an entity's delegatee who is the grantee in an agreement such as a consent for services, advanced directive, or a privacy consent directive in accordance with jurisdictional, organizational, or patient policy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23770"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "CONSWIT",
      "display": "consent witness",
      "definition":
          "An entity which has witnessed and attests to observing another entity being counseled about an agreement such as a consent for services, advanced directive, or a privacy consent directive.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23771"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "COPART",
      "display": "co-participant",
      "definition":
          "An entity which participates in the generation of and attest to veracity of content, but is not an author or coauthor. For example a surgeon who is required by institutional, regulatory, or legal rules to sign an operative report, but who was not involved in the authorship of that report.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23772"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "DECLASSIFIER",
      "display": "declassifier",
      "definition":
          "An individual which is authorized to declassify information based on a determination that the information no longer requires protection against unauthorized disclosure. The individual marks the information being declassified using computable and human readable security labels indicating that this is copy of previously classified information is unclassified in accordance with applicable security labeling policies. The labeling policies provide instructions on whether and if so how the security labels may be later reclassified \\[i.e., upgraded or used in derivative classification\\] in a manner that preserves the overridden original classification binding and provenance.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23773"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "DELEGATEE",
      "display": "delegatee",
      "definition":
          "A party to whom some right or authority is granted by a delegator.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23774"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "DELEGATOR",
      "display": "delegator",
      "definition":
          "A party that grants all or some portion its right or authority to another party.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23775"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "DOWNGRDER",
      "display": "downgrader",
      "definition":
          "An individual authorized to lower the classification level of labeled content and provide rationale for doing so as directed by a classification guide.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23777"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "DRIVCLASSIFIER",
      "display": "derivative classifier",
      "definition":
          "An individual who is only authorized to classify reproduced, extracted, or summarized classified information, or compile classified and unclassified information by applying classification markings derived from source material or as directed by a classification guide.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23776"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "GRANTEE",
      "display": "grantee",
      "definition":
          "An entity which accepts certain rights or authority from a grantor.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23779"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "GRANTOR",
      "display": "grantor",
      "definition":
          "An entity which agrees to confer certain rights or authority to a grantee.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23778"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "INTPRTER",
      "display": "interpreter",
      "definition":
          "An entity which converts spoken or written language into the language of key participants in an event such as when a provider is obtaining a patient's consent to treatment or permission to disclose information.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23780"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "REVIEWER",
      "display": "reviewer",
      "definition":
          "An entity authorized to filter information according to approved criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23781"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "UPGRDER",
      "display": "upgrader",
      "definition":
          "An individual authorized to raise the classification level of labeled content and provide rationale for doing so as directed by a classification guide.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "24124"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "VALIDATOR",
      "display": "validator",
      "definition":
          "An entity authorized to validate information for inclusion in a record.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23782"},
        {"code": "subsumedBy", "valueCode": "_AgentRoleType"}
      ]
    },
    {
      "code": "ASSIST",
      "display": "Assistive non-person living subject",
      "definition":
          "**Description:**Dogs trained to assist the ill or physically challenged.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22156"},
        {
          "code": "subsumedBy",
          "valueCode": "_AssignedNonPersonLivingSubjectRoleType"
        }
      ]
    },
    {
      "code": "BIOTH",
      "display": "Biotherapeutic non-person living subject",
      "definition":
          "**Description:**Animals, including fish and insects, and microorganisms which may participate as assigned entities in biotherapies.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22157"},
        {
          "code": "subsumedBy",
          "valueCode": "_AssignedNonPersonLivingSubjectRoleType"
        }
      ]
    },
    {
      "code": "CCO",
      "display": "Clinical Companion",
      "definition":
          "**Description:**Companion animals, such as dogs, cats, and rabbits, which may be provided to patients to improve general mood, decrease depression and loneliness, and distract from stress-inducing concerns to improve quality of life.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22160"},
        {
          "code": "subsumedBy",
          "valueCode": "_AssignedNonPersonLivingSubjectRoleType"
        }
      ]
    },
    {
      "code": "SEE",
      "display": "Seeing",
      "definition":
          "**Description:**Dogs trained to assist persons who are seeing impaired or blind.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22161"},
        {
          "code": "subsumedBy",
          "valueCode": "_AssignedNonPersonLivingSubjectRoleType"
        }
      ]
    },
    {
      "code": "SNIFF",
      "display": "Sniffing",
      "definition":
          "**Description:**Dogs trained or having the ability to detect imminent seizures or cancers in humans, probably as a result of volatile chemical (odors) given off by the malignancy of the host.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22162"},
        {
          "code": "subsumedBy",
          "valueCode": "_AssignedNonPersonLivingSubjectRoleType"
        }
      ]
    },
    {
      "code": "_AssignedNonPersonLivingSubjectRoleType",
      "display": "AssignedNonPersonLivingSubjectRoleType",
      "definition":
          "**Description:**A role type that is used to further qualify a non-person subject playing a role where the role class attribute is set to RoleClass AssignedEntity",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "ASSIGNED"
          }
        },
        {"code": "internalId", "valueCode": "22155"},
        {"code": "subsumedBy", "valueCode": "_AssignedRoleType"}
      ]
    },
    {
      "code": "_PractitionerCertifiedEntityType",
      "display": "PractitionerCertifiedEntityType",
      "definition": "Defines types of certifications for practitioners",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "21132"},
        {"code": "subsumedBy", "valueCode": "_CertifiedEntityType"}
      ]
    },
    {
      "code": "CAS",
      "display": "asylum seeker",
      "definition":
          "A person who has fled his or her home country to find a safe place elsewhere.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23066"},
        {"code": "subsumedBy", "valueCode": "_CitizenRoleType"}
      ]
    },
    {
      "code": "CN",
      "display": "national",
      "definition":
          "A person who is legally recognized as a member of a nation or country, with associated rights and obligations.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23064"},
        {"code": "subsumedBy", "valueCode": "_CitizenRoleType"}
      ]
    },
    {
      "code": "CNRP",
      "display": "non-country member without residence permit",
      "definition":
          "A foreigner who is present in a country (which is foreign to him/her) unlawfully or without the country's authorization (may be called an illegal alien).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23070"},
        {"code": "subsumedBy", "valueCode": "_CitizenRoleType"}
      ]
    },
    {
      "code": "CPCA",
      "display": "permit card applicant",
      "definition":
          "A non-country member admitted to the territory of a nation or country as a non-resident for an explicit purpose.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23065"},
        {"code": "subsumedBy", "valueCode": "_CitizenRoleType"}
      ]
    },
    {
      "code": "CRP",
      "display": "non-country member with residence permit",
      "definition":
          "A foreigner who is a resident of the country but does not have citizenship.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23068"},
        {"code": "subsumedBy", "valueCode": "_CitizenRoleType"}
      ]
    },
    {
      "code": "CRIMEVIC",
      "display": "crime victim",
      "definition":
          "**Description:** A person playing the role of program eligible under a program based on allegations of being the victim of a crime.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is \"program eligible\" and the person's status as a crime victim meets jurisdictional or program criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21964"},
        {"code": "subsumedBy", "valueCode": "_ClaimantCoveredPartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_ProgramEligiblePartyRoleType"}
      ]
    },
    {
      "code": "INJWKR",
      "display": "injured worker",
      "definition":
          "**Description:** A person playing the role of program eligible under a workers compensation program based on the filing of work-related injury claim.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is used when the CoveredPartyRole class code is either \"program eligible\", a \"named insured\", and \"individual insured\", or \"dependent\", and the person's status as differently abled or \"handicapped\" meets jurisdictional, policy, or program criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21966"},
        {"code": "subsumedBy", "valueCode": "_ClaimantCoveredPartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_ProgramEligiblePartyRoleType"}
      ]
    },
    {
      "code": "_AdministrativeContactRoleType",
      "display": "AdministrativeContactRoleType",
      "definition":
          "A contact role used for business and/or administrative purposes.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "CON"
          }
        },
        {"code": "internalId", "valueCode": "21119"},
        {"code": "subsumedBy", "valueCode": "_ContactRoleType"}
      ]
    },
    {
      "code": "ECON",
      "display": "emergency contact",
      "definition": "A contact designated for contact in emergent situations.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "12209"},
        {"code": "subsumedBy", "valueCode": "_ContactRoleType"}
      ]
    },
    {
      "code": "NOK",
      "display": "next of kin",
      "definition":
          "Played by an individual who is designated as the next of kin for another individual which scopes the role.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "12208"},
        {"code": "subsumedBy", "valueCode": "_ContactRoleType"}
      ]
    },
    {
      "code": "FAMDEP",
      "display": "family dependent",
      "definition":
          "The player of the role is dependent of the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21319"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "HANDIC",
      "display": "handicapped dependent",
      "definition":
          "Covered party is a dependent of the policy holder with a physical or mental disability causing a disadvantage that makes independent achievement unusually difficult.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18880"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "INJ",
      "display": "injured plaintiff",
      "definition":
          "Covered party is an injured party with a legal claim for compensation against a policy holder under an insurance policy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18881"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "SELF",
      "display": "self",
      "definition":
          "Covered party is the policy holder. Also known as the subscriber.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18878"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "SPON",
      "display": "sponsored dependent",
      "definition":
          "Covered party is an individual that the policy holder has assumed responsibility for, such as foster child or legal ward.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18882"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "STUD",
      "display": "student",
      "definition":
          "Covered party to an insurance policy has coverage through full-time or part-time attendance at a recognized educational institution as defined by a particular insurance policy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21318"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "ADOPT",
      "display": "adopted child",
      "definition":
          "A child taken into one's family through legal means and raised as one's own child.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18891"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "GCHILD",
      "display": "grandchild",
      "definition": "A child of one's son or daughter.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18884"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "GPARNT",
      "display": "grandparent",
      "definition": "parent of a parent of the subject.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18887"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "NAT",
      "display": "natural child",
      "definition": "A child as determined by birth.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18889"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "NIENE",
      "display": "niece/nephew",
      "definition":
          "A child of one's brother or sister or of the brother or sister of one's spouse.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18885"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "PARNT",
      "display": "parent",
      "definition":
          "One that begets or brings forth offspring or a person who brings up and cares for for another (Webster's Collegiate Dictionary)",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18886"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "SPSE",
      "display": "spouse",
      "definition": "A marriage partner; a husband or wife.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18879"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "STEP",
      "display": "step child",
      "definition":
          "A child receiving parental care and nurture from a person who is related to them through marriage to their parent.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "internalId", "valueCode": "18890"},
        {"code": "subsumedBy", "valueCode": "_CoverageRoleType"}
      ]
    },
    {
      "code": "FULLINS",
      "display": "Fully insured coverage sponsor",
      "definition":
          "**Description:**An employer or organization that contracts with an underwriter to assumes the financial risk and administrative responsibility for coverage of health services for covered parties.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22171"},
        {"code": "subsumedBy", "valueCode": "_CoverageSponsorRoleType"}
      ]
    },
    {
      "code": "SELFINS",
      "display": "Self insured coverage sponsor",
      "definition":
          "**Description:**An employer or organization that assumes the financial risk and administrative responsibility for coverage of health services for covered parties.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22172"},
        {"code": "subsumedBy", "valueCode": "_CoverageSponsorRoleType"}
      ]
    },
    {
      "code": "_ClaimantCoveredPartyRoleType",
      "display": "ClaimantCoveredPartyRoleType",
      "definition":
          "**Description**A role recognized through the eligibility of a party play a claimant for benefits covered or provided under an insurance policy.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "COVPTY"
          }
        },
        {"code": "internalId", "valueCode": "21962"},
        {"code": "subsumedBy", "valueCode": "_CoveredPartyRoleType"}
      ]
    },
    {
      "code": "_DependentCoveredPartyRoleType",
      "display": "DependentCoveredPartyRoleType",
      "definition":
          "**Description:** A role recognized through the eligibility of a party to play a dependent for benefits covered or provided under a health insurance policy because of an association with the subscriber that is recognized by the policy underwriter.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "COVPTY"
          }
        },
        {"code": "internalId", "valueCode": "21975"},
        {"code": "subsumedBy", "valueCode": "_CoveredPartyRoleType"}
      ]
    },
    {
      "code": "_IndividualInsuredPartyRoleType",
      "display": "IndividualInsuredPartyRoleType",
      "definition":
          "A role recognized through the eligibility of a party to play an individual insured for benefits covered or provided under an insurance policy where the party is also the policy holder.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "COVPTY"
          }
        },
        {"code": "internalId", "valueCode": "21973"},
        {"code": "subsumedBy", "valueCode": "_CoveredPartyRoleType"}
      ]
    },
    {
      "code": "_ProgramEligiblePartyRoleType",
      "display": "ProgramEligiblePartyRoleType",
      "definition":
          "**Description:**A role recognized through the eligibility of a party to play a program eligible for benefits covered or provided under a program.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21963"},
        {"code": "subsumedBy", "valueCode": "_CoveredPartyRoleType"}
      ]
    },
    {
      "code": "_SubscriberCoveredPartyRoleType",
      "display": "SubscriberCoveredPartyRoleType",
      "definition":
          "**Description:** A role recognized through the eligibility of a party to play a subscriber for benefits covered or provided under a health insurance policy.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "COVPTY"
          }
        },
        {"code": "internalId", "valueCode": "21974"},
        {"code": "subsumedBy", "valueCode": "_CoveredPartyRoleType"}
      ]
    },
    {
      "code": "DX",
      "display": "Diagnostics or therapeutics unit",
      "definition":
          "A practice setting where diagnostic procedures or therapeutic interventions are performed",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10902"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "HOSP",
      "display": "Hospital",
      "definition":
          "An acute care institution that provides medical, surgical, or psychiatric care and treatment for the sick or the injured.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10602"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "HU",
      "display": "Hospital unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10596"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "NCCF",
      "display": "Nursing or custodial care facility",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10605"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "OF",
      "display": "Outpatient facility",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10589"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "RTF",
      "display": "Residential treatment facility",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10607"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "DADDR",
      "display": "Delivery Address",
      "definition":
          "Location address where medical supplies were transported to for use.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18099"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedNonClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "MOBL",
      "display": "Mobile Unit",
      "definition": "Location (mobile) where healthcare service was delivered.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18100"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedNonClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "PHARM",
      "display": "Pharmacy",
      "definition":
          "Location where healthcare service was delivered, identified as a pharmacy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18102"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedNonClinicalLocationRoleType"
        }
      ]
    },
    {
      "code": "_DedicatedClinicalLocationRoleType",
      "display": "DedicatedClinicalLocationRoleType",
      "definition":
          "A role of a place that further classifies the clinical setting (e.g., cardiology clinic, primary care clinic, rehabilitation hospital, skilled nursing facility) in which care is delivered during an encounter.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21124"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "_DedicatedNonClinicalLocationRoleType",
      "display": "DedicatedNonClinicalLocationRoleType",
      "definition":
          "A role of a place that further classifies a setting that is intended to house the provision of non-clinical services.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21125"},
        {
          "code": "subsumedBy",
          "valueCode": "_DedicatedServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "COCBEN",
      "display": "continuity of coverage beneficiary",
      "definition":
          "**Description:** A person playing the role of an individual insured with continuity of coverage under a policy which is being terminated based on loss of original status that was the basis for coverage. Criteria for qualifying for continuity of coverage may be set by law.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is either \"program eligible\" or \"subscriber\" and the person's status as a continuity of coverage beneficiary meets jurisdictional or policy criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21976"},
        {"code": "subsumedBy", "valueCode": "_DependentCoveredPartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_IndividualInsuredPartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_SubscriberCoveredPartyRoleType"}
      ]
    },
    {
      "code": "DIFFABL",
      "display": "differently abled",
      "definition":
          "**Description:** A person playing the role of program eligible under a program based on meeting criteria for health or functional limitation set by law or by the program.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is either \"program eligible\", \"named insured\", \"individual insured\", or \"dependent\", and the person's status as differently abled meets jurisdictional, policy, or program criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21965"},
        {"code": "subsumedBy", "valueCode": "_DependentCoveredPartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_ProgramEligiblePartyRoleType"}
      ]
    },
    {
      "code": "WARD",
      "display": "ward",
      "definition":
          "**Description:** A person, who is a minor or is deemed incompetent, who plays the role of a program eligible where eligibility for coverage is based on meeting program eligibility criteria for status as a ward of a court or jurisdiction.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is a \"claimant\", \"program eligible\", a \"named insured\", an \"individual Insured\" or a \"dependent\", and the person's status as a ward meets program or policy criteria. In the case of a ward covered under a program providing financial or health benefits, a governmental agency may take temporary custody of a minor or incompetent for his/her protection and care, e.g., if the ward is suffering from neglect or abuse, or has been in trouble with the law.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21972"},
        {"code": "subsumedBy", "valueCode": "_DependentCoveredPartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_ProgramEligiblePartyRoleType"}
      ]
    },
    {
      "code": "_LocationIdentifiedEntityRoleCode",
      "display": "LocationIdentifiedEntityRoleCode",
      "definition":
          "**Description:**Describes types of identifiers other than the primary location registry identifier for a service delivery location. Identifiers may be assigned by a local service delivery organization, a formal body capable of accrediting the location for the capability to provide specific services or the identifier may be assigned at a jurisdictional level.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23294"},
        {"code": "subsumedBy", "valueCode": "_IdentifiedEntityType"}
      ]
    },
    {
      "code": "ACC",
      "display": "accident site",
      "definition":
          "Location of an accident where healthcare service was delivered, such as a roadside.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "20844"},
        {
          "code": "subsumedBy",
          "valueCode": "_IncidentalServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "COMM",
      "display": "Community Location",
      "definition": "Community location where healthcare is delivered.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18098"},
        {
          "code": "subsumedBy",
          "valueCode": "_IncidentalServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "PTRES",
      "display": "Patient's Residence",
      "definition":
          "location where healthcare was delivered which is the residence of the Patient.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18101"},
        {
          "code": "subsumedBy",
          "valueCode": "_IncidentalServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "SCHOOL",
      "display": "school",
      "definition":
          "Location where healthcare service was delivered, identified as a school or educational facility.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "20846"},
        {
          "code": "subsumedBy",
          "valueCode": "_IncidentalServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "UPC",
      "display": "underage protection center",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include: social emergency services required for a young person as required under any jurisdictional youth laws, child placement, and family mediation in the defined geographical area the SDL is responsible for. It may provide expertise in a judiciary setting on child custody, adoption and biological history research.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23234"},
        {
          "code": "subsumedBy",
          "valueCode": "_IncidentalServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "WORK",
      "display": "work site",
      "definition":
          "Location where healthcare service was delivered, identified as a work place.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "20845"},
        {
          "code": "subsumedBy",
          "valueCode": "_IncidentalServiceDeliveryLocationRoleType"
        }
      ]
    },
    {
      "code": "RETIREE",
      "display": "retiree",
      "definition":
          "**Description:** A person playing the role of an individual insured under a policy based on meeting criteria for the employment status of retired set by law or the policy.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is either \"program eligible\" or \"subscriber\" and the person's status as a retiree meets jurisdictional or policy criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21977"},
        {"code": "subsumedBy", "valueCode": "_IndividualInsuredPartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_SubscriberCoveredPartyRoleType"}
      ]
    },
    {
      "code": "BF",
      "display": "Beef",
      "definition": "Cattle used for meat production",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11506"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "BL",
      "display": "Broiler",
      "definition": "Chickens raised for meat",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11508"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "BR",
      "display": "Breeder",
      "definition": "Breeding/genetic stock",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11507"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "CO",
      "display": "Companion",
      "definition": "Companion animals",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11509"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "DA",
      "display": "Dairy",
      "definition": "Milk production",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11510"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "DR",
      "display": "Draft",
      "definition": "Draft animals",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11511"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "DU",
      "display": "Dual",
      "definition": "Dual purpose. Defined purposes based on species and breed",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11512"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "FI",
      "display": "Fiber",
      "definition": "Animals raised for their fur, hair or skins",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11513"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "LY",
      "display": "Layer",
      "definition": "Chickens raised for egg production",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11514"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "MT",
      "display": "Meat",
      "definition": "Animals raised for meat production",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11515"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "MU",
      "display": "Multiplier",
      "definition": "Poultry flocks used for chick/poult production",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11516"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "PL",
      "display": "Pleasure",
      "definition": "Animals rasied for recreation",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11517"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "RC",
      "display": "Racing",
      "definition": "Animals raised for racing perfomance",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11518"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "SH",
      "display": "Show",
      "definition": "Animals raised for shows",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11519"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "VL",
      "display": "Veal",
      "definition":
          "Cattle raised for veal meat production. Implicit is the husbandry method.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11520"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "WL",
      "display": "Wool",
      "definition": "Sheep, goats and other mammals raised for their fiber",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11521"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "WO",
      "display": "Working",
      "definition": "Animals used to perform work",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11522"},
        {"code": "subsumedBy", "valueCode": "_LivingSubjectProductionClass"}
      ]
    },
    {
      "code": "ACHFID",
      "display": "accreditation location identifier",
      "definition":
          "**Description:**Identifier assigned to a location by the organization responsible for accrediting the location.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23297"},
        {"code": "subsumedBy", "valueCode": "_LocationIdentifiedEntityRoleCode"}
      ]
    },
    {
      "code": "JURID",
      "display": "jurisdiction location identifier",
      "definition":
          "**Description:**Identifier assigned to a location by a jurisdiction.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23295"},
        {"code": "subsumedBy", "valueCode": "_LocationIdentifiedEntityRoleCode"}
      ]
    },
    {
      "code": "LOCHFID",
      "display": "local location identifier",
      "definition":
          "**Description:**Identifier assigned to a location by a local party (which could be the facility itself or organization overseeing a group of facilities).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23296"},
        {"code": "subsumedBy", "valueCode": "_LocationIdentifiedEntityRoleCode"}
      ]
    },
    {
      "code": "DC",
      "display": "therapeutic class",
      "definition":
          "**Description:**A categorization of medicinal products by their therapeutic properties and/or main therapeutic use.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23298"},
        {"code": "subsumedBy", "valueCode": "_MedicationGeneralizationRoleType"}
      ]
    },
    {
      "code": "GD",
      "display": "generic drug",
      "definition":
          "Relates a manufactured drug product to the non-proprietary (generic) representation of its ingredients independent of strength, and form.\r\n\r\nThe scoping entity identifies a unique combination of medicine ingredients; sometimes referred to as \"ingredient set\".",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21810"},
        {"code": "subsumedBy", "valueCode": "_MedicationGeneralizationRoleType"}
      ]
    },
    {
      "code": "MGDSF",
      "display": "manufactured drug strength form",
      "definition":
          "Relates a manufactured drug product to the non-proprietary (generic) representation of its ingredients with their strength in a specific dose form. The scoping entity identifies a unique combination of medicine ingredients with their strength in a single dose form.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21813"},
        {"code": "subsumedBy", "valueCode": "_MedicationGeneralizationRoleType"}
      ]
    },
    {
      "code": "TRB",
      "display": "Tribal Member",
      "definition": "A person who is a member of a tribe.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "12207"},
        {"code": "subsumedBy", "valueCode": "_MemberRoleType"}
      ]
    },
    {
      "code": "ENROLBKR",
      "display": "Enrollment Broker",
      "definition":
          "**Description:**A payor that is responsible for functions related to the enrollment of covered parties.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22093"},
        {"code": "subsumedBy", "valueCode": "_PayorRoleType"}
      ]
    },
    {
      "code": "TPA",
      "display": "Third party administrator",
      "definition":
          "**Description:**Third party administrator (TPA) is a payor organization that processes health care claims without carrying insurance risk. Third party administrators are prominent players in the managed care industry and have the expertise and capability to administer all or a portion of the claims process. They are normally contracted by a health insurer or self-insuring companies to administer services, including claims administration, premium collection, enrollment and other administrative activities.\r\n\r\nSelf-insured employers often contract with third party administrator to handle their insurance functions. Insurance companies oftentimes outsource the claims, utilization review or membership functions to a TPA. Sometimes TPAs only manage provider networks, only claims or only utilization review.\r\n\r\nWhile some third-party administrators may operate as units of insurance companies, they are often independent. However, hospitals or provider organizations desiring to set up their own health plans will often outsource certain responsibilities to TPAs. TPAs may perform one or several payor functions, specified by the PayorParticipationFunction value set, such as provider management, enrollment, utilization management, and fee for service claims adjudication management.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22092"},
        {"code": "subsumedBy", "valueCode": "_PayorRoleType"}
      ]
    },
    {
      "code": "UMO",
      "display": "Utilization management organization",
      "definition":
          "**Description:**A payor that is responsible for review and case management of health services covered under a policy or program.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22094"},
        {"code": "subsumedBy", "valueCode": "_PayorRoleType"}
      ]
    },
    {
      "code": "FAMMEMB",
      "display": "family member",
      "definition":
          "A relationship between two people characterizing their \"familial\" relationship",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "17926"},
        {"code": "subsumedBy", "valueCode": "_PersonalRelationshipRoleType"}
      ]
    },
    {
      "code": "FRND",
      "display": "unrelated friend",
      "definition":
          "The player of the role is a person who is known, liked, and trusted by the scoping person.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19737"},
        {"code": "subsumedBy", "valueCode": "_PersonalRelationshipRoleType"}
      ]
    },
    {
      "code": "NBOR",
      "display": "neighbor",
      "definition":
          "The player of the role lives near or next to the scoping person.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19738"},
        {"code": "subsumedBy", "valueCode": "_PersonalRelationshipRoleType"}
      ]
    },
    {
      "code": "ONESELF",
      "display": "self",
      "definition": "The relationship that a person has with his or her self.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23542"},
        {"code": "subsumedBy", "valueCode": "_PersonalRelationshipRoleType"}
      ]
    },
    {
      "code": "ROOM",
      "display": "Roommate",
      "definition": "One who shares living quarters with the subject.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16364"},
        {"code": "subsumedBy", "valueCode": "_PersonalRelationshipRoleType"}
      ]
    },
    {
      "code": "_CoverageRoleType",
      "display": "CoverageRoleType",
      "definition":
          "Role recognized through the issuance of insurance coverage to an identified covered party who has this relationship with the policy holder such as the policy holder themselves (self), spouse, child, etc",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21123"},
        {"code": "subsumedBy", "valueCode": "_PolicyOrProgramCoverageRoleType"}
      ]
    },
    {
      "code": "_CoveredPartyRoleType",
      "display": "covered party role type",
      "definition":
          "A role recognized through the eligibility of an identified living subject for benefits covered under an insurance policy or a program. Eligibility as a covered party may be conditioned on a relationship with (1) the policy holder such as the policy holder who is covered as an individual under a poliy or as a party sponsored for coverage by the policy holder.\r\n\r\n**Example:**An employee as a subscriber; or (2) on being scoped another covered party such as the subscriber, as in the case of a dependent.\r\n\r\n**Discussion:** The Abstract Value Set \"CoverageRoleType\", which was developed for use in the Canadian realm \"pre-coordinate\" coverage roles with other roles that a covered party must play in order to be eligible for coverage, e.g., \"handicapped dependent\". Other codes in the Abstract Value Set CoveredPartyRoleType domain can be \"post-coordinated\" with the EligiblePartyRoleType codes to denote comparable concepts. Decoupling the concepts is intended to support a wider range of concepts and semantic comparability of coded concepts.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "COVPTY"
          }
        },
        {"code": "internalId", "valueCode": "21948"},
        {"code": "subsumedBy", "valueCode": "_PolicyOrProgramCoverageRoleType"}
      ]
    },
    {
      "code": "INDIG",
      "display": "member of an indigenous people",
      "definition":
          "**Description:** A person playing the role of program eligible under a program based on aboriginal ancestry or as a member of an aboriginal community.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is \"program eligible\" and the person's status as a member of an indigenous people meets jurisdictional or program criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21967"},
        {"code": "subsumedBy", "valueCode": "_ProgramEligiblePartyRoleType"}
      ]
    },
    {
      "code": "MIL",
      "display": "military",
      "definition":
          "**Definition:** A person playing the role of program eligible under a program based on military status.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is either \"program eligible\" or \"subscriber\" and the person's status as a member of the military meets jurisdictional or program criteria",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21968"},
        {"code": "subsumedBy", "valueCode": "_ProgramEligiblePartyRoleType"},
        {"code": "subsumedBy", "valueCode": "_SubscriberCoveredPartyRoleType"}
      ]
    },
    {
      "code": "ERL",
      "display": "enrollment",
      "definition":
          "**Definition:**The specific role being played by a research subject participating in the active treatment or primary data collection portion of a research study.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21621"},
        {"code": "subsumedBy", "valueCode": "_ResearchSubjectRoleBasis"}
      ]
    },
    {
      "code": "SCN",
      "display": "screening",
      "definition":
          "**Definition:**The specific role being played by a research subject participating in the pre-enrollment evaluation portion of a research study.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21620"},
        {"code": "subsumedBy", "valueCode": "_ResearchSubjectRoleBasis"}
      ]
    },
    {
      "code": "_DedicatedServiceDeliveryLocationRoleType",
      "display": "DedicatedServiceDeliveryLocationRoleType",
      "definition":
          "A role of a place that further classifies a setting that is intended to house the provision of services.",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "DSDLOC"
          }
        },
        {"code": "internalId", "valueCode": "21126"},
        {"code": "subsumedBy", "valueCode": "_ServiceDeliveryLocationRoleType"}
      ]
    },
    {
      "code": "_IncidentalServiceDeliveryLocationRoleType",
      "display": "IncidentalServiceDeliveryLocationRoleType",
      "property": [
        {"code": "notSelectable", "valueBoolean": true},
        {"code": "status", "valueCode": "active"},
        {
          "code": "rim-ClassifiesClassCode",
          "valueCoding": {
            "system": "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code": "ISDLOC"
          }
        },
        {"code": "internalId", "valueCode": "21127"},
        {"code": "subsumedBy", "valueCode": "_ServiceDeliveryLocationRoleType"}
      ]
    },
    {
      "code": "C",
      "display": "Calibrator",
      "definition":
          "A specimen used for initial calibration settings of an instrument",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16517"},
        {"code": "subsumedBy", "valueCode": "_SpecimenRoleType"}
      ]
    },
    {
      "code": "G",
      "display": "Group",
      "definition":
          "A set of patient samples in which the individuals of the group may or may not be identified.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16519"},
        {"code": "subsumedBy", "valueCode": "_SpecimenRoleType"}
      ]
    },
    {
      "code": "L",
      "display": "Pool",
      "definition":
          "Aliquots of individual specimens combined to form a single specimen representing all of the included individuals.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16520"},
        {"code": "subsumedBy", "valueCode": "_SpecimenRoleType"}
      ]
    },
    {
      "code": "P",
      "display": "Patient",
      "definition": "A specimen that has been collected from a patient.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16516"},
        {"code": "subsumedBy", "valueCode": "_SpecimenRoleType"}
      ]
    },
    {
      "code": "Q",
      "display": "Quality Control",
      "definition":
          "A specimen specifically used to verify the sensitivity, specificity, accuracy or other perfomance parameter of a diagnostic test.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16521"},
        {"code": "subsumedBy", "valueCode": "_SpecimenRoleType"}
      ]
    },
    {
      "code": "R",
      "display": "Replicate",
      "definition":
          "A portion of an original patent sample that is tested at the same time as the original sample",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16518"},
        {"code": "subsumedBy", "valueCode": "_SpecimenRoleType"}
      ]
    },
    {
      "code": "ADOPTF",
      "display": "adoptive father",
      "definition":
          "The player of the role (father) is a male who has taken the scoper (child) into their family through legal means and raises them as his own child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23603"},
        {"code": "subsumedBy", "valueCode": "ADOPTP"},
        {"code": "subsumedBy", "valueCode": "FTH"}
      ]
    },
    {
      "code": "ADOPTM",
      "display": "adoptive mother",
      "definition":
          "The player of the role (father) is a female who has taken the scoper (child) into their family through legal means and raises them as her own child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23604"},
        {"code": "subsumedBy", "valueCode": "ADOPTP"},
        {"code": "subsumedBy", "valueCode": "MTH"}
      ]
    },
    {
      "code": "MAUNT",
      "display": "maternal aunt",
      "definition":
          "**Description:**The player of the role is a biological sister of the scoping person's biological mother.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22017"},
        {"code": "subsumedBy", "valueCode": "AUNT"}
      ]
    },
    {
      "code": "PAUNT",
      "display": "paternal aunt",
      "definition":
          "**Description:**The player of the role is a biological sister of the scoping person's biological father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22018"},
        {"code": "subsumedBy", "valueCode": "AUNT"}
      ]
    },
    {
      "code": "ANTIBIOT",
      "display": "Antibiotic",
      "definition":
          "**Description:**Non-person living subject used as antibiotic.\r\n\r\n**Examples:**Bacteriophage, is a virus that infects bacteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22159"},
        {"code": "subsumedBy", "valueCode": "BIOTH"}
      ]
    },
    {
      "code": "DEBR",
      "display": "Debridement",
      "definition":
          "**Description:**Maggots raised for biodebridement.\r\n\r\n**Discussion:** Maggot Debridement Therapy is the medical use of live maggots for cleaning non-healing wounds.\r\n\r\n**Examples:**Removal of burnt skin.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22158"},
        {"code": "subsumedBy", "valueCode": "BIOTH"}
      ]
    },
    {
      "code": "HBRO",
      "display": "half-brother",
      "definition":
          "The player of the role is a male related to the scoping entity by sharing only one biological parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19777"},
        {"code": "subsumedBy", "valueCode": "BRO"},
        {"code": "subsumedBy", "valueCode": "HSIB"}
      ]
    },
    {
      "code": "NBRO",
      "display": "natural brother",
      "definition":
          "The player of the role is a male having the same biological parents as the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19774"},
        {"code": "subsumedBy", "valueCode": "BRO"},
        {"code": "subsumedBy", "valueCode": "NSIB"}
      ]
    },
    {
      "code": "STPBRO",
      "display": "stepbrother",
      "definition":
          "The player of the role is a son of the scoping person's stepparent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19780"},
        {"code": "subsumedBy", "valueCode": "BRO"},
        {"code": "subsumedBy", "valueCode": "STPSIB"}
      ]
    },
    {
      "code": "PEDCARD",
      "display": "Pediatric cardiology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10961"},
        {"code": "subsumedBy", "valueCode": "CARD"},
        {"code": "subsumedBy", "valueCode": "PEDC"}
      ]
    },
    {
      "code": "CASM",
      "display": "single minor asylum seeker",
      "definition":
          "A person who is someone of below legal age who has fled his or her home country, *without his or her parents*, to find a safe place elsewhere at time of categorization.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23067"},
        {"code": "subsumedBy", "valueCode": "CAS"}
      ]
    },
    {
      "code": "CHLDADOPT",
      "display": "adopted child",
      "definition":
          "The player of the role is a child taken into a family through legal means and raised by the scoping person (parent) as his or her own child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11564"},
        {"code": "subsumedBy", "valueCode": "CHILD"}
      ]
    },
    {
      "code": "CHLDFOST",
      "display": "foster child",
      "definition":
          "The player of the role is a child receiving parental care and nurture from the scoping person (parent) but not related to him or her through legal or blood ties.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11565"},
        {"code": "subsumedBy", "valueCode": "CHILD"}
      ]
    },
    {
      "code": "DAUC",
      "display": "daughter",
      "definition":
          "**Description:** The player of the role is a female child (of any type) of scoping entity (parent)",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22915"},
        {"code": "subsumedBy", "valueCode": "CHILD"}
      ]
    },
    {
      "code": "NCHILD",
      "display": "natural child",
      "definition":
          "The player of the role is an offspring of the scoping entity as determined by birth.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "17930"},
        {"code": "subsumedBy", "valueCode": "CHILD"}
      ]
    },
    {
      "code": "SONC",
      "display": "son",
      "definition":
          "**Description:** The player of the role is a male child (of any type) of scoping entity (parent)",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22914"},
        {"code": "subsumedBy", "valueCode": "CHILD"}
      ]
    },
    {
      "code": "STPCHLD",
      "display": "step child",
      "definition":
          "The player of the role is a child of the scoping person's spouse by a previous union.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11562"},
        {"code": "subsumedBy", "valueCode": "CHILD"}
      ]
    },
    {
      "code": "DAUADOPT",
      "display": "adopted daughter",
      "definition":
          "The player of the role is a female child taken into a family through legal means and raised by the scoping person (parent) as his or her own child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19756"},
        {"code": "subsumedBy", "valueCode": "CHLDADOPT"},
        {"code": "subsumedBy", "valueCode": "DAUC"}
      ]
    },
    {
      "code": "SONADOPT",
      "display": "adopted son",
      "definition":
          "The player of the role is a male child taken into a family through legal means and raised by the scoping person (parent) as his or her own child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19757"},
        {"code": "subsumedBy", "valueCode": "CHLDADOPT"},
        {"code": "subsumedBy", "valueCode": "SONC"}
      ]
    },
    {
      "code": "DAUFOST",
      "display": "foster daughter",
      "definition":
          "The player of the role is a female child receiving parental care and nurture from the scoping person (parent) but not related to him or her through legal or blood ties.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19758"},
        {"code": "subsumedBy", "valueCode": "CHLDFOST"},
        {"code": "subsumedBy", "valueCode": "DAUC"}
      ]
    },
    {
      "code": "SONFOST",
      "display": "foster son",
      "definition":
          "The player of the role is a male child receiving parental care and nurture from the scoping person (parent) but not related to him or her through legal or blood ties.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19759"},
        {"code": "subsumedBy", "valueCode": "CHLDFOST"},
        {"code": "subsumedBy", "valueCode": "SONC"}
      ]
    },
    {
      "code": "DAUINLAW",
      "display": "daughter in-law",
      "definition":
          "The player of the role is the wife of scoping person's son.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19760"},
        {"code": "subsumedBy", "valueCode": "CHLDINLAW"}
      ]
    },
    {
      "code": "SONINLAW",
      "display": "son in-law",
      "definition":
          "The player of the role is the husband of scoping person's daughter.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19761"},
        {"code": "subsumedBy", "valueCode": "CHLDINLAW"}
      ]
    },
    {
      "code": "CNRPM",
      "display": "non-country member minor without residence permit",
      "definition":
          "A person who is below legal age present in a country, *without his or her parents*, (which is foreign to him/her) unlawfully or without the country's authorization.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23071"},
        {"code": "subsumedBy", "valueCode": "CNRP"}
      ]
    },
    {
      "code": "CSC",
      "display": "community service center",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include providing front-line services to the population of a defined geographic area such as: healthcare services and social services, preventive or curative, rehabilitation or reintegration.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23233"},
        {"code": "subsumedBy", "valueCode": "COMM"}
      ]
    },
    {
      "code": "MCOUSN",
      "display": "maternal cousin",
      "definition":
          "**Description:**The player of the role is a biological relative of the scoping person descended from a common ancestor on the player's mother's side, such as a grandparent, by two or more steps in a diverging line.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22021"},
        {"code": "subsumedBy", "valueCode": "COUSN"}
      ]
    },
    {
      "code": "PCOUSN",
      "display": "paternal cousin",
      "definition":
          "**Description:**The player of the role is a biological relative of the scoping person descended from a common ancestor on the player's father's side, such as a grandparent, by two or more steps in a diverging line.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22022"},
        {"code": "subsumedBy", "valueCode": "COUSN"}
      ]
    },
    {
      "code": "CRPM",
      "display": "non-country member minor with residence permit",
      "definition":
          "A person who is a resident below legal age of the country *without his or her parents* and does not have citizenship.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23069"},
        {"code": "subsumedBy", "valueCode": "CRP"}
      ]
    },
    {
      "code": "CATH",
      "display": "Cardiac catheterization lab",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10904"},
        {"code": "subsumedBy", "valueCode": "CVDX"}
      ]
    },
    {
      "code": "ECHO",
      "display": "Echocardiography lab",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10905"},
        {"code": "subsumedBy", "valueCode": "CVDX"}
      ]
    },
    {
      "code": "DAU",
      "display": "natural daughter",
      "definition":
          "The player of the role is a female offspring of the scoping entity (parent).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16361"},
        {"code": "subsumedBy", "valueCode": "DAUC"},
        {"code": "subsumedBy", "valueCode": "NCHILD"}
      ]
    },
    {
      "code": "STPDAU",
      "display": "stepdaughter",
      "definition":
          "The player of the role is a daughter of the scoping person's spouse by a previous union.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19762"},
        {"code": "subsumedBy", "valueCode": "DAUC"},
        {"code": "subsumedBy", "valueCode": "STPCHLD"}
      ]
    },
    {
      "code": "CVDX",
      "display": "Cardiovascular diagnostics or therapeutics unit",
      "definition":
          "A practice setting where cardiovascular diagnostic procedures or therapeutic interventions are performed (e.g., cardiac catheterization lab, echocardiography suite)",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10903"},
        {"code": "subsumedBy", "valueCode": "DX"}
      ]
    },
    {
      "code": "GIDX",
      "display": "Gastroenterology diagnostics or therapeutics lab",
      "definition":
          "A practice setting where GI procedures (such as endoscopies) are performed",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10906"},
        {"code": "subsumedBy", "valueCode": "DX"}
      ]
    },
    {
      "code": "RADDX",
      "display": "Radiology diagnostics or therapeutics unit",
      "definition":
          "A practice setting where radiology services (diagnostic or therapeutic) are provided (X12N 261QR0200N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Ambulatory Health Care Facilities; Clinic/Center; Radiology"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10908"},
        {"code": "subsumedBy", "valueCode": "DX"}
      ]
    },
    {
      "code": "PEDE",
      "display": "Pediatric endocrinology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10954"},
        {"code": "subsumedBy", "valueCode": "ENDO"},
        {"code": "subsumedBy", "valueCode": "PEDC"}
      ]
    },
    {
      "code": "ETU",
      "display": "Emergency trauma unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10914"},
        {"code": "subsumedBy", "valueCode": "ER"}
      ]
    },
    {
      "code": "AUNT",
      "display": "aunt",
      "definition":
          "The player of the role is a sister of the scoping person's mother or father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19748"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "COUSN",
      "display": "cousin",
      "definition":
          "The player of the role is a relative of the scoping person descended from a common ancestor, such as a grandparent, by two or more steps in a diverging line.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19749"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "GGRPRN",
      "display": "great grandparent",
      "definition":
          "The player of the role is a parent of the scoping person's grandparent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19739"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "GRNDCHILD",
      "display": "grandchild",
      "definition":
          "The player of the role is a child of the scoping person's son or daughter.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19745"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "GRPRN",
      "display": "grandparent",
      "definition":
          "The player of the role is a parent of the scoping person's mother or father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16349"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "INLAW",
      "display": "inlaw",
      "definition":
          "A relationship between an individual and a member of their spousal partner's immediate family.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23601"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "NIENEPH",
      "display": "niece/nephew",
      "definition":
          "The player of the role is a child of scoping person's brother or sister or of the brother or sister of the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19750"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "UNCLE",
      "display": "uncle",
      "definition":
          "The player of the role is a brother of the scoping person's mother or father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19753"},
        {"code": "subsumedBy", "valueCode": "EXT"}
      ]
    },
    {
      "code": "CHILD",
      "display": "child",
      "definition": "The player of the role is a child of the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16360"},
        {"code": "subsumedBy", "valueCode": "FAMMEMB"}
      ]
    },
    {
      "code": "EXT",
      "display": "extended family member",
      "definition":
          "**Description:** A family member not having an immediate genetic or legal relationship e.g. Aunt, cousin, great grandparent, grandchild, grandparent, niece, nephew or uncle.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22916"},
        {"code": "subsumedBy", "valueCode": "FAMMEMB"}
      ]
    },
    {
      "code": "PRN",
      "display": "parent",
      "definition":
          "The player of the role is one who begets, gives birth to, or nurtures and raises the scoping entity (child).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16346"},
        {"code": "subsumedBy", "valueCode": "FAMMEMB"}
      ]
    },
    {
      "code": "SIB",
      "display": "sibling",
      "definition":
          "The player of the role shares one or both parents in common with the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11567"},
        {"code": "subsumedBy", "valueCode": "FAMMEMB"}
      ]
    },
    {
      "code": "SIGOTHR",
      "display": "significant other",
      "definition":
          "A person who is important to one's well being; especially a spouse or one in a similar relationship. (The player is the one who is important)",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19755"},
        {"code": "subsumedBy", "valueCode": "FAMMEMB"}
      ]
    },
    {
      "code": "FTHFOST",
      "display": "foster father",
      "definition":
          "The player of the role (parent) who is a male state-certified caregiver responsible for the scoper (child) who has been placed in the parent's care. The placement of the child is usually arranged through the government or a social-service agency, and temporary.\r\n\r\nThe state, via a jurisdiction recognized child protection agency, stands as in loco parentis to the child, making all legal decisions while the foster parent is responsible for the day-to-day care of the specified child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23633"},
        {"code": "subsumedBy", "valueCode": "FTH"},
        {"code": "subsumedBy", "valueCode": "PRNFOST"}
      ]
    },
    {
      "code": "NFTH",
      "display": "natural father",
      "definition":
          "The player of the role is a male who begets the scoping entity (child).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19765"},
        {"code": "subsumedBy", "valueCode": "FTH"},
        {"code": "subsumedBy", "valueCode": "NPRN"}
      ]
    },
    {
      "code": "STPFTH",
      "display": "stepfather",
      "definition":
          "The player of the role is the husband of scoping person's mother and not the scoping person's natural father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19768"},
        {"code": "subsumedBy", "valueCode": "FTH"},
        {"code": "subsumedBy", "valueCode": "STPPRN"}
      ]
    },
    {
      "code": "FTWINBRO",
      "display": "fraternal twin brother",
      "definition":
          "The scoper was carried in the same womb as the male player and shares common biological parents but is the product of a distinct egg/sperm pair.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23614"},
        {"code": "subsumedBy", "valueCode": "FTWIN"},
        {"code": "subsumedBy", "valueCode": "TWINBRO"}
      ]
    },
    {
      "code": "FTWINSIS",
      "display": "fraternal twin sister",
      "definition":
          "The scoper was carried in the same womb as the female player and shares common biological parents but is the product of a distinct egg/sperm pair.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23615"},
        {"code": "subsumedBy", "valueCode": "FTWIN"},
        {"code": "subsumedBy", "valueCode": "TWINSIS"}
      ]
    },
    {
      "code": "GDF",
      "display": "generic drug form",
      "definition":
          "Relates a manufactured drug product to the non-proprietary (generic) representation of its ingredients and dose form, independent of strength of the ingredients. The scoping entity identifies a unique combination of medicine ingredients in a specific dose form.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21814"},
        {"code": "subsumedBy", "valueCode": "GD"}
      ]
    },
    {
      "code": "GDS",
      "display": "generic drug strength",
      "definition":
          "Relates a manufactured drug product to the non-proprietary (generic) representation of is ingredients with their strength. The scoping entity identifies a unique combination of medicine ingredients with their strength.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21811"},
        {"code": "subsumedBy", "valueCode": "GD"}
      ]
    },
    {
      "code": "GDSF",
      "display": "generic drug strength form",
      "definition":
          "Relates a manufactured drug product to the non-proprietary (generic) representation of its ingredients with their strength in a specific dose form. The scoping entity identifies a unique combination of medicine ingredients with their strength in a single dose form.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21812"},
        {"code": "subsumedBy", "valueCode": "GD"}
      ]
    },
    {
      "code": "MGGRFTH",
      "display": "maternal great-grandfather",
      "definition":
          "**Description:**The player of the role is the biological father of the scoping person's biological mother's parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22013"},
        {"code": "subsumedBy", "valueCode": "GGRFTH"},
        {"code": "subsumedBy", "valueCode": "MGGRPRN"}
      ]
    },
    {
      "code": "PGGRFTH",
      "display": "paternal great-grandfather",
      "definition":
          "**Description:**The player of the role is the biological father of the scoping person's biological father's parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22014"},
        {"code": "subsumedBy", "valueCode": "GGRFTH"},
        {"code": "subsumedBy", "valueCode": "PGGRPRN"}
      ]
    },
    {
      "code": "MGGRMTH",
      "display": "maternal great-grandmother",
      "definition":
          "**Description:**The player of the role is the biological mother of the scoping person's biological mother's parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22015"},
        {"code": "subsumedBy", "valueCode": "GGRMTH"},
        {"code": "subsumedBy", "valueCode": "MGGRPRN"}
      ]
    },
    {
      "code": "PGGRMTH",
      "display": "paternal great-grandmother",
      "definition":
          "**Description:**The player of the role is the biological mother of the scoping person's biological father's parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22016"},
        {"code": "subsumedBy", "valueCode": "GGRMTH"},
        {"code": "subsumedBy", "valueCode": "PGGRPRN"}
      ]
    },
    {
      "code": "GGRFTH",
      "display": "great grandfather",
      "definition":
          "The player of the role is the father of the scoping person's grandparent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19740"},
        {"code": "subsumedBy", "valueCode": "GGRPRN"}
      ]
    },
    {
      "code": "GGRMTH",
      "display": "great grandmother",
      "definition":
          "The player of the role is the mother of the scoping person's grandparent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19741"},
        {"code": "subsumedBy", "valueCode": "GGRPRN"}
      ]
    },
    {
      "code": "MGGRPRN",
      "display": "maternal great-grandparent",
      "definition":
          "**Description:**The player of the role is a biological parent of the scoping person's biological mother's parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22011"},
        {"code": "subsumedBy", "valueCode": "GGRPRN"}
      ]
    },
    {
      "code": "PGGRPRN",
      "display": "paternal great-grandparent",
      "definition":
          "**Description:**The player of the role is a biological parent of the scoping person's biological father's parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22012"},
        {"code": "subsumedBy", "valueCode": "GGRPRN"}
      ]
    },
    {
      "code": "PEDGI",
      "display": "Pediatric gastroenterology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10955"},
        {"code": "subsumedBy", "valueCode": "GI"},
        {"code": "subsumedBy", "valueCode": "PEDC"}
      ]
    },
    {
      "code": "ENDOS",
      "display": "Endoscopy lab",
      "definition": "(X12N 261QD0000N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Ambulatory Health Care Facilities; Clinic/Center; Endoscopy"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10907"},
        {"code": "subsumedBy", "valueCode": "GIDX"}
      ]
    },
    {
      "code": "MGRFTH",
      "display": "maternal grandfather",
      "definition":
          "**Description:**The player of the role is the biological father of the scoping person's biological mother.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22009"},
        {"code": "subsumedBy", "valueCode": "GRFTH"},
        {"code": "subsumedBy", "valueCode": "MGRPRN"}
      ]
    },
    {
      "code": "PGRFTH",
      "display": "paternal grandfather",
      "definition":
          "**Description:**The player of the role is the biological father of the scoping person's biological father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22010"},
        {"code": "subsumedBy", "valueCode": "GRFTH"},
        {"code": "subsumedBy", "valueCode": "PGRPRN"}
      ]
    },
    {
      "code": "MGRMTH",
      "display": "maternal grandmother",
      "definition":
          "**Description:**The player of the role is the biological mother of the scoping person's biological mother.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22007"},
        {"code": "subsumedBy", "valueCode": "GRMTH"},
        {"code": "subsumedBy", "valueCode": "MGRPRN"}
      ]
    },
    {
      "code": "PGRMTH",
      "display": "paternal grandmother",
      "definition":
          "**Description:**The player of the role is the biological mother of the scoping person's biological father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22008"},
        {"code": "subsumedBy", "valueCode": "GRMTH"},
        {"code": "subsumedBy", "valueCode": "PGRPRN"}
      ]
    },
    {
      "code": "GRNDDAU",
      "display": "granddaughter",
      "definition":
          "The player of the role is a daughter of the scoping person's son or daughter.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19746"},
        {"code": "subsumedBy", "valueCode": "GRNDCHILD"}
      ]
    },
    {
      "code": "GRNDSON",
      "display": "grandson",
      "definition":
          "The player of the role is a son of the scoping person's son or daughter.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19747"},
        {"code": "subsumedBy", "valueCode": "GRNDCHILD"}
      ]
    },
    {
      "code": "GRFTH",
      "display": "grandfather",
      "definition":
          "The player of the role is the father of the scoping person's mother or father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16351"},
        {"code": "subsumedBy", "valueCode": "GRPRN"}
      ]
    },
    {
      "code": "GRMTH",
      "display": "grandmother",
      "definition":
          "The player of the role is the mother of the scoping person's mother or father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16350"},
        {"code": "subsumedBy", "valueCode": "GRPRN"}
      ]
    },
    {
      "code": "MGRPRN",
      "display": "maternal grandparent",
      "definition":
          "**Description:**The player of the role is the biological parent of the scoping person's biological mother.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22005"},
        {"code": "subsumedBy", "valueCode": "GRPRN"}
      ]
    },
    {
      "code": "PGRPRN",
      "display": "paternal grandparent",
      "definition":
          "**Description:**The player of the role is the biological parent of the scoping person's biological father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22006"},
        {"code": "subsumedBy", "valueCode": "GRPRN"}
      ]
    },
    {
      "code": "PEDHEM",
      "display": "Pediatric hematology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10956"},
        {"code": "subsumedBy", "valueCode": "HEM"},
        {"code": "subsumedBy", "valueCode": "PEDC"}
      ]
    },
    {
      "code": "INLAB",
      "display": "inpatient laboratory",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include tests are done on clinical specimens to get health information about a patient pertaining to the diagnosis, treatment, and prevention of disease for a hospital visit longer than one day.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23225"},
        {"code": "subsumedBy", "valueCode": "HLAB"}
      ]
    },
    {
      "code": "OUTLAB",
      "display": "outpatient laboratory",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include tests are done on clinical specimens to get health information about a patient pertaining to the diagnosis, treatment, and prevention of disease for same day visits.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23226"},
        {"code": "subsumedBy", "valueCode": "HLAB"}
      ]
    },
    {
      "code": "CHR",
      "display": "Chronic Care Facility",
      "definition":
          "(1) A hospital including a physical plant and personnel that provides multidisciplinary diagnosis and treatment for diseases that have one or more of the following characteristics: is permanent; leaves residual disability; is caused by nonreversible pathological alteration; requires special training of the patient for rehabilitation; and/or may be expected to require a long period of supervision or care. In addition, patients require the safety, security, and shelter of these specialized inpatient or partial hospitalization settings. (2) A hospital that provides medical and skilled nursing services to patients with long-term illnesses who are not in an acute phase but who require an intensity of services not available in nursing homes",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Hospitals; Chronic Disease Hospital"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "13792"},
        {"code": "subsumedBy", "valueCode": "HOSP"}
      ]
    },
    {
      "code": "GACH",
      "display": "Hospitals; General Acute Care Hospital",
      "definition": "(X12N 282N00000N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "General acute care hospital"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10603"},
        {"code": "subsumedBy", "valueCode": "HOSP"}
      ]
    },
    {
      "code": "MHSP",
      "display": "Military Hospital",
      "definition":
          "A health care facility operated by the Department of Defense or other military operation.",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "MilitaryHospital"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "13799"},
        {"code": "subsumedBy", "valueCode": "HOSP"}
      ]
    },
    {
      "code": "PSYCHF",
      "display": "Psychatric Care Facility",
      "definition":
          "Healthcare facility that cares for patients with psychiatric illness(s).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "20024"},
        {"code": "subsumedBy", "valueCode": "HOSP"}
      ]
    },
    {
      "code": "RH",
      "display": "Rehabilitation hospital",
      "definition": "(X12N 283X00000N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Hospitals; Rehabilitation Hospital"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10604"},
        {"code": "subsumedBy", "valueCode": "HOSP"}
      ]
    },
    {
      "code": "HSIS",
      "display": "half-sister",
      "definition":
          "The player of the role is a female related to the scoping entity by sharing only one biological parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19778"},
        {"code": "subsumedBy", "valueCode": "HSIB"},
        {"code": "subsumedBy", "valueCode": "SIS"}
      ]
    },
    {
      "code": "BMTU",
      "display": "Bone marrow transplant unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10911"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "CCU",
      "display": "Coronary care unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10597"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "CHEST",
      "display": "Chest unit",
      "definition":
          "A specialty unit in hospital that focuses on chronic respirator patients and pulmonary failure",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10912"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "EPIL",
      "display": "Epilepsy unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10913"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "ER",
      "display": "Emergency room",
      "definition":
          "The section of a health care facility for providing rapid treatment to victims of sudden illness or trauma.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10598"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "HD",
      "display": "Hemodialysis unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10915"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "HLAB",
      "display": "hospital laboratory",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include tests done based on clinical specimens to get health information about a patient as pertaining to the diagnosis, treatment and prevention of disease. Hospital laboratories may be further divided into specialized units such as Anatomic Pathology, Microbiology, and Biochemistry.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23224"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "HRAD",
      "display": "radiology unit",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include the branch of medicine that uses ionizing and non-ionizing radiation to diagnose and treat diseases. The radiology unit may be further divided into subspecialties such as Imaging, Cardiovascular, Thoracic, and Ultrasound.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23230"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "HUSCS",
      "display": "specimen collection site",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include collecting specimens and/or samples from patients for laboratory testing purposes, but does not perform any tests or analysis functions.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23231"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "ICU",
      "display": "Intensive care unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10599"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "INPHARM",
      "display": "inpatient pharmacy",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include providing judicious, safe, efficacious, appropriate and cost effective use of medicines for treatment of patients for visits longer than one day. The distinction between inpatient pharmacies and retail (or outpatient) pharmacies is that they are part of a patient's continuity of care while staying in the hospital.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23228"},
        {"code": "subsumedBy", "valueCode": "HU"},
        {"code": "subsumedBy", "valueCode": "PHARM"}
      ]
    },
    {
      "code": "MBL",
      "display": "medical laboratory",
      "definition":
          "**Description:** A location that plays the role of delivering services which include biochemistry, hematology, microbiology, immunochemistry, and toxicology.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23227"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "NCCS",
      "display": "Neurology critical care and stroke unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10918"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "NS",
      "display": "Neurosurgery unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10919"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "OUTPHARM",
      "display": "outpatient pharmacy",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include providing judicious, safe, efficacious, appropriate and cost effective use of medicines for treatment of patients for outpatient visits and may also be used for discharge prescriptions.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23229"},
        {"code": "subsumedBy", "valueCode": "HU"},
        {"code": "subsumedBy", "valueCode": "PHARM"}
      ]
    },
    {
      "code": "PEDU",
      "display": "Pediatric unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10920"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "PHU",
      "display": "Psychiatric hospital unit",
      "definition": "(X12N 273R00000N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Hospital Units; Psychiatric Unit"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10600"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "RHU",
      "display": "Rehabilitation hospital unit",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Hospital Units; Rehabilitation Unit"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10601"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "SLEEP",
      "display": "Sleep disorders unit",
      "definition": "(X12N 261QA1200N)",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10921"},
        {"code": "subsumedBy", "valueCode": "HU"}
      ]
    },
    {
      "code": "PEDICU",
      "display": "Pediatric intensive care unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10916"},
        {"code": "subsumedBy", "valueCode": "ICU"},
        {"code": "subsumedBy", "valueCode": "PEDU"}
      ]
    },
    {
      "code": "PEDID",
      "display": "Pediatric infectious disease clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10958"},
        {"code": "subsumedBy", "valueCode": "INFD"},
        {"code": "subsumedBy", "valueCode": "PEDC"}
      ]
    },
    {
      "code": "CHLDINLAW",
      "display": "child-in-law",
      "definition":
          "The player of the role is the spouse of scoping person's child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "11563"},
        {"code": "subsumedBy", "valueCode": "INLAW"}
      ]
    },
    {
      "code": "PRNINLAW",
      "display": "parent in-law",
      "definition":
          "The player of the role is the parent of scoping person's husband or wife.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19770"},
        {"code": "subsumedBy", "valueCode": "INLAW"}
      ]
    },
    {
      "code": "SIBINLAW",
      "display": "sibling in-law",
      "definition":
          "The player of the role is: (1) a sibling of the scoping person's spouse, or (2) the spouse of the scoping person's sibling, or (3) the spouse of a sibling of the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19782"},
        {"code": "subsumedBy", "valueCode": "INLAW"}
      ]
    },
    {
      "code": "ITWINBRO",
      "display": "identical twin brother",
      "definition":
          "The male scoper is an offspring of the same egg-sperm pair as the male player.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23611"},
        {"code": "subsumedBy", "valueCode": "ITWIN"},
        {"code": "subsumedBy", "valueCode": "TWINBRO"}
      ]
    },
    {
      "code": "ITWINSIS",
      "display": "identical twin sister",
      "definition":
          "The female scoper is an offspring of the same egg-sperm pair as the female player.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23612"},
        {"code": "subsumedBy", "valueCode": "ITWIN"},
        {"code": "subsumedBy", "valueCode": "TWINSIS"}
      ]
    },
    {
      "code": "ACTMIL",
      "display": "active duty military",
      "definition":
          "**Description:** A person playing the role of program eligible under a program based on active military status.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is either \"program eligible\" or \"subscriber\" and the persons status as active duty military meets jurisdictional or program criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21969"},
        {"code": "subsumedBy", "valueCode": "MIL"}
      ]
    },
    {
      "code": "RETMIL",
      "display": "retired military",
      "definition":
          "**Description:** A person playing the role of program eligible under a program based on retired military status.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is either \"program eligible\" or \"subscriber\" and the persons status as retired military meets jurisdictional or program criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21970"},
        {"code": "subsumedBy", "valueCode": "MIL"}
      ]
    },
    {
      "code": "VET",
      "display": "veteran",
      "definition":
          "**Description:** A person playing the role of program eligible under a program based on status as a military veteran.\r\n\r\n**Discussion:** This CoveredPartyRoleType.code is typically used when the CoveredPartyRole class code is either \"program eligible\" or \"subscriber\" and the persons status as a veteran meets jurisdictional or program criteria.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21971"},
        {"code": "subsumedBy", "valueCode": "MIL"}
      ]
    },
    {
      "code": "AMB",
      "display": "Ambulance",
      "definition":
          "Location (mobile) where healthcare service was delivered, identified specifically as an ambulance.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18097"},
        {"code": "subsumedBy", "valueCode": "MOBL"}
      ]
    },
    {
      "code": "GESTM",
      "display": "gestational mother",
      "definition":
          "The player is a female whose womb carries the fetus of the scoper. Generally used when the gestational mother and natural mother are not the same.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23605"},
        {"code": "subsumedBy", "valueCode": "MTH"}
      ]
    },
    {
      "code": "MTHFOST",
      "display": "foster mother",
      "definition":
          "The player of the role (parent) who is a female state-certified caregiver responsible for the scoper (child) who has been placed in the parent's care. The placement of the child is usually arranged through the government or a social-service agency, and temporary.\r\n\r\nThe state, via a jurisdiction recognized child protection agency, stands as in loco parentis to the child, making all legal decisions while the foster parent is responsible for the day-to-day care of the specified child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23632"},
        {"code": "subsumedBy", "valueCode": "MTH"},
        {"code": "subsumedBy", "valueCode": "PRNFOST"}
      ]
    },
    {
      "code": "NMTH",
      "display": "natural mother",
      "definition":
          "The player of the role is a female who conceives or gives birth to the scoping entity (child).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19766"},
        {"code": "subsumedBy", "valueCode": "MTH"},
        {"code": "subsumedBy", "valueCode": "NPRN"}
      ]
    },
    {
      "code": "STPMTH",
      "display": "stepmother",
      "definition":
          "The player of the role is the wife of scoping person's father and not the scoping person's natural mother.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19769"},
        {"code": "subsumedBy", "valueCode": "MTH"},
        {"code": "subsumedBy", "valueCode": "STPPRN"}
      ]
    },
    {
      "code": "TWINBRO",
      "display": "twin brother",
      "definition":
          "The scoper was carried in the same womb as the male player and shares common biological parents.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23608"},
        {"code": "subsumedBy", "valueCode": "NBRO"},
        {"code": "subsumedBy", "valueCode": "TWIN"}
      ]
    },
    {
      "code": "SNF",
      "display": "Skilled nursing facility",
      "definition": "(X12N 314000000N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value":
              "Nursing & Custodial Care Facilities; Skilled Nursing Facility"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10606"},
        {"code": "subsumedBy", "valueCode": "NCCF"}
      ]
    },
    {
      "code": "SON",
      "display": "natural son",
      "definition":
          "The player of the role is a male offspring of the scoping entity (parent).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16362"},
        {"code": "subsumedBy", "valueCode": "NCHILD"},
        {"code": "subsumedBy", "valueCode": "SONC"}
      ]
    },
    {
      "code": "PEDNEPH",
      "display": "Pediatric nephrology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10959"},
        {"code": "subsumedBy", "valueCode": "NEPH"},
        {"code": "subsumedBy", "valueCode": "PEDC"}
      ]
    },
    {
      "code": "NFTHF",
      "display": "natural father of fetus",
      "definition": "Indicates the biologic male parent of a fetus.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "21455"},
        {"code": "subsumedBy", "valueCode": "NFTH"}
      ]
    },
    {
      "code": "NEPHEW",
      "display": "nephew",
      "definition":
          "The player of the role is a son of the scoping person's brother or sister or of the brother or sister of the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19751"},
        {"code": "subsumedBy", "valueCode": "NIENEPH"}
      ]
    },
    {
      "code": "NIECE",
      "display": "niece",
      "definition":
          "The player of the role is a daughter of the scoping person's brother or sister or of the brother or sister of the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19752"},
        {"code": "subsumedBy", "valueCode": "NIENEPH"}
      ]
    },
    {
      "code": "NMTHF",
      "display": "natural mother of fetus",
      "definition":
          "The player is the biologic female parent of the scoping fetus.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23606"},
        {"code": "subsumedBy", "valueCode": "NMTH"}
      ]
    },
    {
      "code": "NSIS",
      "display": "natural sister",
      "definition":
          "The player of the role is a female having the same biological parents as the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19775"},
        {"code": "subsumedBy", "valueCode": "NSIB"},
        {"code": "subsumedBy", "valueCode": "SIS"}
      ]
    },
    {
      "code": "TWIN",
      "display": "twin",
      "definition":
          "The scoper and player were carried in the same womb and shared common biological parents.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23607"},
        {"code": "subsumedBy", "valueCode": "NSIB"}
      ]
    },
    {
      "code": "TWINSIS",
      "display": "twin sister",
      "definition":
          "The scoper was carried in the same womb as the female player and shares common biological parents.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23609"},
        {"code": "subsumedBy", "valueCode": "NSIS"},
        {"code": "subsumedBy", "valueCode": "TWIN"}
      ]
    },
    {
      "code": "ALL",
      "display": "Allergy clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10922"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "AMPUT",
      "display": "Amputee clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10923"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "BMTC",
      "display": "Bone marrow transplant clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10924"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "BREAST",
      "display": "Breast clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10925"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "CANC",
      "display": "Child and adolescent neurology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10926"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "CAPC",
      "display": "Child and adolescent psychiatry clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10927"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "CARD",
      "display":
          "Ambulatory Health Care Facilities; Clinic/Center; Rehabilitation: Cardiac Facilities",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Cardiology clinic"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10590"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "COAG",
      "display": "Coagulation clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10928"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "CRS",
      "display": "Colon and rectal surgery clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10929"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "DERM",
      "display": "Dermatology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10930"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "ENDO",
      "display": "Endocrinology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10931"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "ENT",
      "display": "Otorhinolaryngology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10932"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "FMC",
      "display": "Family medicine clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10933"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "GI",
      "display": "Gastroenterology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10934"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "GIM",
      "display": "General internal medicine clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10591"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "GYN",
      "display": "Gynecology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10935"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "HEM",
      "display": "Hematology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10936"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "HTN",
      "display": "Hypertension clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10937"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "IEC",
      "display": "Impairment evaluation center",
      "definition": "Focuses on assessing disability",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10938"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "INFD",
      "display": "Infectious disease clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10939"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "INV",
      "display": "Infertility clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10940"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "LYMPH",
      "display": "Lympedema clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10941"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "MGEN",
      "display": "Medical genetics clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10942"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "NEPH",
      "display": "Nephrology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10943"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "NEUR",
      "display": "Neurology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10944"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "OB",
      "display": "Obstetrics clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10945"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "OMS",
      "display": "Oral and maxillofacial surgery clinic",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value":
              "Ambulatory Health Care Facilities; Clinic/Center; Surgery, Oral/Maxillofacial"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10946"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "ONCL",
      "display": "Medical oncology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10947"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "OPH",
      "display": "Opthalmology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10948"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "OPTC",
      "display": "optometry clinic",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include examination, diagnosis, treatment, management, and prevention of diseases and disorders of the eye as well as prescribing and fitting appropriate corrective lenses (glasses or contact lenses) as needed. Optometry clinics may also provide tests for visual field screening, measuring intra-ocular pressure and ophthalmoscopy, as and when required.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23232"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "ORTHO",
      "display": "Orthopedics clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10949"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PAINCL",
      "display": "Pain clinic",
      "definition": "(X12N 261QP3300N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Ambulatory Health Care Facilities; Clinic/Center; Pain"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10951"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PC",
      "display": "Primary care clinic",
      "definition": "(X12N 261QP2300N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value":
              "Ambulatory Health Care Facilities; Clinic/Center; Primary Care"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10952"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PEDC",
      "display": "Pediatrics clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10953"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "POD",
      "display": "Podiatry clinic",
      "definition": "(X12N 261QP1100N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value": "Ambulatory Health Care Facilities; Clinic/Center; Podiatric"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10962"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PREV",
      "display": "Preventive medicine clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10963"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PROCTO",
      "display": "Proctology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10964"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PROFF",
      "display": "Provider's Office",
      "definition":
          "Location where healthcare service was delivered, identified as the healthcare provider's practice office.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18103"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PROS",
      "display": "Prosthodontics clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10965"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PSI",
      "display": "Psychology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10966"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PSY",
      "display": "Psychiatry clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10967"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "RHEUM",
      "display": "Rheumatology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10593"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "SPMED",
      "display": "Sports medicine clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10594"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "SU",
      "display": "Surgery clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10968"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "TR",
      "display": "Transplant clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10971"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "TRAVEL",
      "display": "Travel and geographic medicine clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10972"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "WND",
      "display": "Wound clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10973"},
        {"code": "subsumedBy", "valueCode": "OF"}
      ]
    },
    {
      "code": "PEDHO",
      "display": "Pediatric oncology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10957"},
        {"code": "subsumedBy", "valueCode": "ONCL"},
        {"code": "subsumedBy", "valueCode": "PEDC"}
      ]
    },
    {
      "code": "HAND",
      "display": "Hand clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10950"},
        {"code": "subsumedBy", "valueCode": "ORTHO"}
      ]
    },
    {
      "code": "PEDRHEUM",
      "display": "Pediatric rheumatology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10960"},
        {"code": "subsumedBy", "valueCode": "PEDC"},
        {"code": "subsumedBy", "valueCode": "RHEUM"}
      ]
    },
    {
      "code": "PEDNICU",
      "display": "Pediatric neonatal intensive care unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10917"},
        {"code": "subsumedBy", "valueCode": "PEDICU"}
      ]
    },
    {
      "code": "DPOWATT",
      "display": "durable power of attorney",
      "definition":
          "A relationship between two people in which one person authorizes another, usually a family member or relative, to act for him or her in a manner which is a legally binding upon the person giving such authority as if he or she personally were to do the acts that is often limited in the kinds of powers that can be assigned. Unlike ordinary powers of attorney, durable powers can survive for long periods of time, and again, unlike standard powers of attorney, durable powers can continue after incompetency.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22036"},
        {"code": "subsumedBy", "valueCode": "POWATT"}
      ]
    },
    {
      "code": "HPOWATT",
      "display": "healthcare power of attorney",
      "definition":
          "A relationship between two people in which one person authorizes another to act for him or her in a manner which is a legally binding upon the person giving such authority as if he or she personally were to do the acts that continues (by its terms) to be effective even though the grantor has become mentally incompetent after signing the document.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22035"},
        {"code": "subsumedBy", "valueCode": "POWATT"}
      ]
    },
    {
      "code": "SPOWATT",
      "display": "special power of attorney",
      "definition":
          "A relationship between two people in which one person authorizes another to act for him or her in a manner which is a legally binding upon the person giving such authority as if he or she personally were to do the acts that is often limited in the kinds of powers that can be assigned.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22037"},
        {"code": "subsumedBy", "valueCode": "POWATT"}
      ]
    },
    {
      "code": "ADOPTP",
      "display": "adoptive parent",
      "definition":
          "The player of the role (parent) has taken the scoper (child) into their family through legal means and raises them as his or her own child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23602"},
        {"code": "subsumedBy", "valueCode": "PRN"}
      ]
    },
    {
      "code": "FTH",
      "display": "father",
      "definition":
          "The player of the role is a male who begets or raises or nurtures the scoping entity (child).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16348"},
        {"code": "subsumedBy", "valueCode": "PRN"}
      ]
    },
    {
      "code": "MTH",
      "display": "mother",
      "definition":
          "The player of the role is a female who conceives, gives birth to, or raises and nurtures the scoping entity (child).",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16347"},
        {"code": "subsumedBy", "valueCode": "PRN"}
      ]
    },
    {
      "code": "NPRN",
      "display": "natural parent",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19764"},
        {"code": "subsumedBy", "valueCode": "PRN"}
      ]
    },
    {
      "code": "PRNFOST",
      "display": "foster parent",
      "definition":
          "The player of the role (parent) who is a state-certified caregiver responsible for the scoper (child) who has been placed in the parent's care. The placement of the child is usually arranged through the government or a social-service agency, and temporary.\r\n\r\nThe state, via a jurisdiction recognized child protection agency, stands as in loco parentis to the child, making all legal decisions while the foster parent is responsible for the day-to-day care of the specified child.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23631"},
        {"code": "subsumedBy", "valueCode": "PRN"}
      ]
    },
    {
      "code": "STPPRN",
      "display": "step parent",
      "definition":
          "The player of the role is the spouse of the scoping person's parent and not the scoping person's natural parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19767"},
        {"code": "subsumedBy", "valueCode": "PRN"}
      ]
    },
    {
      "code": "FTHINLAW",
      "display": "father-in-law",
      "definition":
          "The player of the role is the father of the scoping person's husband or wife.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19771"},
        {"code": "subsumedBy", "valueCode": "PRNINLAW"}
      ]
    },
    {
      "code": "MTHINLAW",
      "display": "mother-in-law",
      "definition":
          "The player of the role is the mother of the scoping person's husband or wife.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "synonymCode", "valueCode": "MTHINLOAW"},
        {"code": "internalId", "valueCode": "19772"},
        {"code": "subsumedBy", "valueCode": "PRNINLAW"}
      ]
    },
    {
      "code": "MTHINLOAW",
      "display": "mother-in-law",
      "definition":
          "The player of the role is the mother of the scoping person's husband or wife.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "synonymCode", "valueCode": "MTHINLAW"},
        {"code": "internalId", "valueCode": "19772"},
        {"code": "subsumedBy", "valueCode": "PRNINLAW"}
      ]
    },
    {
      "code": "B",
      "display": "Blind",
      "definition":
          "Quality Control specimen submitted to the lab whose identity and composition is not known to the lab.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16526"},
        {"code": "subsumedBy", "valueCode": "Q"}
      ]
    },
    {
      "code": "E",
      "display": "Electronic QC",
      "definition": "An electronically simulated QC specimen",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16522"},
        {"code": "subsumedBy", "valueCode": "Q"}
      ]
    },
    {
      "code": "F",
      "display": "Filler Proficiency",
      "definition":
          "Specimen used for testing proficiency of an organization performing testing (how does this differ from O?)",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16525"},
        {"code": "subsumedBy", "valueCode": "Q"}
      ]
    },
    {
      "code": "O",
      "display": "Operator Proficiency",
      "definition":
          "A specimen used for evaluation of operator proficiency (operator in what context?)",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16524"},
        {"code": "subsumedBy", "valueCode": "Q"}
      ]
    },
    {
      "code": "V",
      "display": "Verifying",
      "definition":
          "A specimen used for periodic calibration checks of instruments",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16523"},
        {"code": "subsumedBy", "valueCode": "Q"}
      ]
    },
    {
      "code": "RADO",
      "display": "Radiation oncology unit",
      "definition": "(X12N 261QX0203N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value":
              "Ambulatory Health Care Facilities; Clinic/Center; Oncology, Radiation"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10909"},
        {"code": "subsumedBy", "valueCode": "RADDX"}
      ]
    },
    {
      "code": "RNEU",
      "display": "Neuroradiology unit",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10910"},
        {"code": "subsumedBy", "valueCode": "RADDX"}
      ]
    },
    {
      "code": "EXCEST",
      "display": "executor of estate",
      "definition":
          "The role played by a person acting as the estate executor for a deceased subscriber or policyholder who was the responsible party",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22031"},
        {"code": "subsumedBy", "valueCode": "RESPRSN"}
      ]
    },
    {
      "code": "GUADLTM",
      "display": "guardian ad lidem",
      "definition":
          "The role played by a person appointed by the court to look out for the best interests of a minor child during the course of legal proceedings.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22033"},
        {"code": "subsumedBy", "valueCode": "RESPRSN"}
      ]
    },
    {
      "code": "GUARD",
      "display": "guardian",
      "definition":
          "The role played by a person or institution legally empowered with responsibility for the care of a ward.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22032"},
        {"code": "subsumedBy", "valueCode": "RESPRSN"}
      ]
    },
    {
      "code": "POWATT",
      "display": "power of attorney",
      "definition":
          "A relationship between two people in which one person authorizes another to act for him in a manner which is a legally binding upon the person giving such authority as if he or she personally were to do the acts.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22034"},
        {"code": "subsumedBy", "valueCode": "RESPRSN"}
      ]
    },
    {
      "code": "RHAT",
      "display": "addiction treatment center",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include life training and/or social support to people with addictions.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23216"},
        {"code": "subsumedBy", "valueCode": "RH"}
      ]
    },
    {
      "code": "RHII",
      "display": "intellectual impairment center",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include adaptation, rehabilitation and social integration services for people with intellectual and/or pervasive development disorders such as autism or severe behaviour disorder.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23217"},
        {"code": "subsumedBy", "valueCode": "RH"}
      ]
    },
    {
      "code": "RHMAD",
      "display": "parents with adjustment difficulties center",
      "definition":
          "**Description:** A location that plays the role of delivering services which may social support services for adolescents who are pregnant or have child and are experiencing adaptation issues/difficulties in their current or eventual parenting role.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23218"},
        {"code": "subsumedBy", "valueCode": "RH"}
      ]
    },
    {
      "code": "RHPI",
      "display": "physical impairment center",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include adaptation, rehabilitation and social integration services for people with physical impairments.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23219"},
        {"code": "subsumedBy", "valueCode": "RH"}
      ]
    },
    {
      "code": "RHYAD",
      "display": "youths with adjustment difficulties center",
      "definition":
          "**Description:** A location that plays the role of delivering services which may include life training and/or social support services for the adaption, rehabilitation and social integration of youths with adjustment difficulties.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23223"},
        {"code": "subsumedBy", "valueCode": "RH"}
      ]
    },
    {
      "code": "RHPIH",
      "display": "physical impairment - hearing center",
      "definition":
          "**Description:** A location that plays the role of delivering services for people with hearing impairments.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23220"},
        {"code": "subsumedBy", "valueCode": "RHPI"}
      ]
    },
    {
      "code": "RHPIMS",
      "display": "physical impairment - motor skills center",
      "definition":
          "**Description:** A location that plays the role of delivering services for people with motor skill impairments.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23221"},
        {"code": "subsumedBy", "valueCode": "RHPI"}
      ]
    },
    {
      "code": "RHPIVS",
      "display": "physical impairment - visual skills center",
      "definition":
          "**Description:** A location that plays the role of delivering services for people with visual skill impairments.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23222"},
        {"code": "subsumedBy", "valueCode": "RHPI"}
      ]
    },
    {
      "code": "PRC",
      "display": "Pain rehabilitation center",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10974"},
        {"code": "subsumedBy", "valueCode": "RTF"}
      ]
    },
    {
      "code": "SURF",
      "display": "Substance use rehabilitation facility",
      "definition": "(X12N 324500000N)",
      "designation": [
        {
          "language": "en",
          "use": {
            "system": "http://snomed.info/sct",
            "code": "900000000000013009"
          },
          "value":
              "Residential Treatment Facilities; Substance Use Rehabilitation Facility"
        }
      ],
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10608"},
        {"code": "subsumedBy", "valueCode": "RTF"}
      ]
    },
    {
      "code": "BRO",
      "display": "brother",
      "definition":
          "The player of the role is a male sharing one or both parents in common with the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16359"},
        {"code": "subsumedBy", "valueCode": "SIB"}
      ]
    },
    {
      "code": "HSIB",
      "display": "half-sibling",
      "definition":
          "The player of the role is related to the scoping entity by sharing only one biological parent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19776"},
        {"code": "subsumedBy", "valueCode": "SIB"}
      ]
    },
    {
      "code": "NSIB",
      "display": "natural sibling",
      "definition":
          "The player of the role has both biological parents in common with the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19773"},
        {"code": "subsumedBy", "valueCode": "SIB"}
      ]
    },
    {
      "code": "SIS",
      "display": "sister",
      "definition":
          "The player of the role is a female sharing one or both parents in common with the scoping entity.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "16358"},
        {"code": "subsumedBy", "valueCode": "SIB"}
      ]
    },
    {
      "code": "STPSIB",
      "display": "step sibling",
      "definition":
          "The player of the role is a child of the scoping person's stepparent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19779"},
        {"code": "subsumedBy", "valueCode": "SIB"}
      ]
    },
    {
      "code": "BROINLAW",
      "display": "brother-in-law",
      "definition":
          "The player of the role is: (1) a brother of the scoping person's spouse, or (2) the husband of the scoping person's sister, or (3) the husband of a sister of the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19783"},
        {"code": "subsumedBy", "valueCode": "SIBINLAW"}
      ]
    },
    {
      "code": "SISINLAW",
      "display": "sister-in-law",
      "definition":
          "The player of the role is: (1) a sister of the scoping person's spouse, or (2) the wife of the scoping person's brother, or (3) the wife of a brother of the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "synonymCode", "valueCode": "SISLINLAW"},
        {"code": "internalId", "valueCode": "19784"},
        {"code": "subsumedBy", "valueCode": "SIBINLAW"}
      ]
    },
    {
      "code": "SISLINLAW",
      "display": "sister-in-law",
      "definition":
          "The player of the role is: (1) a sister of the scoping person's spouse, or (2) the wife of the scoping person's brother, or (3) the wife of a brother of the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "retired"},
        {"code": "synonymCode", "valueCode": "SISINLAW"},
        {"code": "internalId", "valueCode": "19784"},
        {"code": "subsumedBy", "valueCode": "SIBINLAW"}
      ]
    },
    {
      "code": "DOMPART",
      "display": "domestic partner",
      "definition":
          "The player of the role cohabits with the scoping person but is not the scoping person's spouse.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19754"},
        {"code": "subsumedBy", "valueCode": "SIGOTHR"}
      ]
    },
    {
      "code": "FMRSPS",
      "display": "former spouse",
      "definition":
          "Player of the role was previously joined to the scoping person in marriage and this marriage is now dissolved and inactive.\r\n\r\n*Usage Note:* This is significant to indicate as some jurisdictions have different legal requirements for former spouse to access the patient's record, from a general friend.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23721"},
        {"code": "subsumedBy", "valueCode": "SIGOTHR"}
      ]
    },
    {
      "code": "SPS",
      "display": "spouse",
      "definition":
          "The player of the role is a marriage partner of the scoping person.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19742"},
        {"code": "subsumedBy", "valueCode": "SIGOTHR"}
      ]
    },
    {
      "code": "STPSIS",
      "display": "stepsister",
      "definition":
          "The player of the role is a daughter of the scoping person's stepparent.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19781"},
        {"code": "subsumedBy", "valueCode": "SIS"},
        {"code": "subsumedBy", "valueCode": "STPSIB"}
      ]
    },
    {
      "code": "STPSON",
      "display": "stepson",
      "definition":
          "The player of the role is a son of the scoping person's spouse by a previous union.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19763"},
        {"code": "subsumedBy", "valueCode": "SONC"},
        {"code": "subsumedBy", "valueCode": "STPCHLD"}
      ]
    },
    {
      "code": "HUSB",
      "display": "husband",
      "definition":
          "The player of the role is a man joined to a woman (scoping person) in marriage.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19743"},
        {"code": "subsumedBy", "valueCode": "SPS"}
      ]
    },
    {
      "code": "WIFE",
      "display": "wife",
      "definition":
          "The player of the role is a woman joined to a man (scoping person) in marriage.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "19744"},
        {"code": "subsumedBy", "valueCode": "SPS"}
      ]
    },
    {
      "code": "FSTUD",
      "display": "full-time student",
      "definition":
          "Covered party to an insurance policy has coverage through full-time attendance at a recognized educational institution as defined by a particular insurance policy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18893"},
        {"code": "subsumedBy", "valueCode": "STUD"}
      ]
    },
    {
      "code": "PSTUD",
      "display": "part-time student",
      "definition":
          "Covered party to an insurance policy has coverage through part-time attendance at a recognized educational institution as defined by a particular insurance policy.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "18894"},
        {"code": "subsumedBy", "valueCode": "STUD"}
      ]
    },
    {
      "code": "PLS",
      "display": "Plastic surgery clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10969"},
        {"code": "subsumedBy", "valueCode": "SU"}
      ]
    },
    {
      "code": "URO",
      "display": "Urology clinic",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "10970"},
        {"code": "subsumedBy", "valueCode": "SU"}
      ]
    },
    {
      "code": "FTWIN",
      "display": "fraternal twin",
      "definition":
          "The scoper and player were carried in the same womb and share common biological parents but are the product of distinct egg/sperm pairs.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23613"},
        {"code": "subsumedBy", "valueCode": "TWIN"}
      ]
    },
    {
      "code": "ITWIN",
      "display": "identical twin",
      "definition":
          "The scoper and player are offspring of the same egg-sperm pair.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "23610"},
        {"code": "subsumedBy", "valueCode": "TWIN"}
      ]
    },
    {
      "code": "MUNCLE",
      "display": "maternal uncle",
      "definition":
          "**Description:**The player of the role is a biological brother of the scoping person's biological mother.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22019"},
        {"code": "subsumedBy", "valueCode": "UNCLE"}
      ]
    },
    {
      "code": "PUNCLE",
      "display": "paternal uncle",
      "definition":
          "**Description:**The player of the role is a biological brother of the scoping person's biological father.",
      "property": [
        {"code": "status", "valueCode": "active"},
        {"code": "internalId", "valueCode": "22020"},
        {"code": "subsumedBy", "valueCode": "UNCLE"}
      ]
    }
  ]
});
