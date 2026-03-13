@Epic-CKYC
@AuthoredBy-harshita.nayak
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
@Conventional

Feature: Related Controlling Person Details TestCases

  Background:
    Given user is logged in CAS
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>


    # ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details","DDE"]}
   #${ApplicantType:["Individual","Non Individual"]}
#    CAS-112305,CAS-90100
   #FeatureID-ACAUTOCAS-327
  Scenario Outline: Save the related controlling person details with success "<message>" at "<ApplicationStage>" stage for "<ProductType>"
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user save the sourcing details
    And user go to related controlling person
    When user all mandatory information
    And user click on Done
    Then user should be able to save the related controlling person details with success "<message>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | message                 |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Data Saved Successfully |

#prerequisite:Application punch with coapplicant
# ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details","DDE"]}
#${ApplicantType:["Individual","Non Individual"]}
# CAS-52759
   #FeatureID-ACAUTOCAS-327
  Scenario Outline:While selecting referred applicant details "<Tab>" details information should be fetch for related controlling person at "<ApplicationStage>" stage for "<ProductType>"
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user save the sourcing details
    And user go to related controlling person
    When user select related to with referred applicant
    Then "<Tab>" details information should be fetch successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Tab            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Family         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Address        |

    #prerequisite:two identification type-PAN and Unique Identification Number
# ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details","DDE"]}
#${ApplicantType:["Individual","Non Individual"]}
#  CAS-137571
    #FeatureID-ACAUTOCAS-327
  Scenario Outline:While editing add identification type as Authorization Letter for related controlling person at "<ApplicationStage>" stage for "<ProductType>"
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user save the sourcing details
    And user go to related controlling person
    And user fills all mandatory fields
    When user opens identification section
    And user add two identification Type
    And user save related person with done
    And user edit the related person
    And user add another identification type as Authorization Letter
    And user click on Done
    Then identification type as Authorization Letter should be added successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

      # ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details","DDE"]}
#${ApplicantType:["Individual","Non Individual"]}
#    CAS-90103
     #FeatureID-ACAUTOCAS-327
  Scenario Outline:Move to next stage event should work successfully for related controlling person at "<ApplicationStage>" stage for "<ProductType>"
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user save the sourcing details
    And user go to related controlling person
    When user fills all mandatory fields
    And user save the related details
    Then user should be able to perform Move to next stage event successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

      # ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details","DDE"]}
#${ApplicantType:["Individual","Non Individual"]}
     #FeatureID-ACAUTOCAS-327
  Scenario Outline: Validating the <Field_Name> in related controlling person with <var> field at "<ApplicationStage>" stage for "<ProductType>"
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user save the sourcing details
    And user go to related controlling person
    And user select related radio button
    When user fills "<Field_Name>" field with "<var>" in related controlling person
    Then "<Field_Name>" field "<Throws_notThrows>" in related controlling person

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name         | var                         | Throws_notThrows                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | First Name         | valid value                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | First Name         | special characters with dot | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | First Name         | both digits and characters  | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | First Name         | special characters          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | First Name         | space                       | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Last Name          | valid value                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Last Name          | special characters with dot | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Last Name          | both digits and characters  | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Last Name          | special characters          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Last Name          | space                       | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Middle Name        | valid value                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Middle Name        | special characters with dot | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Middle Name        | both digits and characters  | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Middle Name        | special characters          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Middle Name        | space                       | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden First Name  | valid value                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden First Name  | special characters with dot | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden First Name  | both digits and characters  | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden First Name  | special characters          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden First Name  | space                       | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Middle Name | valid value                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Middle Name | special characters with dot | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Middle Name | both digits and characters  | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Middle Name | special characters          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Middle Name | space                       | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Last Name   | valid value                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Last Name   | special characters with dot | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Last Name   | both digits and characters  | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Last Name   | special characters          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Last Name   | space                       | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Place of Birth     | valid value                 | does not throw any error           |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Place of Birth     | special characters with dot | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Place of Birth     | both digits and characters  | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Place of Birth     | special characters          | throws an error with error message |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Place of Birth     | space                       | does not throw any error           |

#prerequisite:Application punch with coapplicant
# ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details","DDE"]}
#${ApplicantType:["Individual","Non Individual"]}
     #FeatureID-ACAUTOCAS-327
  Scenario Outline: While filling referred applicant details <Field_Name> should be <editable_noneditable> for related controlling person at "<ApplicationStage>" stage for "<ProductType>"
    And user open an application of "<ProductType>" for "<ApplicantType>" applicant at "<ApplicationStage>" stage
    And user save the sourcing details
    And user go to related controlling person
    And user select related radio button
    When user select related to with referred applicant
    Then <Field_Name> should be <editable_noneditable>  for related controlling person

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Field_Name          | editable_noneditable |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Related Person Type | noneditable          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Risk Category       | noneditable          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nationality         | noneditable          |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Applicant's Gender  | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Salutation          | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | First Name          | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Middle Name         | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Last Name           | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden First Name   | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Middle Name  | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Maiden Last Name    | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Date of Birth       | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Marital Status      | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Resident Type       | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Place of Birth      | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Occupation Type     | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Email ID    | editable             |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Fax Number          | editable             |