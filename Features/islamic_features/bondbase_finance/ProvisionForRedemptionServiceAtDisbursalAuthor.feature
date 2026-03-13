@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Bonds
@Part-2

Feature: Provision for Redemption Service at Disbursal Author

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#PQM-32_CAS-185578
Scenario: ACAUTOCAS-17870: API Document should be generated
    And user open interface data configuration screen
    When user open eft payment details master
    And user tick the generate api documentation button
    Then API Document should be generated

#PQM-32_CAS-185578
Scenario Outline: ACAUTOCAS-17871: Page should reload and Interface Data Configuration <FieldName> should present
    And user open interface data configuration screen
    When user open eft payment details master
    Then Interface Data Configuration "<FieldName>" should present
    Examples:
      | FieldName                     |
      | Interface Code                |
      | Interface Type                |
      | Interface Block Configuration |
      | Interface Configuration Level |
      | Generate API Documentation    |
      | Unique API Code               |
      | API Name                      |
      | API Description               |
      | API Pack Name                 |
      | API Service Type              |
      | Response Fetch Interval       |
      | Response Fetch Time           |
      | Max Response Attempts         |
      | Is Async                      |
      | Enable Oauth Token            |

#PQM-32_CAS-185578
Scenario Outline: ACAUTOCAS-17872: Page should reload and Interface Data Configuration dynamic request block <FieldName> should present
    And user open interface data configuration screen
    When user open eft payment details master
    And user open dynamic request block fields
    Then Interface Data Configuration dynamic request "<FieldName>" should present
    Examples:
      | FieldName         |
      | Field Name        |
      | Field Key         |
      | Field Description |
      | Data Type         |
      | Mandatory         |
      | Allowable Values  |
      | Sequence          |
      | Actions           |

#PQM-32_CAS-185578
Scenario Outline: ACAUTOCAS-17873: Page should reload and Interface Data Configuration dynamic response block <FieldName> should present
    And user open interface data configuration screen
    When user open eft payment details master
    And user open dynamic response block fields
    Then Interface Data Configuration dynamic response "<FieldName>" should present
    Examples:
      | FieldName         |
      | Field Name        |
      | Field Key         |
      | Field Description |
      | Data Type         |
      | Mandatory         |
      | Allowable Values  |
      | Sequence          |
      | Actions           |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-15_CAS-185578
Scenario Outline: ACAUTOCAS-17874: Max sanctioned amount should not be visible at <ApplicationStage> for a <ProductType> application for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Max sanctioned amount should not be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-16_CAS-185578,PQM-51_CAS-185578
Scenario Outline: ACAUTOCAS-17875: Ignore for payment flag should be checked with present in disable mode at <ApplicationStage> for a <ProductType> application for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    Then Ignore for payment flag should be "<Action>"
    Examples:
      | Action  | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | checked | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | disable | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-17_CAS-185578,PQM-52_CAS-185578
Scenario Outline: ACAUTOCAS-17876: Curtailment option should not present at <ApplicationStage> for a <ProductType> application for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    Then Curtailment option should not present
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-21_CAS-185578
Scenario Outline: ACAUTOCAS-17877: Proper validation should occur for Bond Allocation service not configured at <ApplicationStage> for a <ProductType> application for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Proper validation should occur for "Bond allocation is required before disbursal initiate."
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-31_CAS-185578
Scenario Outline: ACAUTOCAS-17878: electronic fund transfer payment mode should be present
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Electronic Fund Transfer"
    Then "Electronic Fund Transfer" payment mode should be present
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-44_CAS-185578
Scenario Outline: ACAUTOCAS-17879: Ignore for payment to be auto ticked and should be disable in eft payment mode at <ApplicationStage> for a <ProductType> application for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Electronic Fund Transfer"
    And user fills dealing bank in payee details
    Then Ignore for payment flag should be "<Action>"
    Examples:
      | Action  | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | checked | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | disable | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

