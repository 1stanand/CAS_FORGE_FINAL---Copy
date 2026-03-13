@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@Release
@Part-2
#${CollateralSubType:["Consumer Vehicle"]}
#${ApplicantType:["indiv","nonindiv"]}


Feature: Addition of Consumer Vehicle

#  Pre-Requsites---
#  In this feature we will attach an Asset Type Collateral to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #PF(Secured),EDU(Secured)
  Scenario Outline: ACAUTOCAS-2130: user is not able to move to the next stage without collateral for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then user should get error message without adding collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","EDU"]}
    # ${ApplicationStage:["Post Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key     | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 12                             | <ProductType> | <ApplicationStage> | nocolla |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    #${ApplicationStage:["Post Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key     | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 12                             | <ProductType> | <ApplicationStage> | nocolla | <Category> | <ApplicantType> | <CollateralSubType> |


  @ImplementedBy-pallavi.singh
  @Perishable
  Scenario Outline: user should be able to move to the next stage with collateral for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    Then user should be able to move application to next stage
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 292                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @Islamic
    # ${ProductType:["IPF"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 292                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 292                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  #PF(Unsecured),EDU(Unsecured)
  @Perishable
  #FeatureID-ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-16719: user moves to the next stage without collateral for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage
    Then application should be moved to "<NextStage>" stage successfully
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","EDU"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key     | Category | ApplicantType   | NextStage      |
      | <ProductType> | <ApplicationStage> | nocolla |          | <ApplicantType> | Recommendation |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | Key     | Category   | ApplicantType   | NextStage      |
      | <ProductType> | <ApplicationStage> | nocolla | <Category> | <ApplicantType> | Recommendation |


  Scenario Outline: ACAUTOCAS-2131: user moves a new Asset Type collateral to the loan application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then User should be able to attach it only if it is linked to the Product against which the application is entered
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  Scenario Outline: ACAUTOCAS-2132: user adds a collateral with sub type as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the collateral sub type
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

#Collateral Type Drop down will list all the Collateral Types that are attached to the product under which the application is getting processed.
  Scenario Outline: ACAUTOCAS-1149: User enters mandatory information for <CollateralSubType> and saves without checking duplicates of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills mandatory fields of vehicle details
    And user saves the Collateral Details
    Then user gets a proper notification
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | vehicle_details           | 0                                | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | vehicle_details           | 0                                | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | vehicle_details           | 0                                | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

##3 field combination
  #FeatureID-ACAUTOCAS-230,ACAUTOCAS-244
  Scenario Outline: ACAUTOCAS-4315: User checks for duplicate collateral for Chassis Engine and Registration number for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Vehicle Details section
    When enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number
    And checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 39                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 39                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 39                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1151: User checks for duplicate collateral for unique <FirstField> and <SecondField> and non-unique <ThirdField> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Vehicle Details section
    When user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters non unique "<ThirdField>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1152: User views for duplicate collateral for unique <FirstField> and <SecondField> and non-unique <ThirdField> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Vehicle Details section
    When user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters non unique "<ThirdField>"
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

#2 field combination for Chassis, Engine and Registration number
  Scenario Outline: ACAUTOCAS-1157: User checks for duplicate collateral for unique <FirstField> and <SecondField> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user opens Vehicle Details section
    When user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    And checks for duplicate collateral
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Chasis Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Chasis Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Chasis Number | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1158: User checks for duplicate collateral for <Unique_NonUnique_FirstField> <FirstField> and <Unique_NonUnique_SecondField> <SecondField> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Vehicle Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters "<Unique_NonUnique_FirstField>" "<FirstField>"
    And user enters "<Unique_NonUnique_SecondField>" "<SecondField>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1159: User views duplicate collateral for <Unique_NonUnique_FirstField> <FirstField> and <Unique_NonUnique_SecondField> <SecondField> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user opens Vehicle Details section
    When user enters "<Unique_NonUnique_FirstField>" "<FirstField>"
    And user enters "<Unique_NonUnique_SecondField>" "<SecondField>"
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

# one field validation for engine, chasis and registration number
  Scenario Outline: ACAUTOCAS-1178: User checks for duplicate collateral for unique <FieldName> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Vehicle Details section
    When user enters unique "<FieldName>"
    And checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    Then user should receive a proper popup message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName           | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName           | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName           | CollateralWB    | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1179: User checks for duplicate collateral for non-unique <FieldName> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters non unique "<FieldName>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1180: User views duplicate collateral for non-unique <FieldName> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user checks the duplicates on collateral dedupe check
    And user saves collateral data
    And user clicks on plus icon to add new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters non unique "<FieldName>"
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1187:  user attaches a duplicate collateral attached to same application of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | collateral.xlsx | asset_details           | 188                            | 196                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 197                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 198                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 199                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 200                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 201                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 202                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType |
      | collateral.xlsx | asset_details           | 188                            | 196                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 197                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 198                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 199                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 200                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 201                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 202                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | collateral.xlsx | asset_details           | 188                            | 196                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 197                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 198                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 199                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 200                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 201                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 202                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |

  Scenario Outline: ACAUTOCAS-1188:  user attaches a duplicate collateral attached to a different application for Consumer Vehicle of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | collateral.xlsx | asset_details           | 188                            | 189                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 190                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 191                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 192                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 193                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 194                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 195                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType |
      | collateral.xlsx | asset_details           | 188                            | 189                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 190                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 191                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 192                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 193                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 194                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 195                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | collateral.xlsx | asset_details           | 188                            | 189                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 190                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 191                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 192                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 193                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 194                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | collateral.xlsx | asset_details           | 188                            | 195                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |


  @LoggedBug
  Scenario Outline: ACAUTOCAS-1189: User modifies <FieldName> after running dedupe and attempts to save for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FieldName>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 70                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 71                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 72                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 70                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 71                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 72                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 70                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 71                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                 | 72                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  @LoggedBug
  Scenario Outline: ACAUTOCAS-1192: User modifies <FirstField> and <SecondField> after running dedupe and attempts to save for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FirstField>"
    And user modifies "<SecondField>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 73                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 74                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 75                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 73                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 74                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 75                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 73                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 74                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 75                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  @LoggedBug
  Scenario Outline: ACAUTOCAS-4316: User modifies <FirstField> <SecondField> and <ThirdField> after running dedupe and attempts to save for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum1>
    And user fills mandatory fields of vehicle details section
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum2>
    When user modifies "<FirstField>"
    And user modifies "<SecondField>"
    And user modifies "<ThirdField>"
    And user saves the Collateral Details
    Then user gets a proper notification message
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | FirstField    | SecondField   | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 69                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    Examples:
      | FirstField    | SecondField   | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 69                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | FirstField    | SecondField   | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum1 | Collateral_vehicleDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number | Registration Number | collateral.xlsx | default            | 0                         | vehicle_details           | 44                                | 69                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    ######
  Scenario Outline: ACAUTOCAS-1196:  user misses entering one or more mandatory information for Consumer Vehicle of <ProductType> application at <ApplicationStage> stage and saves
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user should receive a failure "<MandatoryField>" missing message
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | MandatoryField                            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | Asset Category, Manufacturer, Asset model | collateral.xlsx | asset_details           | 203                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Manufacturer, Asset model                 | collateral.xlsx | asset_details           | 204                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Asset model                               | collateral.xlsx | asset_details           | 205                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Engine number                             | collateral.xlsx | asset_details           | 206                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Chassis number                            | collateral.xlsx | asset_details           | 207                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 1                | collateral.xlsx | asset_details           | 208                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 2                | collateral.xlsx | asset_details           | 209                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 3                | collateral.xlsx | asset_details           | 210                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 4                | collateral.xlsx | asset_details           | 211                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number                       | collateral.xlsx | asset_details           | 212                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Engine number, Chassis number             | collateral.xlsx | asset_details           | 213                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Asset cost, Engine number, Chassis number | collateral.xlsx | asset_details           | 214                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Asset cost, Registration number           | collateral.xlsx | asset_details           | 215                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Chassis number, Registration number       | collateral.xlsx | asset_details           | 216                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Engine number, Registration number        | collateral.xlsx | asset_details           | 217                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | MandatoryField                            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType |
      | Asset Category, Manufacturer, Asset model | collateral.xlsx | asset_details           | 203                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Manufacturer, Asset model                 | collateral.xlsx | asset_details           | 204                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Asset model                               | collateral.xlsx | asset_details           | 205                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Engine number                             | collateral.xlsx | asset_details           | 206                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Chassis number                            | collateral.xlsx | asset_details           | 207                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 1                | collateral.xlsx | asset_details           | 208                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 2                | collateral.xlsx | asset_details           | 209                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 3                | collateral.xlsx | asset_details           | 210                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 4                | collateral.xlsx | asset_details           | 211                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Registration number                       | collateral.xlsx | asset_details           | 212                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Engine number, Chassis number             | collateral.xlsx | asset_details           | 213                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Asset cost, Engine number, Chassis number | collateral.xlsx | asset_details           | 214                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Asset cost, Registration number           | collateral.xlsx | asset_details           | 215                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Chassis number, Registration number       | collateral.xlsx | asset_details           | 216                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | Engine number, Registration number        | collateral.xlsx | asset_details           | 217                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | MandatoryField                            | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | Asset Category, Manufacturer, Asset model | collateral.xlsx | asset_details           | 203                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Manufacturer, Asset model                 | collateral.xlsx | asset_details           | 204                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Asset model                               | collateral.xlsx | asset_details           | 205                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Engine number                             | collateral.xlsx | asset_details           | 206                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Chassis number                            | collateral.xlsx | asset_details           | 207                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 1                | collateral.xlsx | asset_details           | 208                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 2                | collateral.xlsx | asset_details           | 209                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 3                | collateral.xlsx | asset_details           | 210                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number part 4                | collateral.xlsx | asset_details           | 211                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Registration number                       | collateral.xlsx | asset_details           | 212                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Engine number, Chassis number             | collateral.xlsx | asset_details           | 213                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Asset cost, Engine number, Chassis number | collateral.xlsx | asset_details           | 214                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Asset cost, Registration number           | collateral.xlsx | asset_details           | 215                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Chassis number, Registration number       | collateral.xlsx | asset_details           | 216                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | Engine number, Registration number        | collateral.xlsx | asset_details           | 217                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |


  Scenario Outline: ACAUTOCAS-1197: User entering a new <CollateralSubType> to the personal loan application to enter State RTO Code for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters "<validity>" value in Registration Number state RTO code
    Then user should "<get_notGet>" error message in Registration Number State RTO box
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | validity | get_notGet | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | correct  | not get    | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | correct  | not get    | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | wrong    | get        | collateral.xlsx | default            | 0                         | vehicle_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | validity | get_notGet | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | correct  | not get    | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | correct  | not get    | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | wrong    | get        | collateral.xlsx | default            | 0                         | vehicle_details           | 45                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | validity | get_notGet | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | correct  | not get    | collateral.xlsx | default            | 0                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | correct  | not get    | collateral.xlsx | default            | 0                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | wrong    | get        | collateral.xlsx | default            | 0                         | vehicle_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1198: User entering a State RTO Code not belonging to the State as in Communication Address for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
  #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user stores value of state of Communication Details
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills state RTO code different from Customer communication address state
    Then user gets a proper notification
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 177                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 177                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 177                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-2133: User entering a new <CollateralSubType> to the personal loan application and enters wrong State RTO Code for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters "<Validity>" value in RegNumberFirstBox
    Then user gets a proper notification
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Validity | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | wrong    | default            | 0                         | vehicle_details           | 257                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Validity | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | wrong    | default            | 0                         | vehicle_details           | 257                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Validity | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | wrong    | default            | 0                         | vehicle_details           | 257                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1199: Registration number breakup validation message in <CollateralSubType> for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Vehicle Details section
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    And user closes duplicate check result box after checking the duplicates
    And user saves the data
    Then expected message around Registration Number field should appear
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 11                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 12                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 13                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 11                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 12                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 13                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 11                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 12                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 13                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1200: Registration number breakup validation for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    Then expected value should be present in Registration Number for RC Authentication
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 11                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 12                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 13                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 15                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 11                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 12                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 13                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 15                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 11                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 12                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 13                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 15                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1201: Registration number breakup view after saving for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the Collateral Details
    When user views the saved collateral
    And user opens Vehicle Details section
    Then expected value should be present in Registration Number for RC Authentication
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 32                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 33                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 34                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 35                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 36                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 37                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 38                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 32                               | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 33                               | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 34                               | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 35                               | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 36                               | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 37                               | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 38                               | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 32                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 33                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 34                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 35                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 36                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 37                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 38                               | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  # UI not working
  @LoggedBug
  Scenario Outline: ACAUTOCAS-1202: Registration number Authentication for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
  #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user stores value of state of Communication Details
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    And User clicks on RC Authentication for validating Registration Number
    When user opens RC Authentication Details accordion
    Then RC Authentication Details is filled
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 178                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 179                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 180                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 181                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 182                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 183                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 184                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 178                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 179                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 180                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 181                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 182                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 183                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 184                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 178                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 179                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 180                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 181                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 182                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 183                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 184                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1203: Registration number breakup validation message with Special Number for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And checks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    Then expect success status in Registration Number field
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1204: Registration number breakup validation with Special Number for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And checks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    Then expect success status in Registration Number field
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

  Scenario Outline: ACAUTOCAS-1205: Registration number breakup validation with Special Number to without Special Number for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And checks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    And unchecks Is Special Number
    Then all blocks of Registration Number and Registration Number should become blank
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 20                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 25                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 26                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 27                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1206: User is able to add a new collateral as Consumer Vehicle of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then user is able to validate addition of collateral for "<Validity>" data
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 218                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 219                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 220                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 221                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 222                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 223                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 224                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 225                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 226                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 227                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 229                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 230                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 231                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 232                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 233                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 234                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 235                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 236                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 237                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 238                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 239                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 240                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 241                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 242                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 243                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 244                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 245                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 246                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 247                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 248                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 249                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 250                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 251                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 218                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 219                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 220                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 221                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 222                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 223                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 224                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 225                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 226                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 227                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 228                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 229                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 230                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 231                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 232                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 233                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 234                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 235                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 236                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 237                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 238                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 239                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 240                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 241                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 242                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 243                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 244                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 245                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 246                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 247                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 248                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 249                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 250                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 251                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 218                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 219                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 220                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 221                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 222                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 223                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 224                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 225                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 226                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 227                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 229                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 230                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 231                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 232                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 233                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 234                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 235                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 236                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 237                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 238                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 239                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 240                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 241                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 242                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 243                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 244                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 245                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 246                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 247                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 248                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 249                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 250                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 251                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |

  Scenario Outline: ACAUTOCAS-1207:  user is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field> with new Global Collateral No
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then new collateral should be attached to the application with new Global Collateral Number on "<Validity>"
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 218                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 219                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 220                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 221                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 222                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 223                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 224                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 225                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 226                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 227                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 229                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 230                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 231                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 232                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 233                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 234                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 235                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 236                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 237                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 238                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 239                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 240                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 241                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 242                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 243                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 244                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 245                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 246                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 247                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 248                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 249                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 250                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 251                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 218                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 219                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 220                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 221                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 222                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 223                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 224                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 225                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 226                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 227                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 228                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 229                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 230                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 231                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 232                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 233                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 234                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 235                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 236                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 237                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 238                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 239                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 240                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 241                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 242                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 243                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 244                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 245                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 246                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 247                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 248                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 249                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 250                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 251                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | Consumer Vehicle  |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 218                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 219                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 220                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 221                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 222                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 223                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 224                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 225                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 226                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 227                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 228                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 229                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 230                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 231                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 232                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 233                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 234                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 235                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 236                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 237                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 238                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 239                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 240                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 241                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 242                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 243                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 244                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 245                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 246                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 247                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 248                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 249                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 250                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 251                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | Consumer Vehicle  |


  #create another after this one
  Scenario Outline: ACAUTOCAS-1208:  Capture <CollateralSubType> against an application with create another after this one for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user selects create another after this one option
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    Then CollateralPage remains available to create another collateral
    @ImplementedBy-harshprit.kumar
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 0                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    ###Squash:137607
    ###Story:CAS-23473
    ###Bug:
    #FeatureID-ACAUTOCAS-230,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16720: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Consumer Vehicle
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 218            | Consumer Vehicle |
      | asset_details | 219            | Consumer Vehicle |
      | asset_details | 220            | Consumer Vehicle |
      | asset_details | 221            | Consumer Vehicle |
      | asset_details | 222            | Consumer Vehicle |
      | asset_details | 223            | Consumer Vehicle |
      | asset_details | 224            | Consumer Vehicle |
      | asset_details | 225            | Consumer Vehicle |
    Then user check the all the added collateral to application
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |



###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-230,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16721: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Consumer Vehicle
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 218            | Consumer Vehicle |
      | asset_details | 219            | Consumer Vehicle |
      | asset_details | 220            | Consumer Vehicle |
      | asset_details | 221            | Consumer Vehicle |
      | asset_details | 222            | Consumer Vehicle |
      | asset_details | 223            | Consumer Vehicle |
      | asset_details | 224            | Consumer Vehicle |
      | asset_details | 225            | Consumer Vehicle |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 218            | Consumer Vehicle |
      | asset_details | 219            | Consumer Vehicle |
      | asset_details | 220            | Consumer Vehicle |
      | asset_details | 221            | Consumer Vehicle |
      | asset_details | 222            | Consumer Vehicle |
      | asset_details | 223            | Consumer Vehicle |
      | asset_details | 224            | Consumer Vehicle |
      | asset_details | 225            | Consumer Vehicle |
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |



  ###Squash:137607
  ###Story:CAS-23473
  ###Bug:
  #FeatureID-ACAUTOCAS-230,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16722: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Consumer Vehicle at Enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 218            | Consumer Vehicle |
      | asset_details | 219            | Consumer Vehicle |
      | asset_details | 220            | Consumer Vehicle |
      | asset_details | 221            | Consumer Vehicle |
      | asset_details | 222            | Consumer Vehicle |
      | asset_details | 223            | Consumer Vehicle |
      | asset_details | 224            | Consumer Vehicle |
      | asset_details | 225            | Consumer Vehicle |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType      |
      | asset_details | 218            | Consumer Vehicle |
      | asset_details | 219            | Consumer Vehicle |
      | asset_details | 220            | Consumer Vehicle |
      | asset_details | 221            | Consumer Vehicle |
      | asset_details | 222            | Consumer Vehicle |
      | asset_details | 223            | Consumer Vehicle |
      | asset_details | 224            | Consumer Vehicle |
      | asset_details | 225            | Consumer Vehicle |
    @ImplementedBy-rishabh.sachan
    @Conventional
    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["SHARES","BONDS","METALS"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    @ImplementedBy-pallavi.singh
    @Islamic
    #${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

