@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-2

#${CollateralSubType:["Commercial Vehicle"]}
Feature: Addition of Commercial Vehicle Positive Cases

#  Pre-Requisites---
#  In this feature we will attach an Asset Type Collateral-Commercial Vehicle to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-2072: user moves a new Asset Type collateral to the loan application for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then User should be able to attach it only if it is linked to the Product against which the application is entered

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | default            | 0                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


  #PF(Secured),EDU(Secured)
  @Perishable
  #FeatureID-ACAUTOCAS-230
  Scenario Outline: ACAUTOCAS-16653: user moves to the next stage without collateral for Commercial Vehicle for secured <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user gets a notification message

    #${ProductType:["PF","EDU"]}
    #${ApplicationStage:["Post Approval"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Post Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 576                       |


  @Perishable
  @LoggedBug-CAS-228641
  #PF(Secured),EDU(Secured)
  Scenario Outline: At <ApplicationStage> stage user deletes and moves secured <ProductType> application to the next stage without collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user should not get collateral details not saved error message

    # ${ProductType:["PF","EDU"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    # ${Category:["shares","bonds","metals"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 576                       |


  @Perishable
  #PF(Secured),EDU(Secured)
  Scenario Outline: At <ApplicationStage> stage user moves secured <ProductType> application to the next stage with collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    When user moves to the next stage in collateral
    Then user should not get collateral details not saved error message

    # ${ProductType:["PF","EDU"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       | vehicle_details           | 54                               |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Post Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    # ${Category:["shares","bonds","metals"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | default            | 576                       | vehicle_details           | 54                               |


  @Perishable
  #Unsecured
  Scenario Outline: At <ApplicationStage> stage user moves unsecured <ProductType> application to the next stage with collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    When user moves to the next stage in collateral
    Then user should not get collateral details not saved error message

    #${ProductType:["HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       | vehicle_details           | 54                               |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Post Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       | vehicle_details           | 54                               |


  @Perishable
  #Unsecured
  Scenario Outline: At <ApplicationStage> stage user deletes and moves unsecured <ProductType> application to the next stage without collateral
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    When user moves to the next stage in collateral
    Then user should not get collateral details not saved error message

    #${ProductType:["HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE",Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Post Approval","Reconsideration"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_default | Collateral_default_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | default            | 576                       |


  Scenario Outline: ACAUTOCAS-2073: user adds a collateral with sub type as <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the sub collateral

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |



#3 field combination
  #FeatureID-ACAUTOCAS-231
  Scenario Outline: ACAUTOCAS-4299: User checks for duplicate collateral for Chassis Engine and Registration number in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user opens Vehicle Details section
    And enters unique Chassis number
    And enters unique Engine number
    And enters unique Registration number
    When checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    Then user should receive a proper popup message

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1043: User checks for duplicate collateral for unique <FirstField> and <SecondField> and non-unique <ThirdField> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters non unique "<ThirdField>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1044: User views for duplicate collateral for unique <FirstField> and <SecondField> and non-unique <ThirdField> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters non unique "<ThirdField>"
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FirstField    | SecondField         | ThirdField          | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number | Chasis Number       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#2 field combination for Chassis, Engine and Registration number
  Scenario Outline: ACAUTOCAS-1049: User checks for duplicate collateral for unique <FirstField> and <SecondField> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters unique "<FirstField>"
    And user enters unique "<SecondField>"
    When checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    Then user should receive a proper popup message

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Chasis Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Chasis Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FirstField    | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Chasis Number | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Engine Number | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1050: User checks for duplicate collateral for <Unique_NonUnique_FirstField> <FirstField> and <Unique_NonUnique_SecondField> <SecondField> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user enters "<Unique_NonUnique_FirstField>" "<FirstField>"
    And user enters "<Unique_NonUnique_SecondField>" "<SecondField>"
    When checks for duplicate collateral
    Then user should receive a message saying some duplicates found

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1051: User views duplicate collateral for <Unique_NonUnique_FirstField> <FirstField> and <Unique_NonUnique_SecondField> <SecondField> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user opens Vehicle Details section
    And user enters "<Unique_NonUnique_FirstField>" "<FirstField>"
    And user enters "<Unique_NonUnique_SecondField>" "<SecondField>"
    When checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Unique_NonUnique_FirstField | FirstField    | Unique_NonUnique_SecondField | SecondField         | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | unique                      | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Chasis Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | unique                      | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | unique                       | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | non unique                  | Engine Number | non unique                   | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


