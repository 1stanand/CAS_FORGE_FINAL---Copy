@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@Sanity
@ReviewedSecCollateral
@ReleaseSecCollateralM5

#${ApplicantType:["indiv", "nonindiv"]}
#${CollateralSubType:["National Saving Certificate"]}
Feature: National Saving Certificate Insurance Addition

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5188:  Insurance addition to National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    Then user should be able to add Insurance to the collateral
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5189:  Insurance details <Entity> entity validation for collateral National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section
    Then user should be able to see "<Entity>" entity
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Entity            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Insurance Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee Details   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Entity            | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Insurance Details | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nominee Details   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Entity            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Insurance Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee Details   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5190:  Insurance details screen validation of <FieldName> field for collateral National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5191: CollateralPage Insurance details <Validity>  Policy Number with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16887: CollateralPage Insurance details <Validity> Cover Note Number with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16888: CollateralPage Insurance details <Validity> Cover Note Creation Date with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16889: CollateralPage Insurance details <Validity> Start Date with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16890: CollateralPage Insurance details <Validity> Maturity Date with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16891: CollateralPage Insurance details <Validity> Coverage Amount with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16892: CollateralPage Insurance details <Validity> Premium Amount with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16893: CollateralPage Insurance details <Validity> Loss Payee with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Loss Payee | positive digits                              | does not throw any error        | collateral.xlsx | insurance_details           | 110                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | characters                                   | does not throw any error        | collateral.xlsx | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | both digits and characters                   | does not throw any error        | collateral.xlsx | insurance_details           | 112                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | negative                                     | does not throw any error        | collateral.xlsx | insurance_details           | 113                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | space                                        | does not throw any error        | collateral.xlsx | insurance_details           | 114                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | first character as special symbols           | does not throw any error        | collateral.xlsx | insurance_details           | 115                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | last character as special symbols            | does not throw any error        | collateral.xlsx | insurance_details           | 116                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | consecutive special characters               | does not throw any error        | collateral.xlsx | insurance_details           | 117                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | non-consecutive special characters           | does not throw any error        | collateral.xlsx | insurance_details           | 118                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Loss Payee | positive digits                              | does not throw any error        | collateral.xlsx | insurance_details           | 110                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | characters                                   | does not throw any error        | collateral.xlsx | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | both digits and characters                   | does not throw any error        | collateral.xlsx | insurance_details           | 112                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | negative                                     | does not throw any error        | collateral.xlsx | insurance_details           | 113                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | space                                        | does not throw any error        | collateral.xlsx | insurance_details           | 114                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | first character as special symbols           | does not throw any error        | collateral.xlsx | insurance_details           | 115                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | last character as special symbols            | does not throw any error        | collateral.xlsx | insurance_details           | 116                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | consecutive special characters               | does not throw any error        | collateral.xlsx | insurance_details           | 117                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Loss Payee | non-consecutive special characters           | does not throw any error        | collateral.xlsx | insurance_details           | 118                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Loss Payee | positive digits                              | does not throw any error        | collateral.xlsx | insurance_details           | 110                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | characters                                   | does not throw any error        | collateral.xlsx | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | both digits and characters                   | does not throw any error        | collateral.xlsx | insurance_details           | 112                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | negative                                     | does not throw any error        | collateral.xlsx | insurance_details           | 113                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | space                                        | does not throw any error        | collateral.xlsx | insurance_details           | 114                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | first character as special symbols           | does not throw any error        | collateral.xlsx | insurance_details           | 115                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | last character as special symbols            | does not throw any error        | collateral.xlsx | insurance_details           | 116                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | consecutive special characters               | does not throw any error        | collateral.xlsx | insurance_details           | 117                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Loss Payee | non-consecutive special characters           | does not throw any error        | collateral.xlsx | insurance_details           | 118                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16894: CollateralPage Insurance details <Validity> Date Of Birth Of Nominee with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | current date        | throws error with error message | collateral.xlsx | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date Of Birth | current date        | throws error with error message | collateral.xlsx | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | current date        | throws error with error message | collateral.xlsx | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16895: CollateralPage Insurance details <Validity> Appointee DOB with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16896: CollateralPage Nominee details <Validity> Nominee Name with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Nominee Name | positive digits            | does not throw any error        | collateral.xlsx | insurance_details           | 120                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Nominee Name | characters                 | does not throw any error        | collateral.xlsx | insurance_details           | 121                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Nominee Name | positive digits            | does not throw any error        | collateral.xlsx | insurance_details           | 120                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Nominee Name | characters                 | does not throw any error        | collateral.xlsx | insurance_details           | 121                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Nominee Name | positive digits            | does not throw any error        | collateral.xlsx | insurance_details           | 120                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Nominee Name | characters                 | does not throw any error        | collateral.xlsx | insurance_details           | 121                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-16897: CollateralPage Insurance details <Validity> Percentage Of Entitlement with <InputType> validation for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @SkippedFormatValidation
    #FeatureID-ACAUTOCAS-237
  Scenario: ACAUTOCAS-5192:  CollateralPage insurance details format validation for collateral Sub Type National Saving Certificate
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "National Saving Certificate"
    Then user should be able to see all fields of "<insurance details>" with proper format

    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5193:  CollateralPage insurance details label of <FieldName> for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section
    Then user should be able to see all fields of "<FieldName>" with proper labels
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Policy Number            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Start Date               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5194:  Insurance details nominee screen validation of <FieldName> for collateral National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @SkippedFormatValidation
     #FeatureID-ACAUTOCAS-237
  Scenario: ACAUTOCAS-5196:  CollateralPage nominee details format validation for collateral Sub Type National Saving Certificate
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Deposit" and Sub Type "National Saving Certificate"
    Then user should be able to see all fields of "<nominee details>" with proper format

    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5197:  CollateralPage nominee details label of <FieldName> field for collateral Sub Type National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section
    Then user should be able to see all fields of "<NomineeDetails>" with proper labels
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Gender                    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Nominee address           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5106:  Adding insurance details to a collateral National Saving Certificate to fail with "<SaveMessage>" of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 220                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 220                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 220                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5107:  Adding insurance and nominee details to a collateral National Saving Certificate successfully of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then Insurance data should be saved successfully
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 263                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 264                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 263                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 264                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 263                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 264                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


       #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5198:  Adding additional insurance to a collateral National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    Then user should be able to add more insurance to the collateral
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5199:  Modifying <FieldName> field of insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to modify the insurance data in field "<FieldName>"field marked as "<Mandatory>"
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 234                                | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 235                                | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 236                                | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 237                                | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 238                                | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 239                                | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 240                                | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 241                                | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 242                                | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 243                                | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 234                                | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 235                                | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 236                                | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 237                                | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 238                                | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 239                                | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 240                                | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 241                                | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 242                                | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 243                                | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 234                                | Insurance Company        | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 235                                | Policy Number            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 236                                | Cover Note Number        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 237                                | Cover Note Creation Date | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 238                                | Start Date               | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 239                                | Maturity Date            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 240                                | Coverage Type            | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 241                                | Coverage Amount          | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 242                                | Premium Amount           | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | insurance_details           | 243                                | Loss Payee               | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


##FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5200:  Deleting insurance already to a collateral National Saving Certificate of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user sees one or more insurances attached to the collateral
    Then user should be able to delete insurance added to the collateral
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5201:  Modifying insurance details attached to a collateral National Saving Certificate to add nominee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to add nominee to the insurance
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5108:  Modifying insurance details attached to a collateral National Saving Certificate to add nominee of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    And user fills nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then nominee data should get saved successfully
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 245                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 245                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | insurance_details           | 245                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5202:  Modifying insurance details attached to a collateral National Saving Certificate to add nominee with less than 100% entitlement of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralInsuranceWB>" under sheet "<CollateralInsuranceWB_home>" and row <CollateralInsuranceWB_home_rowNum>
    And user fills all insurance details of collateral subtype
    When user add multiple nominee to the insurance
      | collateral.xlsx | insurance_details | 299 |
      | collateral.xlsx | insurance_details | 300 |
    Then user should get a proper notification message
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx       | insurance_details          | 1                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx       | insurance_details          | 1                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx       | insurance_details          | 1                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5203:  Modifying insurance details attached to a collateral National Saving Certificate to add multiple nominees of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    When user add multiple nominee to the insurance
      | collateral.xlsx | insurance_details | 271 |
      | collateral.xlsx | insurance_details | 272 |
    Then Insurance data should be saved successfully
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 1                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 1                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 1                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5204:  Modifying insurance details attached to a collateral National Saving Certificate to add nominees with more than 100% entitlement of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralInsuranceWB>" under sheet "<CollateralInsuranceWB_home>" and row <CollateralInsuranceWB_home_rowNum>
    And user fills all insurance details of collateral subtype
    When user add multiple nominee to the insurance
      | collateral.xlsx | insurance_details | 43 |
      | collateral.xlsx | insurance_details | 44 |
    Then user should receive failure message in insurance
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx       | insurance_details          | 1                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx       | insurance_details          | 1                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralInsuranceWB | CollateralInsuranceWB_home | CollateralInsuranceWB_home_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx       | insurance_details          | 1                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


#FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5109:  Modifying insurance details attached to a collateral National Saving Certificate to add nominee and there address of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user add nominee to the insurance with address details
    Then nominee data should get saved successfully
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5110:  Adding minor nominee without appointee in insurance details of collateral National Saving Certificate to get message "<ErrorMessage>" of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    When user add nominee to the insurance "<description>"
    Then user should receive failure message in insurance
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    #FeatureID-ACAUTOCAS-237
  Scenario Outline: ACAUTOCAS-5111:  National Saving Certificate data reconcile to validate if insurance and nominee data was saved properly of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 347
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user opens Collateral Page
    And user click on modify collateral subtype
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    When user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should be able to see the data as available in excel file
     	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 263                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 264                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 263                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 264                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 262                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 263                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | insurance_details           | 264                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @ImplementedBy-priyanshu.kashyap
    @Release3
#FeatureID-ACAUTOCAS-237,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-8922:  In "<CollateralSubType>" check pagination where more than 10 insurances are added
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user saves the data of collateral subtype to edit collateral
    And user opens Collateral Page
    When user attempts to modify collateral based on "<CollateralSubType>"
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
      | collateral.xlsx | insurance_details | 288 |
    Then user should be able to see the insurance grid block with all records
    	    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    @ImplementedBy-aditya.tomar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum |
      | collateral.xlsx | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | national_saving_certificate            | 0                                             |

#${ProductType:["IPF"]}
#${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
#${Category:["SHARES","BONDS","METALS"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum |
      | collateral.xlsx | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | national_saving_certificate            | 0                                             |


	#${ProductType:["IAF","IHF"]}
#${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-aditya.tomar
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum |
      | collateral.xlsx | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | national_saving_certificate            | 0                                             |

