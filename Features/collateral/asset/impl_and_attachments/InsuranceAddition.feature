@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByGWT
@ReviewedByDEV
@ReviewedSecCollateral
@new
@Release
@Part-2

#${CollateralSubType:["Implements and Attachments"]}
#${ApplicantType:["indiv", "nonIndiv"]}

Feature: Insurance Addition in Collateral SubType Implements and Attachments

#  Pre-Requisites---
# Already implemented all scenarios but we nedd to maintain the masters of assets details of Implements and Attachments collateral subtype
# @ImplementedBy-ankit.yadav
#  In this feature we will attach Insurance to the Collateral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8852:  Insurance addition to a <CollateralSubType> attached to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    Then user should be able to add Insurance to the collateral
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


##Collateral Insurance Validations
#Scenario: Insurance details entity validation for collateral Implements and Attachments
#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8853:  Insurance details entity validation of <Entity> for collateral <CollateralSubType> attached to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section
    Then user should be able to see "<Entity>" entity
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Entity            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Details | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee Details   | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Entity            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Insurance Details | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Nominee Details   | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Entity            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Details | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee Details   | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#  Scenario: Insurance details screen validation for collateral Implements and Attachments
#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8854:  Insurance details screen field validation for collateral <CollateralSubType> attached to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Company        | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Start Date               | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Insurance Company        | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Start Date               | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Company        | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Start Date               | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8855:  At <ApplicationStage> stage CollateralPage insurance details data type validation for <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    Then user should be able to see fields of Insurance Details with proper datatype
      | Fields                   | DataType |
      | Insurance Company        | Dropdown |
      | Policy Number            | Text     |
      | Cover Note Number        | Text     |
      | Cover Note Creation Date | Text     |
      | Start Date               | Text     |
      | Maturity Date            | Text     |
      | Coverage Type            | Dropdown |
      | Coverage Amount          | Text     |
      | Premium Amount           | Text     |
      | Loss Payee               | Text     |
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | asset_details           | 252                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | asset_details           | 252                            | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | CollateralSubType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | asset_details           | 252                            | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8855: CollateralPage Insurance details <Validity> Policy Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName     | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Policy Number | positive digits                    | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 53                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | characters                         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 54                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | both digits and characters         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 55                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | negative                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 56                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | space                              | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 57                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | first character as special symbols | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 58                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | last character as special symbols  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 59                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Policy Number | consecutive special characters     | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 60                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Policy Number | non-consecutive special characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 61                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16745: CollateralPage Insurance details <Validity> Cover Note Number with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName         | InputType                          | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Number | positive digits                    | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 62                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | characters                         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 63                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Number | both digits and characters         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 64                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | negative                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 65                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | space                              | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 66                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | first character as special symbols | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 67                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | last character as special symbols  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 68                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | consecutive special characters     | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 69                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | non-consecutive special characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 70                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Number | special characters except / \ - _  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 71                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16746: CollateralPage Insurance details <Validity> Cover Note Creation Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName                | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Cover Note Creation Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 72                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 73                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 74                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 75                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 76                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 77                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Cover Note Creation Date | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 78                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Cover Note Creation Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 79                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16747: CollateralPage Insurance details <Validity> Start Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName  | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Start Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 80                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 81                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 82                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 83                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | future date         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 84                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Start Date | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 86                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Start Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 87                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16748: CollateralPage Insurance details <Validity> Maturity Date with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Maturity Date | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 88                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 89                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 90                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | past date           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 91                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Maturity Date | future date         | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 92                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 93                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | year equal to 1942  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 94                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Maturity Date | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 95                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16749: CollateralPage Insurance details <Validity> Coverage Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName       | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Coverage Amount | positive                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 96                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 97                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Coverage Amount | zero                       | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 98                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | characters                 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 99                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 100                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | space                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 101                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Coverage Amount | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 102                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16750: CollateralPage Insurance details <Validity> Premium Amount with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Premium Amount | positive                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 103                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 104                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Premium Amount | zero                       | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 105                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | characters                 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 106                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | both digits and characters | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 107                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | space                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 108                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Premium Amount | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 109                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16751: CollateralPage Insurance details <Validity> Loss Payee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Loss Payee | characters                                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Loss Payee | characters                                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName  | InputType                                    | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Loss Payee | characters                                   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 111                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Loss Payee | special characters except /' , / - & ( ) !.$ | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 119                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @SkippedFormatValidation
#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8856:  At "<ApplicationStage>" stage CollateralPage insurance details format validation for <CollateralSubType> attached to <ProductType> application
    And user opens an application at "<ApplicationStage>" stage from application grid
    And user opens "CollateralPage"
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "insurance details" with proper format
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8857:  At <ApplicationStage> stage CollateralPage insurance details field label validation for <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section
    Then user should be able to see all fields of "<InsuranceDetails>" with proper labels
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | InsuranceDetails         | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Company        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Start Date               | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | InsuranceDetails         | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Insurance Company        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Start Date               | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | InsuranceDetails         | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Insurance Company        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Policy Number            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Number        | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Cover Note Creation Date | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Start Date               | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Maturity Date            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Type            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Coverage Amount          | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Premium Amount           | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Loss Payee               | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8858:  At <ApplicationStage> stage CollateralPage insurance nominee screen validation for <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And click on plus icon to add nominee
    Then user should be able to see insurance "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Nominee Name              | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee Relationship      | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date Of Birth             | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Gender                    | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Name            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Relationship    | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee DOB             | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee address           | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percentage Of Entitlement | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Minor?                 | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Nominee Name              | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Nominee Relationship      | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Date Of Birth             | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Gender                    | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Appointee Name            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Appointee Relationship    | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Appointee DOB             | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Nominee address           | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Percentage Of Entitlement | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Is Minor?                 | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                 | Mandatory     | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Nominee Name              | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee Relationship      | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date Of Birth             | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Gender                    | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Name            | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Relationship    | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee DOB             | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee address           | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percentage Of Entitlement | mandatory     | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Minor?                 | non mandatory | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @SkippedFormatValidation
#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8860:  At "<ApplicationStage>" stage CollateralPage insurance nominee data format validation for <CollateralSubType> attached to <ProductType> application
    And an "<ProductType>" application is available at "<ApplicationStage>" stage
    And collateral "<CollateralSubType>" is attached to the "<ProductType>" application
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user opens "CollateralPage"
    And user modifies the collateral "<CollateralSubType>"
    And user goes to insurance details section
    Then user should be able to see all fields of "nominee details" with proper format
    Examples:
      | ProductType   | ApplicationStage   | CollateralSubType   |
      | <ProductType> | <ApplicationStage> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8859: CollateralPage Insurance details <Validity> Nominee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName    | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Nominee Name | both digits and characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 122                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 123                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Nominee Name | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 124                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Nominee Name | space                      | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 125                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16752: CollateralPage Insurance details <Validity> Date Of Birth Of Nominee with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Date Of Birth | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 126                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 127                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 128                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 129                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 130                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 131                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Date Of Birth | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 132                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Date Of Birth | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 133                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16753: CollateralPage Insurance details <Validity> Appointee Name with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee Name | positive digits            | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 136                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee Name | both digits and characters | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 137                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | negative                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 138                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee Name | special characters         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 139                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16754: CollateralPage Insurance details <Validity> Appointee DOB with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName     | InputType           | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Appointee DOB | valid date format   | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 140                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | invalid date format | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 141                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | current date        | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 142                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | past date           | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 143                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | future date         | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 144                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | year less than 1942 | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 145                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Appointee DOB | year equal to 1942  | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 146                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Appointee DOB | special characters  | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 147                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-16755: CollateralPage Insurance details <Validity> Percentage Of Entitlement with <InputType> validation for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fill "<FieldName>" of insurance details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" in insurance details
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName                 | InputType                       | Throws_NotThrows                | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Percentage Of Entitlement | positive less than equal to 100 | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 148                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | negative                        | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 149                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Percentage Of Entitlement | zero                            | does not throw any error        | collateral.xlsx | asset_details           | 252                            | insurance_details           | 150                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 100                   | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 151                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | more than 2 decimal places      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 152                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | characters                      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 153                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | both digits and characters      | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 154                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | space                           | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 155                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Percentage Of Entitlement | special characters              | throws error with error message | collateral.xlsx | asset_details           | 252                            | insurance_details           | 156                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8861:  At <ApplicationStage> stage CollateralPage insurance nominee field label validation for <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section
    Then user should be able to see all fields of "<NomineeDetails>" with proper labels
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | NomineeDetails            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Nominee Name              | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee Relationship      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Birth             | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Gender                    | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Minor?                 | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Name            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Relationship    | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee DOB             | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee address           | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percentage of Entitlement | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | NomineeDetails            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Nominee Name              | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Nominee Relationship      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Date of Birth             | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Gender                    | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Is Minor?                 | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Appointee Name            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Appointee Relationship    | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Appointee DOB             | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Nominee address           | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Percentage of Entitlement | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | NomineeDetails            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Nominee Name              | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee Relationship      | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Date of Birth             | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Gender                    | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Is Minor?                 | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Name            | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee Relationship    | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Appointee DOB             | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Nominee address           | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Percentage of Entitlement | collateral.xlsx | asset_details           | 252                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8862:  Adding insurance details using Dataset <Collateral_insuranceDetails_rowNum> to a collateral <CollateralSubType> to fail for <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 215                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 216                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 217                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 218                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 219                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 221                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 222                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 223                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 224                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 225                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 226                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8863:  At <ApplicationStage> stage adding insurance and nominee details to a collateral <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then Insurance data should be saved successfully
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 258                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 259                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 260                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 261                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8864:  At <ApplicationStage> stage adding additional insurance to a collateral  <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    Then user should be able to add more insurance to the collateral
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 247                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 247                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 247                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8865:  At <ApplicationStage> stage modifying insurance details of a collateral <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to modify "<FieldName>" field in insurance data
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 234                                | Insurance Company        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 235                                | Policy Number            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 236                                | Cover Note Number        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 237                                | Cover Note Creation Date | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 238                                | Start Date               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 239                                | Maturity Date            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 240                                | Coverage Type            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 241                                | Coverage Amount          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 242                                | Premium Amount           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 243                                | Loss Payee               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8866:  At <ApplicationStage> stage deleting insurance available in a collateral <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user sees one or more insurances attached to the collateral
    Then user should be able to delete insurance added to the collateral
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 257                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8867:  At <ApplicationStage> stage adding nominee to insurance in <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to add nominee to the insurance
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8868:  At "<ApplicationStage>" stage adding nominee with minimum data to insurance in <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to add nominee to the insurance
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 244                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8869:  At <ApplicationStage> stage adding nominee with less than 100% entitlement on insurance in <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    And user fills nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 246                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 246                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 246                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @LoggedBug
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 255                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8870:  At <ApplicationStage> stage adding multiple nominees to on insurance in <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
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
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 271                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8871:  At <ApplicationStage> stage adding multiple nominees with more than 100% entitlement to on insurance in <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    When user add nominee to the insurance with mandatory values as
      | collateral.xlsx | insurance_details | 248 |
      | collateral.xlsx | insurance_details | 592 |
    And user clicks on Done Button in Insurance
    Then user should receive failure message in insurance
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 248                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 248                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 248                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8872:  At <ApplicationStage> stage adding multiple nominees with address to on insurance in <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    When user add nominee to the insurance with address details
    Then nominee data should get saved successfully
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 250                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8873:  At <ApplicationStage> stage adding minor nominee without appointee in insurance details of collateral <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    When user add nominee to the insurance "<description>"
    Then user should receive failure message in insurance
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 251                                | without Appointee Name          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 252                                | without Appointee relationship  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 253                                | without Appointee date of birth | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @LoggedBug
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | description                  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 273                                | without Appointee as a minor | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108
  Scenario Outline: ACAUTOCAS-8874:  At <ApplicationStage> data reconcile to validate if insurance and nominee data was saved properly for <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user edits the recently added collateral
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance details of collateral subtype
    And user fills nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    And user see insurances attached to the collateral
    And user click on edit insurance details
    Then user should be able to see the data as available in excel file
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 256                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#FeatureID-ACAUTOCAS-5080,ACAUTOCAS-8108,ACAUTOCAS-6414
  Scenario Outline: ACAUTOCAS-8875:  At <ApplicationStage> check pagination where more than 10 insurances are added for <CollateralSubType> attached to <ProductType> application
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
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
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 252                            | insurance_details           | 289                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
