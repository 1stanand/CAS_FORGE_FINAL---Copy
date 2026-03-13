@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-1
#${CollateralSubType:["Fixed Deposit"]}
#${ApplicantType:["indiv","nonindiv"]}

Feature: Fixed Deposit Modification


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-2513: Deleting a Fixed Deposit attached to the application of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user deletes the saved collateral
    Then user should be able to successfully delete the collateral
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | Collateral_fixedDeposit_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | 736                            |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | Collateral_fixedDeposit_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | 736                            |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | Collateral_fixedDeposit_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | 736                            |


  Scenario Outline: ACAUTOCAS-3019: Fixed Deposit Data Modification of <FieldName> in Deposit Details of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    Then user should be able to modify the data in field "<FieldName>"
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | FieldName                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issuer Bank                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | FD Number                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Fixed Deposit Holder  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date (Fixed Deposit) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Rate Of Interest              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Account Number                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is Joint Fixed Deposit        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remark                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Auto Renewal                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral Ref No             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Issuer Bank                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | FD Number                     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Name of Fixed Deposit Holder  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Deposit Amount                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Date (Fixed Deposit) | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maturity Amount               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Rate Of Interest              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Account Number                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Is Joint Fixed Deposit        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remark                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Auto Renewal                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issuer Bank                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | FD Number                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Name of Fixed Deposit Holder  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Deposit Amount                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Date (Fixed Deposit) | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maturity Amount               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Rate Of Interest              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Account Number                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Is Joint Fixed Deposit        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remark                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Auto Renewal                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3020: Fixed Deposit restrictions in Data Modification of <FieldName> of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    Then user should not be able to modify the data in "<FieldName>" field
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral ID            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2514: Insurance Tab for Fixed Deposit Collateral of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    Then user should not see Insurance Tab
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline:ACAUTOCAS-2515: Deleting a nominee attached to fixed deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user delete the nominee
    Then user should be able to successfully delete the nominee
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 203                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 203                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 203                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-4336:  Adding a nominee to an existing fixed deposit of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then nominee data should be saved successfully
    @ImplementedBy-aditya.tomar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 66                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 171                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 66                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 171                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 66                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 171                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-4337: Adding an additional nominee to an existing fixed deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "fixed_deposit" and row 203
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user modifies the saved collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "fixed_deposit" and row 170
    And user enters "Percentage Of Entitlement" in nominee fixed deposit
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    When user saves the data
    Then nominee data should be saved successfully
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | fixed_deposit           | 173                            |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | fixed_deposit           | 174                            |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | fixed_deposit           | 173                            |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | fixed_deposit           | 174                            |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | fixed_deposit           | 173                            |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | fixed_deposit           | 174                            |


  Scenario Outline: ACAUTOCAS-4338: Adding an additional nominee with invalid data to an existing fixed deposit of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "fixed_deposit" and row 203
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user modifies the saved collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "fixed_deposit" and row 170
    And user enters "Percentage Of Entitlement" in nominee fixed deposit
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user enters nominee details
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then user should get an error message saying "<ErrorMessage>"
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ErrorMessage                                                 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 194                            | Percent of entitlement cannot sum up to more than 100%.      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 195                            | Percent of entitlement cannot sum up to more than 100%.      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 196                            | There are some errors. Please correct them and submit again. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ErrorMessage                                                 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 194                            | Percent of entitlement cannot sum up to more than 100%.      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 195                            | Percent of entitlement cannot sum up to more than 100%.      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 196                            | There are some errors. Please correct them and submit again. | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ErrorMessage                                                 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 194                            | Percent of entitlement cannot sum up to more than 100%.      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 195                            | Percent of entitlement cannot sum up to more than 100%.      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | collateral.xlsx | fixed_deposit           | 196                            | There are some errors. Please correct them and submit again. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-4339: Fixed Deposit Data Modifications of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the data
    Then modified collateral should be saved successfully
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 0                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  ##Dedupe Check
  #FeatureID-ACAUTOCAS-235
  Scenario Outline: ACAUTOCAS-4340:  Fixed Deposit Data Modification in Asset Details for dedupe revalidation of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 736
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    When user modifies the saved collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    And user modifies in collateral page "<FieldModified>"
    And user saves the Collateral Details
    Then User should get a proper message
    @ImplementedBy-aman.verma
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | FieldModified                     | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Fixed Deposit Number              | collateral.xlsx | fixed_deposit           | 86                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issuer Bank                       | collateral.xlsx | fixed_deposit           | 87                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Fixed Deposit Number, Issuer Bank | collateral.xlsx | fixed_deposit           | 88                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Fixed Deposit Number              | collateral.xlsx | fixed_deposit           | 89                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issuer Bank                       | collateral.xlsx | fixed_deposit           | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Fixed Deposit Number, Issuer Bank | collateral.xlsx | fixed_deposit           | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldModified                     | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Fixed Deposit Number              | collateral.xlsx | fixed_deposit           | 86                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Issuer Bank                       | collateral.xlsx | fixed_deposit           | 87                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Fixed Deposit Number, Issuer Bank | collateral.xlsx | fixed_deposit           | 88                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Fixed Deposit Number              | collateral.xlsx | fixed_deposit           | 89                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Issuer Bank                       | collateral.xlsx | fixed_deposit           | 90                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Fixed Deposit Number, Issuer Bank | collateral.xlsx | fixed_deposit           | 91                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldModified                     | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Fixed Deposit Number              | collateral.xlsx | fixed_deposit           | 86                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issuer Bank                       | collateral.xlsx | fixed_deposit           | 87                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Fixed Deposit Number, Issuer Bank | collateral.xlsx | fixed_deposit           | 88                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Fixed Deposit Number              | collateral.xlsx | fixed_deposit           | 89                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Issuer Bank                       | collateral.xlsx | fixed_deposit           | 90                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Fixed Deposit Number, Issuer Bank | collateral.xlsx | fixed_deposit           | 91                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  #Data in CMS required please refer to original gwt
  #FeatureID-ACAUTOCAS-235
  Scenario Outline: ACAUTOCAS-4341:  Dedupe revalidation to identify duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber2>
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber3>
    When user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    And user views the duplicate collateral
    Then user should validate <Number> duplicate "<CollateralSubType>" record for "<SourceSystem>" source system
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | Collateral_fixedDeposit_rowNumber3 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | Number | SourceSystem | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 85                                | 337                                | 333                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CMS          | <CollateralSubType> |
      | collateral.xlsx | fixed_deposit           | 85                                | 337                                | 333                                | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | 1      | CAS          | <CollateralSubType> |


  #FeatureID-ACAUTOCAS-235
  #Data in CMS required please refer to original gwt
  Scenario Outline: ACAUTOCAS-4342:  Dedupe revalidation to identify and view duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber2>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And save the collateral data for modification
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    When user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    Then User should be able to view the duplicates of "<CollateralSubType>" collateral
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 92                                | 85                                 | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4343:  Dedupe revalidation to identify and attach duplicate collaterals to the same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber2>
    And user add new collateral details
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    When user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 334                               | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 334                               | 85                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 334                               | 85                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4344:  Dedupe revalidation to identify and attach duplicate collaterals to different application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber2>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    When user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | ProductType   | ApplicationStage   | SecondaryApplicationStage | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | fixed_deposit           | 335                               | 85                                 | <ProductType> | <ApplicationStage> | Post Approval             |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4345:  Dedupe revalidation to identify and ignore duplicate collaterals of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber2>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of collateral details for fixed Deposit
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user edits the recently added collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_fixedDeposit>" and row <Collateral_fixedDeposit_rowNumber>
    When user fills mandatory fields of collateral details for fixed Deposit
    And checks for duplicate collateral
    And user ignores the duplicate collaterals found
    And user clicks on save collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_fixedDeposit | Collateral_fixedDeposit_rowNumber | Collateral_fixedDeposit_rowNumber2 | ProductType   | SecondaryApplicationStage | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | fixed_deposit           | 336                               | 92                                 | <ProductType> | Post Approval             | <ApplicationStage> |     |          | <ApplicantType> |