# one field validation for engine, chasis and registration number
  Scenario Outline: ACAUTOCAS-1070: User checks for duplicate collateral for unique <FieldName> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user opens Vehicle Details section
    When user enters unique "<FieldName>"
    And checks for duplicate collateral
    Then user should receive a proper popup message

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1071: User checks for duplicate collateral for non-unique <FieldName> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user opens Vehicle Details section
    When user enters non unique "<FieldName>"
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1072: User views duplicate collateral for non-unique <FieldName> in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    And user clicks on plus icon to add new collateral
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user opens Vehicle Details section
    And user enters non unique "<FieldName>"
    When checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldName           | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Engine Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Chasis Number       | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Registration Number | collateral.xlsx | default            | 2                         | vehicle_details           | 54                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @Perishable
  Scenario Outline: ACAUTOCAS-1079:  user attaches a duplicate collateral attached to a different application of <CollateralSubType> for <ProductType> at <ApplicationStage> stage
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

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 80                             | 292                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 293                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 294                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 295                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 296                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 297                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 298                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 80                             | 292                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 293                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 294                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 295                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 296                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 297                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 298                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 80                             | 292                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 293                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 294                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 295                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 296                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 297                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | asset_details           | 80                             | 298                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


##Validate Registration Number with config.allow.vehicle.fourBlock.registrationNumber property set to TRUE
  Scenario Outline: ACAUTOCAS-1080: User entering a new <CollateralSubType> to the personal loan application to enter State RTO Code for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user enters "<validity>" value in Registration Number state RTO code
    Then user should "<get_notGet>" error message in Registration Number State RTO box

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | validity | get_notGet | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | correct  | notGet     | collateral.xlsx | default            | 2                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | correct  | notGet     | collateral.xlsx | default            | 2                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | wrong    | get        | collateral.xlsx | default            | 2                         | vehicle_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | validity | get_notGet | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | correct  | notGet     | collateral.xlsx | default            | 2                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | correct  | notGet     | collateral.xlsx | default            | 2                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | wrong    | get        | collateral.xlsx | default            | 2                         | vehicle_details           | 45                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | validity | get_notGet | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | correct  | notGet     | collateral.xlsx | default            | 2                         | vehicle_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | correct  | notGet     | collateral.xlsx | default            | 2                         | vehicle_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | wrong    | get        | collateral.xlsx | default            | 2                         | vehicle_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2913: Registration number breakup validation message in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens vehicle details section
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    Then expect "<Success_Error_Message>" message or status around Registration Number field

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Success_Error_Message               | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 3                                | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 4                                | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 5                                | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 6                                | Please enter at least 4 characters. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 7                                | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 8                                | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 9                                | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 10                               | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 11                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 12                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 13                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 14                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Success_Error_Message               | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 3                                | Success                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 4                                | Success                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 5                                | Success                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 6                                | Please enter at least 4 characters. | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 7                                | This field is required.             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 8                                | This field is required.             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 9                                | This field is required.             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 10                               | This field is required.             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 11                               | Success                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 12                               | Success                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 13                               | Success                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 14                               | Success                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Success_Error_Message               | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 3                                | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 4                                | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 5                                | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 6                                | Please enter at least 4 characters. | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 7                                | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 8                                | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 9                                | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 10                               | This field is required.             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 11                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 12                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 13                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 14                               | Success                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2914: Registration number breakup validation in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And unchecks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    Then expected value should be present in Registration Number for RC Authentication

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 388                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 389                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 390                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 391                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 388                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 389                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 390                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 391                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 3                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 4                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 5                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 6                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 7                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 8                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 9                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 10                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 388                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 389                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 390                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 14                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 391                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1083: Registration number breakup view after saving in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user fills Registration Number breakup
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the data
    When user views the saved collateral
    And user opens Vehicle Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    Then expected value should be present in Registration Number for RC Authentication

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 32                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 33                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 34                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 392                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 393                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 394                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 38                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 32                               | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 33                               | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 34                               | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 392                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 393                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 394                              | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 38                               | default            | 2                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | vehicle_details           | 32                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 33                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 34                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 392                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 393                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 394                              | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | vehicle_details           | 38                               | default            | 2                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1084: Registration number Authentication of <CollateralSubType> for <ProductType> at <ApplicationStage> stage
  #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills Registration Number breakup
    And User clicks on RC Authentication for validating Registration Number
    When user opens RC Authentication Details accordion
    Then RC Authentication Details is filled

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 178                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 179                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 180                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 181                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 182                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 183                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 184                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 178                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 179                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 180                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 181                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 182                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 183                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 184                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 178                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 179                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 180                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 181                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 182                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 183                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 184                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1085: Registration number breakup validation message using Dataset <DataSet> with Special Number in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user opens Vehicle Details section
    And checks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    Then expect success status in Registration Number field

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | DataSet | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 20                               | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | 8       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | 9       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 25                               | 10      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 26                               | 11      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 27                               | 12      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | 13      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | 14      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | 15      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | DataSet | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | 1       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | 2       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | 3       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | 4       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 20                               | 5       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | 6       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | 7       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | 8       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | 9       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 25                               | 10      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 26                               | 11      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 27                               | 12      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | 13      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | 14      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | 15      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | DataSet | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | 1       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | 2       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | 3       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | 4       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 20                               | 5       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | 6       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | 7       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | 8       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | 9       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 25                               | 10      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 26                               | 11      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 27                               | 12      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | 13      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | 14      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | 15      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1086: Registration number breakup validation with Special Number in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And checks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    Then expected value should be present in Registration Number for RC Authentication

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 395                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 392                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 393                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 394                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 395                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 392                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 393                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 394                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 395                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 392                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 393                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 394                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1087: Registration number breakup validation with Special Number without Special Number in <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And checks Is Special Number
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    When user fills Registration Number breakup
    And unchecks Is Special Number
    Then all blocks of Registration Number and Registration Number should become blank

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 395                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 392                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 393                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 394                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 395                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 392                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 393                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 394                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 16                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 17                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 18                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 19                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 395                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 21                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 22                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 23                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 24                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 392                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 393                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 394                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 28                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 29                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 30                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1088: User is able to add a new collateral as Commercial Vehicle of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field>
  #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then user is able to validate addition of collateral for "<Validity>" data

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 154                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 155                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 156                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 157                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 158                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 159                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 160                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 161                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 162                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 163                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 164                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 165                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 166                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 167                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 168                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 169                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 170                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 171                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 172                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 173                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 174                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 175                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 176                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 177                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 178                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 179                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 180                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 181                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 182                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 183                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 184                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 185                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 186                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 187                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 154                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 155                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 156                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 157                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 158                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 159                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 160                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 161                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 162                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 163                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 164                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 165                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 166                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 167                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 168                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 169                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 170                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 171                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 172                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 173                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 174                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 175                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 176                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 177                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 178                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 179                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 180                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 181                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 182                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 183                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 184                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 185                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 186                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 187                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 154                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 155                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 156                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 157                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 158                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 159                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 160                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 161                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 162                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 163                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 164                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 165                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 166                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 167                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 168                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 169                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 170                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 171                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 172                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 173                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 174                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 175                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 176                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 177                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 178                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 179                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 180                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 181                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 182                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 183                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 184                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 185                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 186                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 187                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1089: User is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Description> is <Validity> value on <Field> with new Global Collateral No
  #Test the screen with various test data to identify issues. The dataset carries data to Pass and Fail.
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user fill "<Field>" of collateral details for collateral subtype
    And user checks the duplicates on collateral dedupe check
    When user saves the Collateral Details
    Then new collateral should be attached to the application with new Global Collateral Number on "<Validity>"

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 154                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 155                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 156                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 157                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 158                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 159                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 160                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 161                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 162                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 163                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 164                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 165                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 166                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 167                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 168                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 169                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 170                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 171                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 172                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 173                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 174                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 175                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 176                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 177                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 178                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 179                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 180                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 181                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 182                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 183                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 184                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 185                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 186                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 187                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 154                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 155                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 156                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 157                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 158                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 159                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 160                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 161                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 162                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 163                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 164                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 165                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 166                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 167                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 168                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 169                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 170                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 171                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 172                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 173                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 174                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 175                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 176                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 177                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 178                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 179                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 180                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 181                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 182                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 183                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 184                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 185                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 186                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 187                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | Validity | Field                  | Description                      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | valid    | Collateral Ref No      | positive digits                  | collateral.xlsx | asset_details           | 154                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | characters                       | collateral.xlsx | asset_details           | 155                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | both digits and characters       | collateral.xlsx | asset_details           | 156                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | negative                         | collateral.xlsx | asset_details           | 157                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | hyphen                           | collateral.xlsx | asset_details           | 158                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Collateral Ref No      | space                            | collateral.xlsx | asset_details           | 159                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Collateral Ref No      | special characters               | collateral.xlsx | asset_details           | 160                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | positive digits                  | collateral.xlsx | asset_details           | 161                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | characters                       | collateral.xlsx | asset_details           | 162                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | both digits and characters       | collateral.xlsx | asset_details           | 163                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | negative                         | collateral.xlsx | asset_details           | 164                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | space                            | collateral.xlsx | asset_details           | 165                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Description            | special characters except hyphen | collateral.xlsx | asset_details           | 166                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | OLV Grid Value         | positive digits                  | collateral.xlsx | asset_details           | 167                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | characters                       | collateral.xlsx | asset_details           | 168                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | both digits and characters       | collateral.xlsx | asset_details           | 169                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | negative                         | collateral.xlsx | asset_details           | 170                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | hyphen                           | collateral.xlsx | asset_details           | 171                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | space                            | collateral.xlsx | asset_details           | 172                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | OLV Grid Value         | special characters               | collateral.xlsx | asset_details           | 173                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Insured Declared Value | positive digits                  | collateral.xlsx | asset_details           | 174                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | characters                       | collateral.xlsx | asset_details           | 175                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | both digits and characters       | collateral.xlsx | asset_details           | 176                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | negative                         | collateral.xlsx | asset_details           | 177                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | hyphen                           | collateral.xlsx | asset_details           | 178                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | space                            | collateral.xlsx | asset_details           | 179                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Insured Declared Value | special characters               | collateral.xlsx | asset_details           | 180                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | valid    | Asset Cost             | positive digits                  | collateral.xlsx | asset_details           | 181                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | characters                       | collateral.xlsx | asset_details           | 182                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | both digits and characters       | collateral.xlsx | asset_details           | 183                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | negative                         | collateral.xlsx | asset_details           | 184                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | hyphen                           | collateral.xlsx | asset_details           | 185                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | space                            | collateral.xlsx | asset_details           | 186                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | invalid  | Asset Cost             | special characters               | collateral.xlsx | asset_details           | 187                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#User dedupes for unique collateral number and finds duplicate collaterals to select one with old global coll no
  Scenario Outline: ACAUTOCAS-1090: User checks for duplicate collateral and ignores them to create new of <CollateralSubType> for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum2>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    And user ignores the duplicate collaterals found
    When user saves the Collateral Details
    Then user gets a proper notification

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-harshprit.kumar
    @Conventional
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 80                             | 299                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 80                             | 299                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_assetDetails_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | asset_details           | 80                             | 299                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


