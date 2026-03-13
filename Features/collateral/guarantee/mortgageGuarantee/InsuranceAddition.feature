@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-none
@Reconciled
@ReviewedByDEV

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
#${CollateralSubType:["Mortgage Guarantee"]}

Feature: Mortgage Guarantee Insurance Addition

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-piyush.agnihotri @Release
    #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-5154:  Insurance addition to <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    Then user should be able to add Insurance to the collateral
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5155:  Insurance details <Entity> entity validation for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see "<Entity>" entity
    Examples:
      | Entity            | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Insurance Details | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Nominee Details   | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5156:  Insurance details screen validation of <FieldName> field for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
    Examples:
      | FieldName                | Mandatory     | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5157: CollateralPage Insurance details <Validity>  Policy Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16875: CollateralPage Insurance details <Validity> Cover Note Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16876: CollateralPage Insurance details <Validity> Cover Note Creation Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16877: CollateralPage Insurance details <Validity> Start Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16878: CollateralPage Insurance details <Validity> Maturity Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16879: CollateralPage Insurance details <Validity> Coverage Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16880: CollateralPage Insurance details <Validity> Premium Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16881: CollateralPage Insurance details <Validity> Loss Payee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Loss Payee | all possible characters                      | does not throw any error        | collateral.xlsx | insurance_details           | 110                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @SkippedFormatValidation
  @NotImplementable
    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario: ACAUTOCAS-5158:  CollateralPage insurance details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Mortgage Guarantee"
    Then user should be able to see all fields of "<insurance details>" with proper format

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5159:  CollateralPage insurance details label of <InsuranceDetails> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "<InsuranceDetails>" with proper labels
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Start Date               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
  Scenario Outline: ACAUTOCAS-5160:  Insurance details nominee screen validation of <FieldName> for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And click on plus icon to add nominee
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5161: CollateralPage Insurance details <Validity> Nominee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16882: CollateralPage Insurance details <Validity> Date Of Birth Of Nominee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Date Of Birth | current date        | throws error with error message | collateral.xlsx | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16883: CollateralPage Insurance details <Validity> Appointee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16884: CollateralPage Insurance details <Validity> Appointee DOB with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-ankit.yadav @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16885: CollateralPage Insurance details <Validity> Percentage Of Entitlement with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @SkippedFormatValidation
  @NotImplementable
    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario: ACAUTOCAS-5162:  CollateralPage nominee details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Mortgage Guarantee"
    Then user should be able to see all fields of "<nominee details>" with proper format

  @ImplementedBy-piyush.agnihotri @Release
  Scenario Outline: ACAUTOCAS-5163:  CollateralPage <NomineeDetails> data type and labels for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "<NomineeDetails>" with proper labels
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5094: Adding insurance details to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to fail with fail message due to <Collateral_insuranceDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 220                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5095:  Adding insurance and nominee details to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage successfully for <Collateral_insuranceDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then Insurance data should be saved successfully
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5164:  Adding additional insurance to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    Then user should be able to add more insurance to the collateral
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5165:  Modifying <FieldName> field of insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to modify "<FieldName>" field in insurance data
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5166:  Deleting insurance already to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user sees one or more insurances attached to the collateral
    Then user should be able to delete insurance added to the collateral
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5167:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to add nominee to the insurance
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5096:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to add nominee to the insurance
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5168:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee with less than 100% entitlement
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    And user fills nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 246                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 255                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5169:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add multiple nominees
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    When user add nominee to the insurance with mandatory values as
      | collateral.xlsx | insurance_details | 271 |
      | collateral.xlsx | insurance_details | 272 |
    And user clicks on Done Button in Insurance
    Then Insurance data should be saved successfully
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5170:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominees with more than 100% entitlement
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    When user add nominee to the insurance with mandatory values as
      | collateral.xlsx | insurance_details | 248 |
      | collateral.xlsx | insurance_details | 249 |
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 248                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5097:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee and there address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    When user add nominee to the insurance with address details
    Then nominee data should get saved successfully
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5098:  Adding minor nominee without appointee in insurance details of collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to get error message <description>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    When user add nominee to the insurance "<description>"
    Then user should receive failure message in insurance
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

  @ImplementedBy-piyush.agnihotri @Release
#FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5099:  In <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data reconcile to validate if insurance and nominee data was saved properly
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fills all insurance details of collateral subtype
    And user fills nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to see the data as available in excel file
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

    #FeatureID-ACAUTOCAS-8448,ACAUTOCAS-5080,ACAUTOCAS-6414
  @ImplementedBy-piyush.agnihotri @Release
Scenario Outline: ACAUTOCAS-16886: In <CollateralSubType> check pagination where more than 10 insurances are added
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to add multiple insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fills multiple insurance nominee details of collateral subtype
      | collateral.xlsx | insurance_details | 274 |
      | collateral.xlsx | insurance_details | 275 |
      | collateral.xlsx | insurance_details | 276 |
      | collateral.xlsx | insurance_details | 277 |
      | collateral.xlsx | insurance_details | 278 |
      | collateral.xlsx | insurance_details | 279 |
      | collateral.xlsx | insurance_details | 280 |
      | collateral.xlsx | insurance_details | 281 |
      | collateral.xlsx | insurance_details | 282 |
      | collateral.xlsx | insurance_details | 283 |
      | collateral.xlsx | insurance_details | 284 |
      | collateral.xlsx | insurance_details | 285 |
      | collateral.xlsx | insurance_details | 286 |
      | collateral.xlsx | insurance_details | 287 |
    Then user should be able to see the insurance grid block with all records
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
