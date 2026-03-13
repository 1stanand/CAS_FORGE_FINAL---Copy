@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Part-2

#${CollateralType:["Asset"]}
#${CollateralSubType:["Stock and Book Debts"]}
#${ApplicantType:["indiv", "nonindiv"]}


Feature: Stock And Book Debts Screen Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3635:  user selects collateral type as Current Assets for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then application should allow only the collateral type which is linked to the product
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 503                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 503                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 503                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3636: user chooses sub collateral as Stock And Book Debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the collateral sub type
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 504                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 504                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 504                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3637: Option to upload stock and book debts through upload for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should provide an option to create collateral through upload
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3638:  Option to download template file for stock and book debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should provide an option to download predefined template
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3639:  CollateralPage entity validation of <SectionName> for collateral type Current Assets and Sub Type Stock And Book Debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<SectionName>" section
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName                      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Details               | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock Details                    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Book Debts                       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Drawing Power Computation        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | History of Stocks and Book Debts | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason                           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName                      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral Details               | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Stock Details                    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Book Debts                       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Drawing Power Computation        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | History of Stocks and Book Debts | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason                           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName                      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Details               | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock Details                    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Book Debts                       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Drawing Power Computation        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | History of Stocks and Book Debts | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason                           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2993:  CollateralPage <FieldName> validation for collateral Stock And Book Debts in Collateral Details for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No        | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description              | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Customer Name            | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock As On              | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Stocks (%)     | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Book Debts (%) | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Currency                 | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral Ref No        | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description              | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Customer Name            | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Stock As On              | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Margin on Stocks (%)     | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Margin on Book Debts (%) | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Currency                 | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral Ref No        | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description              | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Customer Name            | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock As On              | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Stocks (%)     | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Book Debts (%) | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Currency                 | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3640: CollateralPage details <Validity> of <FieldName> with <InputType> validation for collateral Sub Type Stock And Book Debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Collateral Ref No        | positive digits                  | does not throw any error        | collateral.xlsx | default            | 426                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | characters                       | does not throw any error        | collateral.xlsx | default            | 427                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 428                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | negative                         | does not throw any error        | collateral.xlsx | default            | 429                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | hyphen                           | does not throw any error        | collateral.xlsx | default            | 430                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | space                            | does not throw any error        | collateral.xlsx | default            | 431                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No        | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 432                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | positive digits                  | does not throw any error        | collateral.xlsx | default            | 433                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | characters                       | does not throw any error        | collateral.xlsx | default            | 434                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 435                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | negative                         | does not throw any error        | collateral.xlsx | default            | 436                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | space                            | does not throw any error        | collateral.xlsx | default            | 437                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 438                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 440                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | characters                       | does not throw any error        | collateral.xlsx | default            | 441                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 442                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | negative                         | does not throw any error        | collateral.xlsx | default            | 443                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | hyphen                           | does not throw any error        | collateral.xlsx | default            | 444                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | space                            | does not throw any error        | collateral.xlsx | default            | 445                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Customer Name            | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 838                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | valid date format                | does not throw any error        | collateral.xlsx | default            | 465                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | invalid date format              | throws error with error message | collateral.xlsx | default            | 466                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | past date                        | does not throw any error        | collateral.xlsx | default            | 467                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | current date                     | does not throw any error        | collateral.xlsx | default            | 468                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | future date                      | throws error with error message | collateral.xlsx | default            | 469                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | year less than 1942              | throws error with error message | collateral.xlsx | default            | 839                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | year equal to 1942               | does not throw any error        | collateral.xlsx | default            | 471                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | special characters               | throws error with error message | collateral.xlsx | default            | 472                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Stocks (%)     | positive less than equal to 100  | does not throw any error        | collateral.xlsx | default            | 447                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | negative                         | throws error with error message | collateral.xlsx | default            | 448                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Stocks (%)     | zero                             | does not throw any error        | collateral.xlsx | default            | 449                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | more than 100                    | throws error with error message | collateral.xlsx | default            | 450                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | more than 2 decimal places       | throws error with error message | collateral.xlsx | default            | 451                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | characters                       | throws error with error message | collateral.xlsx | default            | 452                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | both digits and characters       | throws error with error message | collateral.xlsx | default            | 453                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | space                            | throws error with error message | collateral.xlsx | default            | 454                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | special characters               | throws error with error message | collateral.xlsx | default            | 455                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Book Debts (%) | positive less than equal to 100  | does not throw any error        | collateral.xlsx | default            | 456                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | negative                         | throws error with error message | collateral.xlsx | default            | 457                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Book Debts (%) | zero                             | does not throw any error        | collateral.xlsx | default            | 458                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | more than 100                    | throws error with error message | collateral.xlsx | default            | 459                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | more than 2 decimal places       | throws error with error message | collateral.xlsx | default            | 460                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | characters                       | throws error with error message | collateral.xlsx | default            | 461                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | both digits and characters       | throws error with error message | collateral.xlsx | default            | 462                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | space                            | throws error with error message | collateral.xlsx | default            | 463                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | special characters               | throws error with error message | collateral.xlsx | default            | 464                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Collateral Ref No        | positive digits                  | does not throw any error        | collateral.xlsx | default            | 426                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No        | characters                       | does not throw any error        | collateral.xlsx | default            | 427                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No        | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 428                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No        | negative                         | does not throw any error        | collateral.xlsx | default            | 429                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No        | hyphen                           | does not throw any error        | collateral.xlsx | default            | 430                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Collateral Ref No        | space                            | does not throw any error        | collateral.xlsx | default            | 431                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Collateral Ref No        | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 432                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description              | positive digits                  | does not throw any error        | collateral.xlsx | default            | 433                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description              | characters                       | does not throw any error        | collateral.xlsx | default            | 434                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description              | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 435                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description              | negative                         | does not throw any error        | collateral.xlsx | default            | 436                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description              | space                            | does not throw any error        | collateral.xlsx | default            | 437                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Description              | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 438                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Customer Name            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 440                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Customer Name            | characters                       | does not throw any error        | collateral.xlsx | default            | 441                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Customer Name            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 442                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Customer Name            | negative                         | does not throw any error        | collateral.xlsx | default            | 443                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Customer Name            | hyphen                           | does not throw any error        | collateral.xlsx | default            | 444                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Customer Name            | space                            | does not throw any error        | collateral.xlsx | default            | 445                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Customer Name            | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 838                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Stock As On              | valid date format                | does not throw any error        | collateral.xlsx | default            | 465                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Stock As On              | invalid date format              | throws error with error message | collateral.xlsx | default            | 466                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Stock As On              | past date                        | does not throw any error        | collateral.xlsx | default            | 467                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Stock As On              | current date                     | does not throw any error        | collateral.xlsx | default            | 468                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Stock As On              | future date                      | throws error with error message | collateral.xlsx | default            | 469                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Stock As On              | year less than 1942              | throws error with error message | collateral.xlsx | default            | 839                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Stock As On              | year equal to 1942               | does not throw any error        | collateral.xlsx | default            | 471                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Stock As On              | special characters               | throws error with error message | collateral.xlsx | default            | 472                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Margin on Stocks (%)     | positive less than equal to 100  | does not throw any error        | collateral.xlsx | default            | 447                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | negative                         | throws error with error message | collateral.xlsx | default            | 448                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Margin on Stocks (%)     | zero                             | does not throw any error        | collateral.xlsx | default            | 449                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | more than 100                    | throws error with error message | collateral.xlsx | default            | 450                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | more than 2 decimal places       | throws error with error message | collateral.xlsx | default            | 451                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | characters                       | throws error with error message | collateral.xlsx | default            | 452                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | both digits and characters       | throws error with error message | collateral.xlsx | default            | 453                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | space                            | throws error with error message | collateral.xlsx | default            | 454                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | special characters               | throws error with error message | collateral.xlsx | default            | 455                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Margin on Book Debts (%) | positive less than equal to 100  | does not throw any error        | collateral.xlsx | default            | 456                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | negative                         | throws error with error message | collateral.xlsx | default            | 457                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Margin on Book Debts (%) | zero                             | does not throw any error        | collateral.xlsx | default            | 458                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | more than 100                    | throws error with error message | collateral.xlsx | default            | 459                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | more than 2 decimal places       | throws error with error message | collateral.xlsx | default            | 460                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | characters                       | throws error with error message | collateral.xlsx | default            | 461                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | both digits and characters       | throws error with error message | collateral.xlsx | default            | 462                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | space                            | throws error with error message | collateral.xlsx | default            | 463                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | special characters               | throws error with error message | collateral.xlsx | default            | 464                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName                | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Collateral Ref No        | positive digits                  | does not throw any error        | collateral.xlsx | default            | 426                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | characters                       | does not throw any error        | collateral.xlsx | default            | 427                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 428                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | negative                         | does not throw any error        | collateral.xlsx | default            | 429                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | hyphen                           | does not throw any error        | collateral.xlsx | default            | 430                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Collateral Ref No        | space                            | does not throw any error        | collateral.xlsx | default            | 431                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Collateral Ref No        | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 432                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | positive digits                  | does not throw any error        | collateral.xlsx | default            | 433                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | characters                       | does not throw any error        | collateral.xlsx | default            | 434                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 435                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | negative                         | does not throw any error        | collateral.xlsx | default            | 436                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | space                            | does not throw any error        | collateral.xlsx | default            | 437                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Description              | special characters except hyphen | does not throw any error        | collateral.xlsx | default            | 438                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | positive digits                  | does not throw any error        | collateral.xlsx | default            | 440                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | characters                       | does not throw any error        | collateral.xlsx | default            | 441                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | both digits and characters       | does not throw any error        | collateral.xlsx | default            | 442                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | negative                         | does not throw any error        | collateral.xlsx | default            | 443                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | hyphen                           | does not throw any error        | collateral.xlsx | default            | 444                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Customer Name            | space                            | does not throw any error        | collateral.xlsx | default            | 445                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Customer Name            | special characters except hyphen | throws error with error message | collateral.xlsx | default            | 838                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | valid date format                | does not throw any error        | collateral.xlsx | default            | 465                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | invalid date format              | throws error with error message | collateral.xlsx | default            | 466                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | past date                        | does not throw any error        | collateral.xlsx | default            | 467                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | current date                     | does not throw any error        | collateral.xlsx | default            | 468                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | future date                      | throws error with error message | collateral.xlsx | default            | 469                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | year less than 1942              | throws error with error message | collateral.xlsx | default            | 839                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Stock As On              | year equal to 1942               | does not throw any error        | collateral.xlsx | default            | 471                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Stock As On              | special characters               | throws error with error message | collateral.xlsx | default            | 472                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Stocks (%)     | positive less than equal to 100  | does not throw any error        | collateral.xlsx | default            | 447                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | negative                         | throws error with error message | collateral.xlsx | default            | 448                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Stocks (%)     | zero                             | does not throw any error        | collateral.xlsx | default            | 449                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | more than 100                    | throws error with error message | collateral.xlsx | default            | 450                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | more than 2 decimal places       | throws error with error message | collateral.xlsx | default            | 451                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | characters                       | throws error with error message | collateral.xlsx | default            | 452                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | both digits and characters       | throws error with error message | collateral.xlsx | default            | 453                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | space                            | throws error with error message | collateral.xlsx | default            | 454                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Stocks (%)     | special characters               | throws error with error message | collateral.xlsx | default            | 455                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Book Debts (%) | positive less than equal to 100  | does not throw any error        | collateral.xlsx | default            | 456                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | negative                         | throws error with error message | collateral.xlsx | default            | 457                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Margin on Book Debts (%) | zero                             | does not throw any error        | collateral.xlsx | default            | 458                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | more than 100                    | throws error with error message | collateral.xlsx | default            | 459                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | more than 2 decimal places       | throws error with error message | collateral.xlsx | default            | 460                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | characters                       | throws error with error message | collateral.xlsx | default            | 461                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | both digits and characters       | throws error with error message | collateral.xlsx | default            | 462                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | space                            | throws error with error message | collateral.xlsx | default            | 463                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Margin on Book Debts (%) | special characters               | throws error with error message | collateral.xlsx | default            | 464                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3641:  CollateralPage data format validation for collateral Stock And Book Debts in Collateral Details
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And user goes to "Collateral Details" section
    Then user should be able to see all fields with proper format


  Scenario Outline: ACAUTOCAS-3642: CollateralPage field label validation of <FieldName> for collateral Stock And Book Debts in Collateral Details for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" with proper label
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral ID            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Ref No        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Customer Name            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock As On              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Stocks (%)     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Book Debts (%) | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Currency                 | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Code              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks                  | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Collateral ID            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Global Collateral Number | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral Type          | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral SubType       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Collateral Ref No        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Description              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Customer Name            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Stock As On              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Margin on Stocks (%)     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Margin on Book Debts (%) | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Currency                 | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason Code              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason Description       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks                  | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Collateral ID            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Global Collateral Number | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Type          | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral SubType       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Collateral Ref No        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Description              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Customer Name            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock As On              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Stocks (%)     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Margin on Book Debts (%) | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Currency                 | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Code              | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks                  | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2994: CollateralPage <FieldName> validation for collateral Stock And Book Debts in Stock Details for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                | Mandatory     | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No.                    | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Particulars of Goods     | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock Placed in          | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Quantity                 | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Unit                     | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Rate Per Unit            | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Value                    | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks in Stock Details | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Stock Value        | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | Mandatory     | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | S.No.                    | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Particulars of Goods     | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Stock Placed in          | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Quantity                 | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Unit                     | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Rate Per Unit            | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Value                    | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks in Stock Details | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Total Stock Value        | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | Mandatory     | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No.                    | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Particulars of Goods     | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock Placed in          | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Quantity                 | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Unit                     | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Rate Per Unit            | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Value                    | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks in Stock Details | non mandatory | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Stock Value        | mandatory     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  Scenario Outline: ACAUTOCAS-3643: CollateralPage Stock Details <Validity> of <FieldName> with <InputType> validation for collateral Sub Type Stock and Book Debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens stock details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Particulars of Goods | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 97                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | characters                       | does not throw any error        | collateral.xlsx | stock_details                | 98                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | both digits and characters       | does not throw any error        | collateral.xlsx | stock_details                | 99                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | negative                         | does not throw any error        | collateral.xlsx | stock_details                | 100                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | hyphen                           | does not throw any error        | collateral.xlsx | stock_details                | 101                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | space                            | does not throw any error        | collateral.xlsx | stock_details                | 102                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | special characters except hyphen | does not throw any error        | collateral.xlsx | stock_details                | 103                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Quantity             | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 104                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | characters                       | throws error with error message | collateral.xlsx | stock_details                | 105                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 106                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | negative                         | throws error with error message | collateral.xlsx | stock_details                | 107                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 108                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | space                            | throws error with error message | collateral.xlsx | stock_details                | 109                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 110                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | more than 2 decimal places       | throws error with error message | collateral.xlsx | stock_details                | 111                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Quantity             | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 112                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Rate Per Unit        | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 113                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | characters                       | throws error with error message | collateral.xlsx | stock_details                | 114                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 115                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | negative                         | throws error with error message | collateral.xlsx | stock_details                | 116                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 117                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | space                            | throws error with error message | collateral.xlsx | stock_details                | 118                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 119                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | more than 2 decimal places       | throws error with error message | collateral.xlsx | stock_details                | 120                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Rate Per Unit        | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 121                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Value                | positive                         | does not throw any error        | collateral.xlsx | default                      | 425                                 | stock_details      | 122                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | negative                         | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 123                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Value                | zero                             | does not throw any error        | collateral.xlsx | default                      | 425                                 | stock_details      | 124                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | characters                       | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 125                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | both digits and characters       | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 126                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | space                            | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 127                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | special characters               | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 128                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Particulars of Goods | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 97                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Particulars of Goods | characters                       | does not throw any error        | collateral.xlsx | stock_details                | 98                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Particulars of Goods | both digits and characters       | does not throw any error        | collateral.xlsx | stock_details                | 99                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Particulars of Goods | negative                         | does not throw any error        | collateral.xlsx | stock_details                | 100                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Particulars of Goods | hyphen                           | does not throw any error        | collateral.xlsx | stock_details                | 101                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Particulars of Goods | space                            | does not throw any error        | collateral.xlsx | stock_details                | 102                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Particulars of Goods | special characters except hyphen | does not throw any error        | collateral.xlsx | stock_details                | 103                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Quantity             | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 104                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Quantity             | characters                       | throws error with error message | collateral.xlsx | stock_details                | 105                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Quantity             | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 106                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Quantity             | negative                         | throws error with error message | collateral.xlsx | stock_details                | 107                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Quantity             | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 108                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Quantity             | space                            | throws error with error message | collateral.xlsx | stock_details                | 109                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Quantity             | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 110                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Quantity             | more than 2 decimal places       | throws error with error message | collateral.xlsx | stock_details                | 111                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Quantity             | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 112                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Rate Per Unit        | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 113                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Rate Per Unit        | characters                       | throws error with error message | collateral.xlsx | stock_details                | 114                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Rate Per Unit        | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 115                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Rate Per Unit        | negative                         | throws error with error message | collateral.xlsx | stock_details                | 116                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Rate Per Unit        | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 117                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Rate Per Unit        | space                            | throws error with error message | collateral.xlsx | stock_details                | 118                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Rate Per Unit        | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 119                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Rate Per Unit        | more than 2 decimal places       | throws error with error message | collateral.xlsx | stock_details                | 120                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Rate Per Unit        | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 121                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Value                | positive                         | does not throw any error        | collateral.xlsx | default                      | 425                                 | stock_details      | 122                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Value                | negative                         | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 123                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Value                | zero                             | does not throw any error        | collateral.xlsx | default                      | 425                                 | stock_details      | 124                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Value                | characters                       | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 125                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Value                | both digits and characters       | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 126                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Value                | space                            | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 127                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Value                | special characters               | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 128                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName            | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Particulars of Goods | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 97                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | characters                       | does not throw any error        | collateral.xlsx | stock_details                | 98                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | both digits and characters       | does not throw any error        | collateral.xlsx | stock_details                | 99                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | negative                         | does not throw any error        | collateral.xlsx | stock_details                | 100                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | hyphen                           | does not throw any error        | collateral.xlsx | stock_details                | 101                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | space                            | does not throw any error        | collateral.xlsx | stock_details                | 102                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Particulars of Goods | special characters except hyphen | does not throw any error        | collateral.xlsx | stock_details                | 103                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Quantity             | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 104                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | characters                       | throws error with error message | collateral.xlsx | stock_details                | 105                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 106                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | negative                         | throws error with error message | collateral.xlsx | stock_details                | 107                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 108                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | space                            | throws error with error message | collateral.xlsx | stock_details                | 109                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 110                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Quantity             | more than 2 decimal places       | throws error with error message | collateral.xlsx | stock_details                | 111                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Quantity             | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 112                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Rate Per Unit        | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 113                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | characters                       | throws error with error message | collateral.xlsx | stock_details                | 114                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 115                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | negative                         | throws error with error message | collateral.xlsx | stock_details                | 116                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 117                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | space                            | throws error with error message | collateral.xlsx | stock_details                | 118                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 119                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Rate Per Unit        | more than 2 decimal places       | throws error with error message | collateral.xlsx | stock_details                | 120                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Rate Per Unit        | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 121                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Value                | positive                         | does not throw any error        | collateral.xlsx | default                      | 425                                 | stock_details      | 122                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | negative                         | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 123                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Value                | zero                             | does not throw any error        | collateral.xlsx | default                      | 425                                 | stock_details      | 124                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | characters                       | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 125                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | both digits and characters       | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 126                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | space                            | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 127                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Value                | special characters               | throws error with error message | collateral.xlsx | default                      | 425                                 | stock_details      | 128                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3644:  CollateralPage data format validation for collateral Stock And Book Debts in Stock Details
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And user goes to "Stock Details" section
    Then user should be able to see all fields with proper format


  Scenario Outline: ACAUTOCAS-3645: CollateralPage field label validation of <FieldName> for collateral Stock And Book Debts in Stock Details for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    When goes to "<SectionName>" section
    Then user should be able to see "<FieldName>" field with proper label
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No.                    | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Particulars of Goods     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock Placed in          | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Quantity                 | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Unit                     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Rate Per Unit            | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Value                    | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks in Stock Details | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Stock Value        | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | S.No.                    | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Particulars of Goods     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Stock Placed in          | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Quantity                 | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Unit                     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Rate Per Unit            | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Value                    | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks in Stock Details | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Total Stock Value        | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | SectionName   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No.                    | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Particulars of Goods     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock Placed in          | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Quantity                 | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Unit                     | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Rate Per Unit            | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Value                    | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks in Stock Details | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Stock Value        | Stock Details | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @NotImplemented
  Scenario: ACAUTOCAS-3646:  CollateralPage <SectionName> validation for collateral Stock And Book Debts in Book Debts
    Given "<PL_LOB>" Application is at DDE Stage
    And user adds new collateral to the application
    When User selects Collateral Type as "Current Assets"
    And Collateral Sub Types as "Stock And Book Debts"
    And goes to "Book Debts" section
    Then user should be able to see following entities:
      | SectionName      |
      | Sundry Debtors   |
      | Bills Discounted |
      | Sundry Creditors |


  Scenario Outline: ACAUTOCAS-2995:  CollateralPage <FieldName> validation for collateral Stock And Book Debts in Sundry Debtors for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                | SectionName | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No. of Sundry Debts    | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtors As Per Age       | Book Debts  | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount                   | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Consider For Computation | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | SectionName | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | S.No. of Sundry Debts    | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Debtors As Per Age       | Book Debts  | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amount                   | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Consider For Computation | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | SectionName | Mandatory     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No. of Sundry Debts    | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtors As Per Age       | Book Debts  | mandatory     | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount                   | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Consider For Computation | Book Debts  | non mandatory | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3647: CollateralPage Book Debt Details <Validity> Sundry Debtors Amount with <InputType> validation for collateral Sub Type Stock and Book Debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens book debts details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | FieldName             | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Sundry Debtors Amount | positive                   | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | negative                   | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Sundry Debtors Amount | zero                       | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | characters                 | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | both digits and characters | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | space                      | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | special characters         | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName             | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Sundry Debtors Amount | positive                   | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | negative                   | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Sundry Debtors Amount | zero                       | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | characters                 | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | both digits and characters | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | space                      | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | special characters         | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName             | InputType                  | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Sundry Debtors Amount | positive                   | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | negative                   | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Sundry Debtors Amount | zero                       | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | characters                 | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | both digits and characters | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | space                      | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Debtors Amount | special characters         | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3648:  CollateralPage data format validation for collateral Stock And Book Debts in Sundry Debtors
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And user goes to "Book Debts" section
    And sees multi record section "Sundry Debtors"
    Then user should be able to see all fields with proper format


  Scenario Outline: ACAUTOCAS-3649: CollateralPage field label validation of <FieldName> for collateral Stock And Book Debts in Sundry Debtors for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And sees section "<SectionName2>"
    Then user should be able to see "<FieldName>" field with proper label
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                | SectionName | SectionName2   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No. of Sundry Debts    | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtors As Per Age       | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount                   | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Consider For Computation | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                | SectionName | SectionName2   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | S.No. of Sundry Debts    | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Debtors As Per Age       | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amount                   | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Consider For Computation | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                | SectionName | SectionName2   | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | S.No. of Sundry Debts    | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtors As Per Age       | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount                   | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Consider For Computation | Book Debts  | Sundry Debtors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2996:  CollateralPage <FieldName> validation for collateral Stock And Book Debts in Bills Discounted for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And sees section "<SectionName2>"
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                  | Mandatory     | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Bills            | non mandatory | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Bills Discounted | non mandatory | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                  | Mandatory     | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Number Of Bills            | non mandatory | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amount in Bills Discounted | non mandatory | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                  | Mandatory     | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Bills            | non mandatory | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Bills Discounted | non mandatory | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3650: CollateralPage Book Debt Details <Validity> of <FieldName> with <InputType> validation for collateral Sub Type Stock and Book Debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens book debts details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | FieldName                  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Number Of Bills Discounted | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 129                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | characters                       | throws error with error message | collateral.xlsx | stock_details                | 130                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 131                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | negative                         | throws error with error message | collateral.xlsx | stock_details                | 132                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 133                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | space                            | throws error with error message | collateral.xlsx | stock_details                | 134                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 135                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Bills Discounted Amount    | positive                         | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | negative                         | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Bills Discounted Amount    | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | characters                       | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | space                            | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | special characters               | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName                  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Number Of Bills Discounted | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 129                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | characters                       | throws error with error message | collateral.xlsx | stock_details                | 130                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 131                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | negative                         | throws error with error message | collateral.xlsx | stock_details                | 132                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 133                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | space                            | throws error with error message | collateral.xlsx | stock_details                | 134                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 135                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Bills Discounted Amount    | positive                         | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | negative                         | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Bills Discounted Amount    | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | characters                       | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | space                            | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | special characters               | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName                  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Number Of Bills Discounted | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 129                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | characters                       | throws error with error message | collateral.xlsx | stock_details                | 130                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 131                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | negative                         | throws error with error message | collateral.xlsx | stock_details                | 132                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 133                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | space                            | throws error with error message | collateral.xlsx | stock_details                | 134                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Bills Discounted | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 135                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Bills Discounted Amount    | positive                         | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | negative                         | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Bills Discounted Amount    | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | characters                       | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | space                            | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Bills Discounted Amount    | special characters               | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3651:  CollateralPage data format validation for collateral Stock And Book Debts in Bills Discounted
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And user goes to "Book Debts" section
    And sees section "Bills Discounted"
    Then user should be able to see all fields with proper format


  Scenario Outline: ACAUTOCAS-3652: CollateralPage field label validation of <FieldName> for collateral Stock And Book Debts in Bills Discounted for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And sees section "<SectionName2>"
    Then user should be able to see "<FieldName>" with proper label
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                  | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Bills            | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Bills Discounted | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                  | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Number Of Bills            | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amount in Bills Discounted | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                  | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Bills            | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Bills Discounted | Book Debts  | Bills Discounted | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2997:  CollateralPage <FieldName> validation for collateral Stock And Book Debts in Sundry Creditors for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And sees section "<SectionName2>"
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                  | Mandatory     | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Creditors        | non mandatory | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Sundry Creditors | non mandatory | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                  | Mandatory     | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Number Of Creditors        | non mandatory | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amount in Sundry Creditors | non mandatory | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                  | Mandatory     | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Creditors        | non mandatory | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Sundry Creditors | non mandatory | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3653: CollateralPage Book Debt Details <Validity> of <FieldName>  with <InputType> validation for collateral Sub Type Stock and Book Debts for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens book debts details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | FieldName                  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Number Of Sundry Creditors | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 129                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | characters                       | throws error with error message | collateral.xlsx | stock_details                | 130                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 131                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | negative                         | throws error with error message | collateral.xlsx | stock_details                | 132                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 133                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | space                            | throws error with error message | collateral.xlsx | stock_details                | 134                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 135                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Sundry Creditors Amount    | positive                         | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | negative                         | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Sundry Creditors Amount    | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | characters                       | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | space                            | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | special characters               | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName                  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Number Of Sundry Creditors | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 129                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | characters                       | throws error with error message | collateral.xlsx | stock_details                | 130                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 131                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | negative                         | throws error with error message | collateral.xlsx | stock_details                | 132                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 133                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | space                            | throws error with error message | collateral.xlsx | stock_details                | 134                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 135                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Sundry Creditors Amount    | positive                         | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | negative                         | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Sundry Creditors Amount    | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | characters                       | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | space                            | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | special characters               | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName                  | InputType                        | Throws_NotThrows                | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Number Of Sundry Creditors | positive digits                  | does not throw any error        | collateral.xlsx | stock_details                | 129                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | characters                       | throws error with error message | collateral.xlsx | stock_details                | 130                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 131                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | negative                         | throws error with error message | collateral.xlsx | stock_details                | 132                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | hyphen                           | throws error with error message | collateral.xlsx | stock_details                | 133                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | space                            | throws error with error message | collateral.xlsx | stock_details                | 134                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Number Of Sundry Creditors | special characters except hyphen | throws error with error message | collateral.xlsx | stock_details                | 135                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Sundry Creditors Amount    | positive                         | does not throw any error        | collateral.xlsx | stock_details                | 122                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | negative                         | throws error with error message | collateral.xlsx | stock_details                | 123                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Sundry Creditors Amount    | zero                             | does not throw any error        | collateral.xlsx | stock_details                | 124                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | characters                       | throws error with error message | collateral.xlsx | stock_details                | 125                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | both digits and characters       | throws error with error message | collateral.xlsx | stock_details                | 126                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | space                            | throws error with error message | collateral.xlsx | stock_details                | 127                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | invalid  | Sundry Creditors Amount    | special characters               | throws error with error message | collateral.xlsx | stock_details                | 128                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3654:  CollateralPage data format validation for collateral Stock And Book Debts in Sundry Creditors
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And user goes to "Book Debts" section
    And sees section "Sundry Creditors"
    Then user should be able to see all fields with proper format


  Scenario Outline: ACAUTOCAS-3655: CollateralPage field label validation of <FieldName> for collateral Stock And Book Debts in Sundry Creditors for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And goes to "<SectionName>" section
    And sees section "<SectionName2>"
    Then user should be able to see "<FieldName>" with proper label
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                  | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Creditors        | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Sundry Creditors | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                  | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Number Of Creditors        | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Amount in Sundry Creditors | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                  | SectionName | SectionName2     | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Number Of Creditors        | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Amount in Sundry Creditors | Book Debts  | Sundry Creditors | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3656:  CollateralPage validation for collateral Stock And Book Debts in Drawing Power Computation for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 505
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user checks the duplicates on collateral dedupe check
    Then user should be able to see "<FieldName>" field marked as "<Mandatory>" in CollateralType currents assets
    @ImplementedBy-priyanshu.kashyap
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                         | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Total Stock Value                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Sundry Creditors            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Paid Stock                        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @(Total Stock Vlaue) | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock value eligible for DP (A)   | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Debtors                     | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Bills Discounted            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value considered           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @(Total Debtors)     | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value eligible for DP (B)  | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maximum Drawing Power (A + B)     | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                         | Mandatory     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Total Stock Value                 | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Sundry Creditors            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Paid Stock                        | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Margin @(Total Stock Vlaue) | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Stock value eligible for DP (A)   | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Total Debtors                     | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Bills Discounted            | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Debtor value considered           | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Margin @(Total Debtors)     | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Debtor value eligible for DP (B)  | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maximum Drawing Power (A + B)     | non mandatory | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                         | Mandatory     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Total Stock Value                 | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Sundry Creditors            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Paid Stock                        | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @(Total Stock Vlaue) | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock value eligible for DP (A)   | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Debtors                     | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Bills Discounted            | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value considered           | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @(Total Debtors)     | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value eligible for DP (B)  | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maximum Drawing Power (A + B)     | non mandatory | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @NotImplemented
  Scenario: ACAUTOCAS-3657:  CollateralPage data type validation for collateral Stock And Book Debts in Drawing Power Computation
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And sees section "Drawing Power Computation"
    Then user should be able to see all fields with proper datatype

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3658:  CollateralPage data format validation for collateral Stock And Book Debts in Drawing Power Computation
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And sees section "Drawing Power Computation"
    Then user should be able to see all fields with proper format


  Scenario Outline: ACAUTOCAS-3659:  CollateralPage field label validation for collateral Stock And Book Debts in Drawing Power Computation for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to see "<FieldName>" label
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName                        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Total Stock Value                | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Sundry Creditors           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Paid Stock                       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @                   | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock value eligible for DP (A)  | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Debtors                    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Bills Discounted           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value considered          | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @                   | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value eligible for DP (B) | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maximum Drawing Power (A + B)    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName                        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Total Stock Value                | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Sundry Creditors           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Paid Stock                       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Margin @                   | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Stock value eligible for DP (A)  | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Total Debtors                    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Bills Discounted           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Debtor value considered          | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Less: Margin @                   | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Debtor value eligible for DP (B) | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Maximum Drawing Power (A + B)    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName                        | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Total Stock Value                | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Sundry Creditors           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Paid Stock                       | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @                   | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Stock value eligible for DP (A)  | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Total Debtors                    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Bills Discounted           | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value considered          | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Less: Margin @                   | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Debtor value eligible for DP (B) | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Maximum Drawing Power (A + B)    | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3660: CollateralPage validation of <FieldName> for collateral Stock And Book Debts in Reason for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And sees section "<SectionName>"
    Then user should be able to see "<FieldName>"
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName          | SectionName | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Reason Code        | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks in Reason  | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName          | SectionName | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Reason Code        | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason Description | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Remarks in Reason  | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName          | SectionName | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Reason Code        | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason Description | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Remarks in Reason  | Reason      | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-3661:  CollateralPage data type <Validity> for <InputType> of collateral Stock And Book Debts in Reason Remarks for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens stock details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_stockAndBookDebts>" and row <Collateral_stockAndBookDebts_rowNum>
    And user fill "<FieldName>" of collateral details for collateral subtype
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    @ImplementedBy-ankit.yadav
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Remarks(Stock) | positive digits                  | does not throw any error | collateral.xlsx | stock_details                | 97                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | characters                       | does not throw any error | collateral.xlsx | stock_details                | 98                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | both digits and characters       | does not throw any error | collateral.xlsx | stock_details                | 99                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | negative                         | does not throw any error | collateral.xlsx | stock_details                | 100                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | hyphen                           | does not throw any error | collateral.xlsx | stock_details                | 101                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | space                            | does not throw any error | collateral.xlsx | stock_details                | 102                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | special characters except hyphen | does not throw any error | collateral.xlsx | stock_details                | 103                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | valid    | Remarks(Stock) | positive digits                  | does not throw any error | collateral.xlsx | stock_details                | 97                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Remarks(Stock) | characters                       | does not throw any error | collateral.xlsx | stock_details                | 98                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Remarks(Stock) | both digits and characters       | does not throw any error | collateral.xlsx | stock_details                | 99                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Remarks(Stock) | negative                         | does not throw any error | collateral.xlsx | stock_details                | 100                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Remarks(Stock) | hyphen                           | does not throw any error | collateral.xlsx | stock_details                | 101                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Remarks(Stock) | space                            | does not throw any error | collateral.xlsx | stock_details                | 102                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | valid    | Remarks(Stock) | special characters except hyphen | does not throw any error | collateral.xlsx | stock_details                | 103                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | FieldName      | InputType                        | Throws_NotThrows         | CollateralWB    | Collateral_stockAndBookDebts | Collateral_stockAndBookDebts_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | valid    | Remarks(Stock) | positive digits                  | does not throw any error | collateral.xlsx | stock_details                | 97                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | characters                       | does not throw any error | collateral.xlsx | stock_details                | 98                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | both digits and characters       | does not throw any error | collateral.xlsx | stock_details                | 99                                  | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | negative                         | does not throw any error | collateral.xlsx | stock_details                | 100                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | hyphen                           | does not throw any error | collateral.xlsx | stock_details                | 101                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | space                            | does not throw any error | collateral.xlsx | stock_details                | 102                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | valid    | Remarks(Stock) | special characters except hyphen | does not throw any error | collateral.xlsx | stock_details                | 103                                 | default            | 425                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

  @SkippedFormatValidation
  Scenario: ACAUTOCAS-3662:  CollateralPage data format validation for collateral Stock And Book Debts in Reason
    When user opens an application at "DDE" stage from application grid
    And user opens "CollateralPage"
    And user adds a new collateral type as "Current Assets" and Sub Type "Stock And Book Debts"
    And sees section "Reason"
    Then user should be able to see all fields with proper format


  Scenario Outline: ACAUTOCAS-3663: CollateralPage field label validation of <FieldName> in <SectionName> for collateral Stock And Book Debts in Reason for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage for <ApplicantType> Applicant Type, <Category> Category, and <Key> Key
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type along with collateral sub type
    And sees section "<SectionName>"
    Then user should be able to see "<FieldName>" with proper label
    @ImplementedBy-harshprit.kumar
    @Conventional @Release
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SectionName | FieldName          | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Reason      | Reason Code        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason      | Reason Description | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason      | Remarks            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | SectionName | FieldName          | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | Reason      | Reason Code        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason      | Reason Description | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |
      | Reason      | Remarks            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-aditya.tomar
    @Islamic @Release
    #${ProductType:["IAF","IHF"]}
    #${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | SectionName | FieldName          | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | Reason      | Reason Code        | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason      | Reason Description | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
      | Reason      | Remarks            | collateral.xlsx | default            | 505                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |
