@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Part-2

#${CollateralSubType:["Commercial Vehicle"]}
Feature: Commercial Vehicle Insurance Addition

#  Pre-Requisites---
#  In this feature we will attach Insurance to the Collateral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2074: Insurance addition to a <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    Then user should be able to add Insurance to the collateral

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


##Collateral Insurance Validations
  Scenario Outline: ACAUTOCAS-3625: Insurance details <Entity> entity validation for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see "<Entity>" entity

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Entity            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | Insurance Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | Nominee Details   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Entity            | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | Insurance Details | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | Nominee Details   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Entity            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | Insurance Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | Nominee Details   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3626: Insurance details screen validation of <FieldName> for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Company        | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Start Date               | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Insurance Company        | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Start Date               | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Company        | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Start Date               | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | non mandatory | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | mandatory     | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-2077: CollateralPage Insurance details <Validity>  Policy Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16673: CollateralPage Insurance details <Validity> Cover Note Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16674: CollateralPage Insurance details <Validity> Cover Note Creation Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16675: CollateralPage Insurance details <Validity> Start Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16676: CollateralPage Insurance details <Validity> Maturity Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16677: CollateralPage Insurance details <Validity> Coverage Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16678: CollateralPage Insurance details <Validity> Premium Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16679: CollateralPage Insurance details <Validity> Loss Payee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Loss Payee | all possible characters                      | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Loss Payee | all possible characters                      | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Loss Payee | all possible characters                      | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2078:  CollateralPage insurance details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Asset" and Sub Type "<CollateralSubType> to <ProductType> application at <ApplicationStage> stage"
    Then user should be able to see all fields of "<insurance details>" with proper format


  Scenario Outline: ACAUTOCAS-2483: CollateralPage insurance details label of <InsuranceDetails> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "<InsuranceDetails>" with proper labels

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Policy Number            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Start Date               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | InsuranceDetails         | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |


  Scenario Outline: ACAUTOCAS-2484: Insurance details nominee screen validation of <FieldName> for collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And click on plus icon to add nominee
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | FieldName                 | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Nominee Name              | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee Relationship      | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Date Of Birth             | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Gender                    | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Name            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Relationship    | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee DOB             | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee address           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Percentage Of Entitlement | mandatory     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Is Minor?                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |


  Scenario Outline: ACAUTOCAS-2081: CollateralPage Nominee details <Validity> Nominee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16680: CollateralPage Nominee details <Validity> Date Of Birth Of Nominee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16681: CollateralPage Nominee details <Validity> Appointee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16682: CollateralPage Nominee details <Validity> Appointee DOB with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-231,ACAUTOCAS-5080,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-16683: CollateralPage Nominee details <Validity> Percentage Of Entitlement with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @SkippedFormatValidation
  @NotImplementable
  Scenario: ACAUTOCAS-2082:  CollateralPage nominee details format validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Asset" and Sub Type "<CollateralSubType> to <ProductType> application at <ApplicationStage> stage"
    Then user should be able to see all fields of "<nominee details>" with proper format


  Scenario Outline: ACAUTOCAS-2485: CollateralPage nominee details label of <NomineeDetails> for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "<NomineeDetails>" with proper labels

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Gender                    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee address           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | NomineeDetails            | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | Nominee Name              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee Relationship      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Date of Birth             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Gender                    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Is Minor?                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Name            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee Relationship    | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Appointee DOB             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Nominee address           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |
      | Percentage of Entitlement | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                |


  Scenario Outline: ACAUTOCAS-2915: Adding insurance details to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to <Collateral_insuranceDetails_rowNum> with Fail Message
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-1093:  Adding insurance and nominee details to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage successfully for <Collateral_insuranceDetails_rowNum>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then Insurance data should be saved successfully

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-2084:  Adding additional insurance to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    Then user should be able to add more insurance to the collateral

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 247                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 247                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 247                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1094: Modifying insurance details <FieldName> attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2085: Deleting insurance already to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user sees one or more insurances attached to the collateral
    Then user should be able to delete insurance added to the collateral

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2086: Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1095: Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to save nominee
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1096: Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee with less than 100 percent entitlement
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 594                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 595                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 594                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 595                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 594                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 595                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2087: Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add multiple nominees
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1097: Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominees with more than 100% entitlement
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    When user add nominee to the insurance with mandatory values as
      | collateral.xlsx | insurance_details | 596 |
      | collateral.xlsx | insurance_details | 597 |
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-aditya.tomar
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 596                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 596                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 596                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline:  ACAUTOCAS-1098:Modifying insurance details attached to a collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to add nominee and there address
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-1099: Adding minor nominee without appointee in insurance details of collateral <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to without <description>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    When user add nominee to the insurance "<description>"
    Then user should receive failure message in insurance

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    @LoggedBug-ACAUTOCAS-7298
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    @LoggedBug-ACAUTOCAS-7298
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    @LoggedBug-ACAUTOCAS-7298
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-1100: <CollateralSubType> to <ProductType> application at <ApplicationStage> stage data reconcile to validate if insurance and nominee data was saved properly
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-8769: In <CollateralSubType> to <ProductType> application at <ApplicationStage> stage check pagination where more than 10 insurances are added
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
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
      | collateral.xlsx | insurance_details | 288 |
    Then user should be able to see the insurance grid block with all records

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
   @Islamic @Release
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

