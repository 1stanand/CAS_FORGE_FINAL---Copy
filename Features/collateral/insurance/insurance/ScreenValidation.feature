@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Insurance"]}

Feature: Insurance Screen Validation

#  Pre-Requisites---
#  In this feature we will validate the screen layout when a collateral insurance is attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @ImplementedBy-akash.bansal
  @Release2
  Scenario Outline: ACAUTOCAS-2198: user selects collateral type as Insurance to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user attempts to select a collateral type
    Then application should allow only the type which is linked to the product
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
  Scenario Outline: ACAUTOCAS-2199: user chooses sub collateral as Insurance to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the type which is linked to the product

    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | collateral.xlsx | insurance_details           | 365                                  | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
#  Scenario Outline: User is able to see all entities for new collateral Insurance.
  Scenario Outline: ACAUTOCAS-1327: User is able to see all entities for new collateral Insurance to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user selects collateral type along with collateral sub type
    Then User should be able to see "<SectionName>"
    Examples:
      | SectionName       | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | Insurance Details | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details   | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
  Scenario Outline: ACAUTOCAS-1328: User is able to see <FieldName> for new collateral Insurance to <ProductType> application at <ApplicationStage> stage marked mandatory as <Mandatory>
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | FieldName                | Mandatory | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | Collateral Ref No        | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Description              | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Policy Holder Name       | Yes       | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Policy Holder Name 2     | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Policy Holder Name 3     | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Policy Number            | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Cover Note Number        | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Cover Note Creation Date | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Policy Value             | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Surrender Amount         | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Insurance Type           | Yes       | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Insurance Provider       | Yes       | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Issue Date               | Yes       | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Maturity Date            | Yes       | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Premium Due Date         | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Premium Paid Upto        | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Single Premium Paid      | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Face Value               | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Accrued Value            | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Maturity Value           | Yes       | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-2200: CollateralPage Insurance details <Validity> Collateral Ref No with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    Examples:
      | Validity | FieldName         | InputType                        | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Collateral Ref No | positive digits                  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 315                                | <ProductType> | <ApplicationStage> |
      | valid    | Collateral Ref No | characters                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 316                                | <ProductType> | <ApplicationStage> |
      | valid    | Collateral Ref No | both digits and characters       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 317                                | <ProductType> | <ApplicationStage> |
      | valid    | Collateral Ref No | negative                         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 318                                | <ProductType> | <ApplicationStage> |
      | valid    | Collateral Ref No | hyphen                           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 319                                | <ProductType> | <ApplicationStage> |
      | valid    | Collateral Ref No | space                            | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 320                                | <ProductType> | <ApplicationStage> |
      | invalid  | Collateral Ref No | special characters except hyphen | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 321                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16853: CollateralPage Insurance details <Validity> Description with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details

    Examples:
      | Validity | FieldName   | InputType                  | Throws_NotThrows         | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Description | positive digits            | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 322                                | <ProductType> | <ApplicationStage> |
      | valid    | Description | characters                 | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 323                                | <ProductType> | <ApplicationStage> |
      | valid    | Description | both digits and characters | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 324                                | <ProductType> | <ApplicationStage> |
      | valid    | Description | negative                   | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 325                                | <ProductType> | <ApplicationStage> |
      | valid    | Description | space                      | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 326                                | <ProductType> | <ApplicationStage> |
      | valid    | Description | special characters         | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 327                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16854: CollateralPage Insurance details <Validity> Policy Holder Name with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName          | InputType                        | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | invalid  | Policy Holder Name | positive digits                  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 429                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Holder Name | characters                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 430                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name | both digits and characters       | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 431                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name | negative                         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 432                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Holder Name | space                            | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 433                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name | special characters except hyphen | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 434                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16855: CollateralPage Insurance details <Validity> Policy Holder Name 2 with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | invalid  | Policy Holder Name 2 | positive digits                  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 435                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Holder Name 2 | characters                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 436                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name 2 | both digits and characters       | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 437                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name 2 | negative                         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 438                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Holder Name 2 | space                            | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 439                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name 2 | special characters except hyphen | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 440                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16856: CollateralPage Insurance details <Validity> Policy Holder Name 3 with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | invalid  | Policy Holder Name 3 | positive digits                  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 441                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Holder Name 3 | characters                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 442                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name 3 | both digits and characters       | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 443                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name 3 | negative                         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 444                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Holder Name 3 | space                            | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 445                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Holder Name 3 | special characters except hyphen | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 446                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16857: CollateralPage Insurance details <Validity> Policy Number with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 447                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Number | characters                         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 448                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 449                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Number | negative                           | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 450                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Number | space                              | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 451                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 452                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 453                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 454                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 455                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16858: CollateralPage Insurance details <Validity> Cover Note Number with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 456                                | <ProductType> | <ApplicationStage> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 457                                | <ProductType> | <ApplicationStage> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 458                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 459                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Number | space                              | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 460                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 461                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 462                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 463                                | <ProductType> | <ApplicationStage> |
      | valid    | Cover Note Number | non-consecutive special characters | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 464                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 465                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16859: CollateralPage Insurance details <Validity> Cover Note Creation Date with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 466                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 467                                | <ProductType> | <ApplicationStage> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 468                                | <ProductType> | <ApplicationStage> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 469                                | <ProductType> | <ApplicationStage> |
      | valid    | Cover Note Creation Date | future date         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 470                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 471                                | <ProductType> | <ApplicationStage> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 472                                | <ProductType> | <ApplicationStage> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 473                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16860: CollateralPage Insurance details <Validity> Policy Value with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Policy Value | positive                   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 474                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Value | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 475                                | <ProductType> | <ApplicationStage> |
      | valid    | Policy Value | zero                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 476                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Value | characters                 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 477                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Value | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 478                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Value | space                      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 479                                | <ProductType> | <ApplicationStage> |
      | invalid  | Policy Value | special characters         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 480                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16861: CollateralPage Insurance details <Validity> Surrender Amount with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName        | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Surrender Amount | positive                   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 424                                | <ProductType> | <ApplicationStage> |
      | invalid  | Surrender Amount | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 425                                | <ProductType> | <ApplicationStage> |
      | valid    | Surrender Amount | zero                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 426                                | <ProductType> | <ApplicationStage> |
      | invalid  | Surrender Amount | characters                 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 427                                | <ProductType> | <ApplicationStage> |
      | invalid  | Surrender Amount | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 428                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16862: CollateralPage Insurance details <Validity> Issue Date with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName               | InputType           | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Issue Date Of Insurance | valid date format   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 481                                | <ProductType> | <ApplicationStage> |
      | invalid  | Issue Date Of Insurance | invalid date format | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 482                                | <ProductType> | <ApplicationStage> |
      | valid    | Issue Date Of Insurance | current date        | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 483                                | <ProductType> | <ApplicationStage> |
      | valid    | Issue Date Of Insurance | past date           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 484                                | <ProductType> | <ApplicationStage> |
      | valid    | Issue Date Of Insurance | future date         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 485                                | <ProductType> | <ApplicationStage> |
      | invalid  | Issue Date Of Insurance | year less than 1942 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 486                                | <ProductType> | <ApplicationStage> |
      | valid    | Issue Date Of Insurance | year equal to 1942  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 487                                | <ProductType> | <ApplicationStage> |
      | invalid  | Issue Date Of Insurance | special characters  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 488                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16863: CollateralPage Insurance details <Validity> Maturity Date with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName                  | InputType           | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Maturity Date Of Insurance | valid date format   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 489                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Date Of Insurance | invalid date format | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 490                                | <ProductType> | <ApplicationStage> |
      | valid    | Maturity Date Of Insurance | current date        | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 491                                | <ProductType> | <ApplicationStage> |
      | valid    | Maturity Date Of Insurance | past date           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 492                                | <ProductType> | <ApplicationStage> |
      | valid    | Maturity Date Of Insurance | future date         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 493                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Date Of Insurance | year less than 1942 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 494                                | <ProductType> | <ApplicationStage> |
      | valid    | Maturity Date Of Insurance | year equal to 1942  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 495                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Date Of Insurance | special characters  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 496                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16864: CollateralPage Insurance details <Validity> Premium Due Date with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName        | InputType           | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Premium Due Date | valid date format   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 497                                | <ProductType> | <ApplicationStage> |
      | invalid  | Premium Due Date | invalid date format | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 498                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Due Date | current date        | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 499                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Due Date | past date           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 500                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Due Date | future date         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 501                                | <ProductType> | <ApplicationStage> |
      | invalid  | Premium Due Date | year less than 1942 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 502                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Due Date | year equal to 1942  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 503                                | <ProductType> | <ApplicationStage> |
      | invalid  | Premium Due Date | special characters  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 504                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16865: CollateralPage Insurance details <Validity> Premium Paid Upto with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName         | InputType           | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Premium Paid Upto | valid date format   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 505                                | <ProductType> | <ApplicationStage> |
      | invalid  | Premium Paid Upto | invalid date format | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 506                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Paid Upto | current date        | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 507                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Paid Upto | past date           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 508                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Paid Upto | future date         | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 509                                | <ProductType> | <ApplicationStage> |
      | invalid  | Premium Paid Upto | year less than 1942 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 510                                | <ProductType> | <ApplicationStage> |
      | valid    | Premium Paid Upto | year equal to 1942  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 511                                | <ProductType> | <ApplicationStage> |
      | invalid  | Premium Paid Upto | special characters  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 512                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16866: CollateralPage Insurance details <Validity> Single Premium Paid with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName           | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Single Premium Paid | positive                   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 513                                | <ProductType> | <ApplicationStage> |
      | invalid  | Single Premium Paid | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 514                                | <ProductType> | <ApplicationStage> |
      | valid    | Single Premium Paid | zero                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 515                                | <ProductType> | <ApplicationStage> |
      | invalid  | Single Premium Paid | characters                 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 516                                | <ProductType> | <ApplicationStage> |
      | invalid  | Single Premium Paid | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 517                                | <ProductType> | <ApplicationStage> |
      | invalid  | Single Premium Paid | space                      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 518                                | <ProductType> | <ApplicationStage> |
      | invalid  | Single Premium Paid | special characters         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 519                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16867: CollateralPage Insurance details <Validity> Face Value with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName  | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Face Value | positive                   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 520                                | <ProductType> | <ApplicationStage> |
      | invalid  | Face Value | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 521                                | <ProductType> | <ApplicationStage> |
      | valid    | Face Value | zero                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 522                                | <ProductType> | <ApplicationStage> |
      | invalid  | Face Value | characters                 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 523                                | <ProductType> | <ApplicationStage> |
      | invalid  | Face Value | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 524                                | <ProductType> | <ApplicationStage> |
      | invalid  | Face Value | space                      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 525                                | <ProductType> | <ApplicationStage> |
      | invalid  | Face Value | special characters         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 526                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16868: CollateralPage Insurance details <Validity> Accrued Value with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName     | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Accrued Value | positive                   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 527                                | <ProductType> | <ApplicationStage> |
      | invalid  | Accrued Value | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 528                                | <ProductType> | <ApplicationStage> |
      | valid    | Accrued Value | zero                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 529                                | <ProductType> | <ApplicationStage> |
      | invalid  | Accrued Value | characters                 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 530                                | <ProductType> | <ApplicationStage> |
      | invalid  | Accrued Value | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 531                                | <ProductType> | <ApplicationStage> |
      | invalid  | Accrued Value | space                      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 532                                | <ProductType> | <ApplicationStage> |
      | invalid  | Accrued Value | special characters         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 533                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16869: CollateralPage Insurance details <Validity> Maturity Value with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills collateral details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Maturity Value | positive                   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 534                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Value | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 535                                | <ProductType> | <ApplicationStage> |
      | valid    | Maturity Value | zero                       | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 536                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Value | characters                 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 537                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Value | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 538                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Value | space                      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 539                                | <ProductType> | <ApplicationStage> |
      | invalid  | Maturity Value | special characters         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 540                                | <ProductType> | <ApplicationStage> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-2201:  CollateralPage Insurance details format validation for collateral Sub Type Insurance
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Insurance" and Sub Type "Insurance"
    Then user should be able to see all fields of "<Insurance details>" with proper format

  @ImplementedBy-akash.bansal
  @Release2
  Scenario Outline: ACAUTOCAS-2202: Collateral Page Insurance details labels for field <FieldName> for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of "<CollateralSubType>" with proper labels

    Examples:
      | FieldName                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | CollateralSubType   | ProductType   | ApplicationStage   |
      | Collateral Ref No        | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Description              | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Policy Holder Name       | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Policy Holder Name 2     | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Policy Holder Name 3     | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Policy Number            | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Cover Note Number        | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Cover Note Creation Date | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Policy Value             | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Surrender Amount         | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Insurance Type           | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Insurance Provider       | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Issue Date               | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Maturity Date            | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Premium Due Date         | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Premium Paid Upto        | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Single Premium Paid      | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Face Value               | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Accrued Value            | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Maturity Value           | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16870: Collateral Page Reason details labels for field <FieldName> for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of "<CollateralSubType>" with proper labels

    Examples:
      | FieldName          | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | CollateralSubType   | ProductType   | ApplicationStage   |
      | Reason Code        | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Reason Description | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Remarks            | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-1329: User is able to see <FieldName> for new collateral Insurance to <ProductType> application at <ApplicationStage> stage in Nominee Details marked mandatory as <Mandatory>
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" section
    Then user should be able to see field "<FieldName>" marked mandatory as "<Mandatory>"
    Examples:
      | SectionName     | FieldName                 | Mandatory | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | Nominee Details | Nominee Name              | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Nominee Relationship      | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Gender                    | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Date of Birth             | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Is Minor?                 | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Appointee Name            | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Appointee Relationship    | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Appointee DOB             | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Nominee address           | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |
      | Nominee Details | Percentage of Entitlement | No        | collateral.xlsx | insurance_details           | 365                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-2203: CollateralPage Insurance details <Validity> Nominee Name with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills nominee details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | invalid  | Nominee Name | positive digits            | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 541                                | <ProductType> | <ApplicationStage> |
      | valid    | Nominee Name | characters                 | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 542                                | <ProductType> | <ApplicationStage> |
      | invalid  | Nominee Name | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 543                                | <ProductType> | <ApplicationStage> |
      | invalid  | Nominee Name | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 544                                | <ProductType> | <ApplicationStage> |
      | valid    | Nominee Name | space                      | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 545                                | <ProductType> | <ApplicationStage> |
      | invalid  | Nominee Name | special characters         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 546                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16871: CollateralPage Insurance details <Validity> Date Of Birth with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills nominee details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 547                                | <ProductType> | <ApplicationStage> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 548                                | <ProductType> | <ApplicationStage> |
      | valid    | Date Of Birth | current date        | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 549                                | <ProductType> | <ApplicationStage> |
      | valid    | Date Of Birth | past date           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 550                                | <ProductType> | <ApplicationStage> |
      | valid    | Date Of Birth | future date         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 551                                | <ProductType> | <ApplicationStage> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 552                                | <ProductType> | <ApplicationStage> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 553                                | <ProductType> | <ApplicationStage> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 554                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16872: CollateralPage Insurance details <Validity> Appointee Name with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills nominee details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName      | InputType  | Throws_NotThrows         | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Appointee Name | characters | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 555                                | <ProductType> | <ApplicationStage> |
      | valid    | Appointee Name | space      | does not throw any error | <CollateralSubType> | collateral.xlsx | insurance_details           | 556                                | <ProductType> | <ApplicationStage> |

  @LoggedBug
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | invalid  | Appointee Name | positive digits            | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 557                                | <ProductType> | <ApplicationStage> |
      | invalid  | Appointee Name | both digits and characters | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 558                                | <ProductType> | <ApplicationStage> |
      | invalid  | Appointee Name | negative                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 559                                | <ProductType> | <ApplicationStage> |
      | invalid  | Appointee Name | special characters         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 560                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16873: CollateralPage Insurance details <Validity> Appointee DOB with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills nominee details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 561                                | <ProductType> | <ApplicationStage> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 562                                | <ProductType> | <ApplicationStage> |
      | valid    | Appointee DOB | current date        | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 563                                | <ProductType> | <ApplicationStage> |
      | valid    | Appointee DOB | past date           | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 564                                | <ProductType> | <ApplicationStage> |
      | invalid  | Appointee DOB | future date         | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 565                                | <ProductType> | <ApplicationStage> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 566                                | <ProductType> | <ApplicationStage> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 567                                | <ProductType> | <ApplicationStage> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 568                                | <ProductType> | <ApplicationStage> |

  @ImplementedBy-akash.bansal
  @Release2
    #FeatureID-ACAUTOCAS-238
Scenario Outline: ACAUTOCAS-16874: CollateralPage Insurance details <Validity> Percentage Of Entitlement with <InputType> validation for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills nominee details with "<Validity>" "<FieldName>" with "<InputType>" for "<CollateralSubType>" in collateral page
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralSubType   | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 569                                | <ProductType> | <ApplicationStage> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 570                                | <ProductType> | <ApplicationStage> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | <CollateralSubType> | collateral.xlsx | insurance_details           | 571                                | <ProductType> | <ApplicationStage> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 572                                | <ProductType> | <ApplicationStage> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 573                                | <ProductType> | <ApplicationStage> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 574                                | <ProductType> | <ApplicationStage> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 575                                | <ProductType> | <ApplicationStage> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 576                                | <ProductType> | <ApplicationStage> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | <CollateralSubType> | collateral.xlsx | insurance_details           | 577                                | <ProductType> | <ApplicationStage> |

  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2204:  CollateralPage vehicle details format validation for collateral Sub Type Insurance
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Insurance" and Sub Type "Insurance"
    Then user should be able to see all fields of "<Nominee Details>" with proper format

  @ImplementedBy-akash.bansal
  @Release2
  Scenario Outline: ACAUTOCAS-2205: Collateral Page Nominee details labels for field <FieldName> for collateral Sub Type Insurance
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" of "<CollateralSubType>" with proper labels

    Examples:
      | FieldName                 | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | CollateralSubType   | ProductType   | ApplicationStage   |
      | Nominee Name              | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Nominee Relationship      | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Gender                    | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Date of Birth             | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Is Minor?                 | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Appointee Name            | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Appointee Relationship    | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Appointee DOB             | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Nominee address           | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |
      | Percentage Of Entitlement | collateral.xlsx | insurance_details           | 365                                | <CollateralSubType> | <ProductType> | <ApplicationStage> |