#create another after this one
  Scenario Outline: ACAUTOCAS-1091:  Capture <CollateralSubType> against an application with create another after this one for <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    When user selects create another after this one option
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user closes duplicate check result box after checking the duplicates
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills Reason Section
    And user saves the Collateral Details
    And user gets saved successfully message
    Then CollateralPage remains available to create another collateral

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 2                         | vehicle_details           | 1                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @Sanity
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-231,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16654: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Commercial Vehicle
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet   | SourceSheetRow | CollSubType        |
      | asset_details | 154            | Commercial Vehicle |
      | asset_details | 155            | Commercial Vehicle |
      | asset_details | 156            | Commercial Vehicle |
      | asset_details | 157            | Commercial Vehicle |
      | asset_details | 158            | Commercial Vehicle |
      | asset_details | 159            | Commercial Vehicle |
      | asset_details | 160            | Commercial Vehicle |
      | asset_details | 161            | Commercial Vehicle |
    Then user check the all the added collateral to application

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | SourceDataFile  | ProductType   | ApplicationStage   | Key | Category | ApplicantType   |
      | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> |


###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-231,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16655: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Commercial Vehicle
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType        |
      | asset_details | 300            | Commercial Vehicle |
      | asset_details | 301            | Commercial Vehicle |
      | asset_details | 302            | Commercial Vehicle |
      | asset_details | 303            | Commercial Vehicle |
      | asset_details | 304            | Commercial Vehicle |
      | asset_details | 305            | Commercial Vehicle |
      | asset_details | 306            | Commercial Vehicle |
      | asset_details | 307            | Commercial Vehicle |
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType        |
      | asset_details | 300            | Commercial Vehicle |
      | asset_details | 301            | Commercial Vehicle |
      | asset_details | 302            | Commercial Vehicle |
      | asset_details | 303            | Commercial Vehicle |
      | asset_details | 304            | Commercial Vehicle |
      | asset_details | 305            | Commercial Vehicle |
      | asset_details | 306            | Commercial Vehicle |
      | asset_details | 307            | Commercial Vehicle |

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |


###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-231,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-16656: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Commercial Vehicle at Enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user fills mandatory fields of collateral details to attach collateral from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType        |
      | asset_details | 300            | Commercial Vehicle |
      | asset_details | 301            | Commercial Vehicle |
      | asset_details | 302            | Commercial Vehicle |
      | asset_details | 303            | Commercial Vehicle |
      | asset_details | 304            | Commercial Vehicle |
      | asset_details | 305            | Commercial Vehicle |
      | asset_details | 306            | Commercial Vehicle |
      | asset_details | 307            | Commercial Vehicle |
    And user opens application from enquiry menu
    When user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    Then user should be able to reconcile the data for below mentioned collaterals successfully from the excel file "<CollateralWB>":
      | SourceSheet   | SourceSheetRow | CollSubType        |
      | asset_details | 300            | Commercial Vehicle |
      | asset_details | 301            | Commercial Vehicle |
      | asset_details | 302            | Commercial Vehicle |
      | asset_details | 303            | Commercial Vehicle |
      | asset_details | 304            | Commercial Vehicle |
      | asset_details | 305            | Commercial Vehicle |
      | asset_details | 306            | Commercial Vehicle |
      | asset_details | 307            | Commercial Vehicle |

    #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv", "nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx |
