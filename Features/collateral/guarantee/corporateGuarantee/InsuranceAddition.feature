@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-tushar.chauhan
@Reconciled
@ReviewedByDEV


#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
#${CollateralSubType:["Corporate Guarantee"]}

Feature: Corporate Guarantee Insurance Addition

#  Pre-Requisites---
#  In this feature we will attach Insurance to the Collateral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5171:  Insurance addition to <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    Then user should be able to add Insurance to the collateral
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5172:  Insurance details <Entity> entity validation for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see "<Entity>" entity
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Entity            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Details   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Entity            | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Details | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Details   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Entity            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Details   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5173:  Insurance details screen validation of <FieldName> field for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5174: CollateralPage Insurance details <Validity>  Policy Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16953: CollateralPage Insurance details <Validity> Cover Note Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16954: CollateralPage Insurance details <Validity> Cover Note Creation Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16955: CollateralPage Insurance details <Validity> Start Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16956: CollateralPage Insurance details <Validity> Maturity Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16957: CollateralPage Insurance details <Validity> Coverage Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16958: CollateralPage Insurance details <Validity> Premium Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16959: CollateralPage Insurance details <Validity> Loss Payee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Loss Payee | All possible characters                      | does not throw any error        | collateral.xlsx | insurance_details           | 110                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Loss Payee | All possible characters                      | does not throw any error        | collateral.xlsx | insurance_details           | 110                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Loss Payee | All possible characters                      | does not throw any error        | collateral.xlsx | insurance_details           | 110                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

  @SkippedFormatValidation
#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario: ACAUTOCAS-5175:  CollateralPage insurance details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Corporate Guarantee"
    Then user should be able to see all fields of "<insurance details>" with proper format


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5176:  CollateralPage insurance details label of <FieldName> for collateral Sub Type Corporate Guarante
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "<InsuranceDetails>" with proper labels
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Policy Number            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Start Date               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5177:  Insurance details nominee screen validation of <FieldName> for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And click on plus icon to add nominee
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5178: CollateralPage Insurance details <Validity> Nominee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

# ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16960: CollateralPage Insurance details <Validity> Date Of Birth Of Nominee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | current date        | throws error with error message | collateral.xlsx | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | current date        | throws error with error message | collateral.xlsx | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | current date        | throws error with error message | collateral.xlsx | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16961: CollateralPage Insurance details <Validity> Appointee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
   #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16962: CollateralPage Insurance details <Validity> Appointee DOB with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav

    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16963: CollateralPage Insurance details <Validity> Percentage Of Entitlement with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

  @SkippedFormatValidation
  @NotImplementable
  #FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario: ACAUTOCAS-5179:  CollateralPage nominee details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Guarantee" and Sub Type "Corporate Guarantee"
    Then user should be able to see all fields of "<nominee details>" with proper format


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5180: CollateralPage <NomineeDetails> data type and labels for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "<NomineeDetails>" with proper labels
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Gender                    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee address           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum | CollateralWB    |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          | collateral.xlsx |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5100:  Adding insurance details to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to fail with fail message due to <Collateral_insuranceDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 215                                | pl            | dde                |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 220                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 215                                | pl            | dde                |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 220                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 215                                | pl            | dde                |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 220                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5101:  Adding insurance and nominee details to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage successfully for <Collateral_insuranceDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then Insurance data should be saved successfully
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

     # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5181:  Adding additional insurance to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    Then user should be able to add more insurance to the collateral
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5182: Modifying <FieldName> field of insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to modify "<FieldName>" field in insurance data
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5183:  Deleting insurance already to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user sees one or more insurances attached to the collateral
    Then user should be able to delete insurance added to the collateral
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5102:  Modifying insurance details attached to a collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee details
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to add nominee to the insurance
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


  Scenario Outline: ACAUTOCAS-5184:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to add nominee to the insurance
      #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-piyush.agnihotri
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5185:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee with less than 100% entitlement
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
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
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 246                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @LoggedBug
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 255                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 246                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @LoggedBug
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 255                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 246                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @LoggedBug
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 255                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5186:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add multiple nominees
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
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
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5187:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominees with more than 100% entitlement
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
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
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-tushar.chauhan

    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 248                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 248                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 248                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5103:  Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee and there address
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
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
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5104:  Adding minor nominee without appointee in insurance details of collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to get error message <description>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user opens Collateral Page
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    When user add nominee to the insurance "<description>"
    Then user should receive failure message in insurance
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-tushar.chauhan
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

    @Conventional @Release
    @ImplementedBy-tushar.chauhan
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

   # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @LoggedBug
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
      | collateral.xlsx | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @LoggedBug
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
  Scenario Outline: ACAUTOCAS-5105:  <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data reconcile to validate if insurance and nominee data was saved properly
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields for Collateral subtype Corporate Guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_identification" and row 7
    And user enters the identification details for Collateral subtype corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "guarantor_address" and row 7
    And user enters the address details under corporate guarantee
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 348
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
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-aniket.tripathi
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


#FeatureID-ACAUTOCAS-8447,ACAUTOCAS-5080
Scenario Outline: ACAUTOCAS-16964: In <CollateralSubType> to <ProductType> application at <ApplicationStage> stage check pagination where more than 10 insurances are added
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
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Conventional @Release
    @ImplementedBy-ankit.yadav
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |

        # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic @Release
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Collateral_defaultSheet | Collateral_defaultSheet_rowNum | Collateral_FdSheet | Collateral_dFdSheet_rowNum |
      | collateral.xlsx | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | default                 | 16                             | fixed_deposit      | 0                          |
