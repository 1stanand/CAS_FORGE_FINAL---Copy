@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release
@Part-1

#${CollateralSubType:["Ready Property"]}
Feature: Addition of Ready Property

#  Pre-Requisites---
#  In this feature we will attach an Property Type Collateral-Ready Property to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #PF(Secured),EDU(Secured)
  @Perishable
  Scenario Outline: ACAUTOCAS-2328:  user moves to the next stage without collateral for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    And user deletes the collateral based on sub type
    And user selects document tab
    And user submits the given document
    When user moves to the next stage
    Then application should be moved to "<NextStage>" stage successfully

    # ${ProductType:["PF","EDU"]}
    # ${ApplicationStage:["DDE"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | NextStage      |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Recommendation |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | NextStage      |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Recommendation |


  Scenario Outline: ACAUTOCAS-1404:  user enters mandatory information for <CollateralSubType> and saves without checking duplicates of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    When user fills mandatory fields for "<CollateralSubType>" collateral
    And user saves the data without running dedupe
    Then user should receive a proper failure message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 49                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 49                      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 49                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1405:  user misses entering one or more mandatory information for <CollateralSubType> and saves of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user select the builder constructed checkbox
    And user adds mandatory builder property under construction details
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on dedupe check
    And user saves the data of collateral subtype
    Then user should receive a failure "<MandatoryField>" missing message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | MandatoryField                                      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Project Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 48                                |
      | Floor Number, Property Classification               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 49                                |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 50                                |
      | State, Carpet Area                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 51                                |
      | Company Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 52                                |
      | Project Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 53                                |
      | Floor Number, Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 54                                |
      | Company Name, Plot Number, Built-up Area            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 55                                |
      | Project Name, State, Age of Property                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 56                                |
      | Pincode, Property Ownership                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 57                                |
      | Company Name, Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 58                                |
      | Project Name, State, Property Type                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 59                                |
      | Company Name, Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 60                                |
      | Project Name, Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 61                                |
      | Company Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 62                                |
      | Project Name, Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 63                                |
      | Address Type, Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 64                                |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 65                                |
      | Project Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 66                                |
      | Company Name, Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 67                                |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 68                                |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 69                                |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 70                                |
      | Company Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 71                                |
      | Project Name, Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 72                                |
      | Company Name, Pincode                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 73                                |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 74                                |
      | Company Name,  Carpet Area                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 75                                |
      | Project Name, State, Built-up Area                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 76                                |
      | Company Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 77                                |
      | Project Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 78                                |
      | Company Name, Property Purpose                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 79                                |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 80                                |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 81                                |
      | Project Name, Mobile Phone                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 82                                |
      | Company Name, Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 83                                |
      | Project Name, Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 84                                |
      | Company Name,  Property Type                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 85                                |
      | Plot Number, Mobile Phone                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 86                                |
      | Floor Number, State                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 87                                |
      | Property Type, Built-up Area                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 88                                |
      | Mobile Phone, Property Owner                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 89                                |
      | Age of Property                                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 90                                |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | MandatoryField                                      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Project Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 48                                |
      | Floor Number, Property Classification               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 49                                |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 50                                |
      | State, Carpet Area                                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 51                                |
      | Company Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 52                                |
      | Project Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 53                                |
      | Floor Number, Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 54                                |
      | Company Name, Plot Number, Built-up Area            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 55                                |
      | Project Name, State, Age of Property                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 56                                |
      | Pincode, Property Ownership                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 57                                |
      | Company Name, Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 58                                |
      | Project Name, State, Property Type                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 59                                |
      | Company Name, Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 60                                |
      | Project Name, Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 61                                |
      | Company Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 62                                |
      | Project Name, Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 63                                |
      | Address Type, Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 64                                |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 65                                |
      | Project Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 66                                |
      | Company Name, Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 67                                |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 68                                |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 69                                |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 70                                |
      | Company Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 71                                |
      | Project Name, Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 72                                |
      | Company Name, Pincode                               | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 73                                |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 74                                |
      | Company Name,  Carpet Area                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 75                                |
      | Project Name, State, Built-up Area                  | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 76                                |
      | Company Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 77                                |
      | Project Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 78                                |
      | Company Name, Property Purpose                      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 79                                |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 80                                |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 81                                |
      | Project Name, Mobile Phone                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 82                                |
      | Company Name, Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 83                                |
      | Project Name, Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 84                                |
      | Company Name,  Property Type                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 85                                |
      | Plot Number, Mobile Phone                           | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 86                                |
      | Floor Number, State                                 | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 87                                |
      | Property Type, Built-up Area                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 88                                |
      | Mobile Phone, Property Owner                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 89                                |
      | Age of Property                                     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 90                                |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | MandatoryField                                      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Project Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 48                                |
      | Floor Number, Property Classification               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 49                                |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 50                                |
      | State, Carpet Area                                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 51                                |
      | Company Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 52                                |
      | Project Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 53                                |
      | Floor Number, Mobile Phone, Property Classification | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 54                                |
      | Company Name, Plot Number, Built-up Area            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 55                                |
      | Project Name, State, Age of Property                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 56                                |
      | Pincode, Property Ownership                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 57                                |
      | Company Name, Floor Number, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 58                                |
      | Project Name, State, Property Type                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 59                                |
      | Company Name, Mobile Phone, Plot Number             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 60                                |
      | Project Name, Mobile Phone, Age of Property         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 61                                |
      | Company Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 62                                |
      | Project Name, Property Ownership, Built-up Area     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 63                                |
      | Address Type, Pincode, Mobile Phone                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 64                                |
      | Company Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 65                                |
      | Project Name, Floor Number, State                   | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 66                                |
      | Company Name, Property Type, Built-up Area          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 67                                |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 68                                |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 69                                |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 70                                |
      | Company Name, Carpet Area                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 71                                |
      | Project Name, Mobile Phone, Property Type           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 72                                |
      | Company Name, Pincode                               | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 73                                |
      | Project Name, Mobile Phone, Property Ownership      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 74                                |
      | Company Name,  Carpet Area                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 75                                |
      | Project Name, State, Built-up Area                  | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 76                                |
      | Company Name,  Age of Property                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 77                                |
      | Project Name, Plot Number, Mobile Phone             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 78                                |
      | Company Name, Property Purpose                      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 79                                |
      | Project Name, Mobile Phone, Built-up Area           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 80                                |
      | Company Name, Age of Property                       | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 81                                |
      | Project Name, Mobile Phone                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 82                                |
      | Company Name, Plot Number, Address Line 2           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 83                                |
      | Project Name, Mobile Phone, Carpet Area             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 84                                |
      | Company Name,  Property Type                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 85                                |
      | Plot Number, Mobile Phone                           | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 86                                |
      | Floor Number, State                                 | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 87                                |
      | Property Type, Built-up Area                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 88                                |
      | Mobile Phone, Property Owner                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 89                                |
      | Age of Property                                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 90                                |


  Scenario Outline: ACAUTOCAS-2329:  user moves a new Property Type collateral for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then application should allow only the collateral type which is linked to the product

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 15                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2330:  user adds a collateral with sub type as <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to add sub collateral

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2331:  Collateral Page <CollateralSubType> Other Details is mandatory of <ProductType> application at <ApplicationStage>
    When user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of address details of ready property
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    Then "<SectionName>" should be mandatory entered in property collateral type

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName   | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Other Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName   | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Other Details | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName   | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Other Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2332:  Collateral Page <CollateralSubType> Address is mandatory of <ProductType> application at <ApplicationStage>
    When user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of ready property
    And goes to "<SectionName>" section
    And user checks for dedupe
    Then "<SectionName>" should be mandatory entered in property collateral type

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Property Address | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Property Address | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Property Address | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2333:  CollateralPage Builder details is mandatory in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    When user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user select the builder constructed checkbox
    And user enters mandatory fields of other details of ready property
    And user enters mandatory fields of address details of ready property
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    Then "<SectionName>" should be mandatory entered in property collateral type

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Builder Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName     | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Builder Details | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SectionName     | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 37                                | Builder Details | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1406:  Collateral Page Other Details Built Up area validation for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    When user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of ready property
    Then user should receive a proper failure message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 197                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 197                     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 197                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-17098: Collateral Page Other Details Built Up area validation of different units of carpet and built up area for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    When user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheet_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    Then user should receive a proper failure message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 198                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 198                     | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheet_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 198                     | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @Sanity
  Scenario Outline: ACAUTOCAS-1407:  Collateral Page Property and Registration Details validation for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user goes to Property and Registration Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_property_registration>" and row <Collateral_property_registration_row>
    When user enters all mandatory information of Registration details
    Then user gets a proper notification

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB     | Collateral_property_registration | Collateral_property_registration_row | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx  | property_registration_details    | 1                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collaterals.xlsx | property_registration_details    | 3                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx  | property_registration_details    | 4                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx  | property_registration_details    | 17                                   | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB     | Collateral_property_registration | Collateral_property_registration_row | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx  | property_registration_details    | 1                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collaterals.xlsx | property_registration_details    | 3                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx  | property_registration_details    | 4                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx  | property_registration_details    | 17                                   | 95                        | default            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB     | Collateral_property_registration | Collateral_property_registration_row | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx  | property_registration_details    | 1                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collaterals.xlsx | property_registration_details    | 3                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx  | property_registration_details    | 4                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx  | property_registration_details    | 17                                   | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-17099: Collateral Page Property and Registration Details validation for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user goes to Property and Registration Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_property_registration>" and row <Collateral_property_registration_row>
    When user enters all mandatory information on Property and Registration Details section
    Then user gets a proper notification

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_property_registration | Collateral_property_registration_row | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_registration_details    | 2                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_property_registration | Collateral_property_registration_row | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_registration_details    | 2                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_property_registration | Collateral_property_registration_row | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_registration_details    | 2                                    | 95                        | default            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1408:  CollateralPage Property and Registration Details validation 2 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds property and registration details to collateral data from
      | collateral.xlsx | property_registration_details | 16 |
      | collateral.xlsx | property_registration_details | 17 |
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyRegistrationDetails>" and row <Collateral_propertyRegistrationDetails_rowNum>
    And user enters all mandatory information on Property and Registration Details section
    And user saves the agreement details
    Then user gets a proper notification

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 16                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 4                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 16                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 4                                             | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 16                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 4                                             | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    @LoggedBug-CAS-193485
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 18                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @LoggedBug-CAS-193485
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 18                                            | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    @LoggedBug-CAS-193485
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | property_registration_details          | 18                                            | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  #FeatureID-ACAUTOCAS-225
  Scenario Outline: ACAUTOCAS-4499:  User uses customer guarantor co-applicant address as property address for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user click on copy from an existing address on property address
    Then user should get an option to use "<Parameter>" address as property address

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key       | Category | Parameter   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |           |          | Primary     | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> | coapp     |          | CoApplicant | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> | guarantor |          | Guarantor   | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key       | Category   | Parameter   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |           | <Category> | Primary     | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> | coapp     | <Category> | CoApplicant | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> | guarantor | <Category> | Guarantor   | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | Key       | Category | Parameter   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |           |          | Primary     | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> | coapp     |          | CoApplicant | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 95                        | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> | guarantor |          | Guarantor   | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3258: User executes dedupe for <CollateralSubType> with DataSet <Collateral_addressDetails_rowNum> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should get a message in collateral dedupe check

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 40                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 41                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 42                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 43                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 44                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 45                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 46                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 47                               | other_details           | 0                              |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 40                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 41                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 42                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 43                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 44                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 45                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 46                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 47                               | other_details           | 0                              |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 40                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 41                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 42                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 43                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 44                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 45                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 46                               | other_details           | 0                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | address_details           | 47                               | other_details           | 0                              |


  Scenario Outline: ACAUTOCAS-3259:  user executes dedupe for Ready Property to find existing property of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user modifies mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should get a message in collateral dedupe check

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 60                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 61                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 62                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | collateral.xlsx | address_details           | 63                               | other_details           | 0                              | property_details           | 36                                | Post Approval             |


  Scenario Outline: ACAUTOCAS-3260:  user checks for duplicate collateral and views the duplicates in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user fill the property Address
    And checks for duplicate collateral
    And user views the duplicate Collaterals
    Then user able to view the duplicates

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | default            | 95                        | collateral.xlsx | address_details            | 232                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 233                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 234                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 235                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 236                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 237                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | default            | 95                        | collateral.xlsx | address_details            | 232                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 233                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 234                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 235                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 236                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 237                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | default            | 95                        | collateral.xlsx | address_details            | 232                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 233                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 234                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 235                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 236                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | default            | 95                        | collateral.xlsx | address_details            | 237                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3261:  user attaches a duplicate Ready Property collateral attached to same application for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheetName_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheetName_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is already attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheetName_rowNum | Collateral_sheetName_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 36                          | 199                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheetName_rowNum | Collateral_sheetName_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 36                          | 199                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheetName_rowNum | Collateral_sheetName_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 36                          | 199                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @Sanity
  Scenario Outline: ACAUTOCAS-3262:  user attaches a duplicate Ready Property collateral attached to a different application for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<SecondaryApplicationStage>" for "<SecondaryCategory>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And checks for duplicate collateral
    And user views the duplicate collateral
    And user select the "<CollateralSubType>" collateral from dedupe result which is not attached to the application
    And user saves selected dedupe collateral
    Then user gets a notification message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SecondaryApplicationStage | SecondaryCategory |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 287                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 288                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 289                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 290                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 291                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SecondaryApplicationStage | SecondaryCategory |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 287                              | other_details           | 0                              | property_details           | 36                                | Post Approval             | METALS            |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 288                              | other_details           | 0                              | property_details           | 36                                | Post Approval             | METALS            |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 289                              | other_details           | 0                              | property_details           | 36                                | Post Approval             | METALS            |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 290                              | other_details           | 0                              | property_details           | 36                                | Post Approval             | METALS            |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 291                              | other_details           | 0                              | property_details           | 36                                | Post Approval             | METALS            |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | SecondaryApplicationStage | SecondaryCategory |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 287                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 288                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 289                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 290                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 291                              | other_details           | 0                              | property_details           | 36                                | Post Approval             |                   |


  @LoggedBug-ACAUTOCAS-6650
  Scenario Outline: ACAUTOCAS-3263: user modifies property address after running dedupe for <CollateralSubType> and attempts to save of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum2>
    And user modifies "<FieldModified>" of address details of collateral subtype
    And user clicks on save collateral
    Then user gets a notification message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-aryan.jain
    @Conventional
    Examples:
      | FieldModified  | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_addressDetails_rowNum2 | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Plot Number    | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 2 | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 3 | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Taluka         | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Village        | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PinCode        | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldModified  | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_addressDetails_rowNum2 | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | Plot Number    | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Address Line 2 | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Address Line 3 | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Taluka         | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | Village        | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | PinCode        | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | FieldModified  | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_addressDetails_rowNum2 | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | Plot Number    | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 2 | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Address Line 3 | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Taluka         | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | Village        | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | PinCode        | collateral.xlsx | default            | 95                        | address_details           | 260                              | 276                               | other_details           | 1                              | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @Sanity
  Scenario Outline: ACAUTOCAS-1409: Collateral Page Ownership Details validation with DataSet <Collateral_ownershipDetails_rowNum> for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    And user enters all mandatory fields of Ownership section
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user should receive message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | ownership_details           | 17                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 18                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 19                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 20                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 21                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 22                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 23                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | ownership_details           | 17                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 18                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 19                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 20                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 21                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 22                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 23                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | ownership_details           | 17                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 18                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 19                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 20                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 21                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 22                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | ownership_details           | 23                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-17100: Collateral Page Ownership Details validation for From Date should be less than To Date with DataSet <Collateral_ownershipDetails_rowNum> for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_ownershipDetails>" and row <Collateral_ownershipDetails_rowNum>
    And user enters all mandatory fields of Ownership section
    Then user should receive message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | ownership_details           | 24                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | ownership_details           | 24                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | ownership_details           | 24                                 | other_details           | 1                              | address_details           | 48                               | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2334: Collateral Page Ownership Details validation 2 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 63                                 |
      | collateral.xlsx | ownership_details           | 64                                 |
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    Then user should receive message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2335: Collateral Page Ownership Details validation 3 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    When user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 65                                 |
      | collateral.xlsx | ownership_details           | 66                                 |
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    Then user should receive message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2336: Collateral Page Ownership Details validation 4 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    When user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 67                                 |
      | collateral.xlsx | ownership_details           | 68                                 |
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    Then user should receive message

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2337: Collateral Page Ownership Details validation 5 for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    When user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 69                                 |
      | collateral.xlsx | ownership_details           | 70                                 |
      | collateral.xlsx | ownership_details           | 71                                 |
      | collateral.xlsx | ownership_details           | 72                                 |
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    Then collateral should saved successfully

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1410: user is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_property>" and row <Collateral_property_rowNum>
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of ready property
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of ready property
    And user enters all mandatory information on Ownership section from "<CollateralWB>" under "<Collateral_ownershipDetails>" row <Collateral_ownershipDetails_rowNum>
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_property>" and row <Collateral_property_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    Then user is able to validate addition of collateral for "<Validity>" data

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_property | Collateral_property_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Validity |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 196                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 197                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 198                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 199                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 200                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 201                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 202                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 203                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 204                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 205                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 206                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 207                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 208                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 209                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 210                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 211                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 228                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 229                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 230                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 233                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 234                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 235                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 236                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 237                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 238                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 239                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 240                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 241                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 242                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 245                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 246                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 247                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 248                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 249                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 250                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 251                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 252                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 253                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 254                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 255                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 256                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 257                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 258                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 259                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 260                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 261                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 262                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 276                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 277                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 278                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 279                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 280                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 281                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 282                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 283                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 285                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 286                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_property | Collateral_property_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Validity |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 196                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 197                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 198                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 199                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 200                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 201                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 202                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 203                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 204                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 205                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 206                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 207                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 208                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 209                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 210                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 211                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 228                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 229                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 230                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 233                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 234                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 235                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 236                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 237                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 238                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 239                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 240                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 241                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 242                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 245                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 246                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 247                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 248                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 249                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 250                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 251                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 252                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 253                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 254                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 255                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 256                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 257                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 258                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 259                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 260                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 261                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 262                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 276                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 277                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 278                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 279                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 280                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 281                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 282                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 283                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 285                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 286                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_property | Collateral_property_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Validity |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 196                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 197                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 198                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 199                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 200                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 201                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 202                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 203                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 204                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 205                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 206                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 207                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 208                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 209                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 210                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 211                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 228                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 229                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 230                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 233                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 234                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 235                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 236                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 237                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 238                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 239                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 240                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 241                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 242                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 245                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 246                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 247                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 248                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 249                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 250                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 251                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 252                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 253                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 254                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 255                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 256                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 257                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 258                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 259                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 260                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 261                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 262                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 276                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 277                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 278                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 279                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 280                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 281                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 282                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 283                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 285                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 286                              | ownership_details           | 6                                  | property_details    | 36                         | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |


  Scenario Outline: ACAUTOCAS-1411:  user is able to add a new collateral as <CollateralSubType> of <ProductType> application at <ApplicationStage> with new Global Collateral No
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_property>" and row <Collateral_property_rowNum>
    And user adds collateral all fields based on "<CollateralSubType>" subtype of collateral type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of ready property
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of ready property
    And user enters all mandatory information on Ownership section from "<CollateralWB>" under "<Collateral_ownershipDetails>" row <Collateral_ownershipDetails_rowNum>
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_property>" and row <Collateral_property_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    Then new collateral should be attached to the application with new Global Collateral Number on "<Validity>"

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_property | Collateral_property_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Validity |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 196                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 197                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 198                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 199                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 200                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 201                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 202                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 203                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 204                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 205                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 206                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 207                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 208                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 209                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 210                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 211                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 228                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 229                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 230                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 233                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 234                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 235                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 236                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 237                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 238                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 239                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 240                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 241                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 242                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 245                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 246                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 247                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 248                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 249                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 250                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 251                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 252                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 253                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 254                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 255                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 256                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 257                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 258                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 259                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 260                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 261                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 262                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 276                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 277                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 278                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 279                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 280                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 281                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 282                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 283                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 285                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 286                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_property | Collateral_property_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | Validity |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 196                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | Valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 197                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 198                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 199                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 200                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 201                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 202                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 203                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 204                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 205                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 206                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 207                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 208                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 209                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 210                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 211                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 228                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 229                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 230                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 233                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 234                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 235                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 236                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 237                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 238                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 239                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 240                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 241                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 242                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 245                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 246                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 247                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 248                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 249                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 250                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 251                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 252                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 253                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 254                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 255                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 256                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 257                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 258                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 259                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 260                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 261                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 262                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 276                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 277                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 278                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 279                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 280                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 281                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 282                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 283                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 285                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 286                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | invalid  |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_property | Collateral_property_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | Validity |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 196                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | Valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 197                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 198                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 199                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 200                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 201                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 202                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 203                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 204                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 205                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 206                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 207                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 208                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 209                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 210                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 211                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 228                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 229                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 230                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 233                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 234                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 235                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 236                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 237                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 238                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 239                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 240                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 241                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 242                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 245                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 246                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 247                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 248                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 249                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 250                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 251                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 252                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 253                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 254                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 255                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 256                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 257                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 258                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 259                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 260                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 261                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 262                            | address_details           | 54                               | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 276                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | valid    |
      | collateral.xlsx | other_details           | 1                              | address_details           | 277                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 278                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 279                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 280                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 281                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 282                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 283                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 285                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |
      | collateral.xlsx | other_details           | 1                              | address_details           | 286                              | ownership_details           | 6                                  | property_details    | 0                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | invalid  |


  #user dedupes for unique collateral number and finds duplicate collaterals to select one with old global coll no
  Scenario Outline: ACAUTOCAS-1412:  user checks for duplicate collateral and ignores them to create new for <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheetName_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_sheetName_rowNum2>
    When user selects collateral type along with collateral sub type
    And user fills mandatory fields for "<CollateralSubType>" collateral
    And checks for duplicate collateral
    And user views the duplicate Collaterals
    And user ignore the duplicate collaterals found
    And user saves the data
    Then user is asked to enter the reason of ignoring

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-piyush.agnihotri
    @Conventional
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheetName_rowNum | Collateral_sheetName_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 36                          | 199                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheetName_rowNum | Collateral_sheetName_rowNum2 | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 36                          | 199                          | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_sheetName | Collateral_sheetName_rowNum | Collateral_sheetName_rowNum2 | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details     | 36                          | 199                          | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-1413: Capture <CollateralSubType> against an application with create another after this one of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user selects create another after this one option
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then CollateralPage remains available to create another collateral

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-rishabh.sachan
    @Conventional
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 95                        | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 95                        | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


  @LoggedBug-ACAUTOCAS-5053
  Scenario Outline: ACAUTOCAS-3264: CollateralPage Property Address Taluka and Village Validation 1 under <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters address details of property collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user add new collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters address details of property collateral
    Then fields Taluka and Village should accept them as if they are defined in masters

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | property_address          | 157                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 37                                | property_address          | 158                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 38                                | property_address          | 159                              | other_details           | 1                              |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | property_address          | 157                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 37                                | property_address          | 158                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 38                                | property_address          | 159                              | other_details           | 1                              |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | property_address          | 157                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 37                                | property_address          | 158                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 38                                | property_address          | 159                              | other_details           | 1                              |


  Scenario Outline: ACAUTOCAS-3265: CollateralPage Property Address Taluka and Village Validation 2 under <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters address details of property collateral
    Then fields Taluka and Village should accept them as if they are not defined in masters

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | property_address          | 138                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 37                                | property_address          | 139                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 38                                | property_address          | 140                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 39                                | property_address          | 141                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 40                                | property_address          | 142                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 41                                | property_address          | 143                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 144                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 145                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 146                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 147                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 148                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 149                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 150                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 151                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 152                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 153                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 154                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 155                              | other_details           | 1                              |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | property_address          | 138                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 37                                | property_address          | 139                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 38                                | property_address          | 140                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 39                                | property_address          | 141                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 40                                | property_address          | 142                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 41                                | property_address          | 143                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 144                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 145                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 146                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 147                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 148                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 149                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 150                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 151                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 152                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 153                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 154                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 155                              | other_details           | 1                              |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 36                                | property_address          | 138                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 37                                | property_address          | 139                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 38                                | property_address          | 140                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 39                                | property_address          | 141                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 40                                | property_address          | 142                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 41                                | property_address          | 143                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 144                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 145                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 146                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 147                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 148                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 149                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 150                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 151                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 152                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 153                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 154                              | other_details           | 1                              |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx | property_details           | 42                                | property_address          | 155                              | other_details           | 1                              |


###Squash:137607
###Story:CAS-23473
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17101: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open collateral page of "<ApplicationStage>" stage
    When user fills mandatory fields of collateral details to attach collateral from the excel file "<SourceDataFile>":
      | SourceSheet      | SourceSheetRow | CollSubType    |
      | property_details | 36             | Ready Property |
      | property_details | 37             | Ready Property |
      | property_details | 38             | Ready Property |
      | property_details | 39             | Ready Property |
      | property_details | 40             | Ready Property |
      | property_details | 41             | Ready Property |
      | property_details | 42             | Ready Property |
      | property_details | 43             | Ready Property |
      | property_details | 44             | Ready Property |
      | property_details | 45             | Ready Property |
      | property_details | 46             | Ready Property |
    Then user check the all the added collateral to application

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | SourceDataFile  |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   | SourceDataFile  |
      | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> | collateral.xlsx |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   | SourceDataFile  |
      | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> | collateral.xlsx |


###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17102: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType>
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 36                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 37                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 38                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 39                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 40                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 41                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 42                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 43                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 44                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 45                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 46                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 47                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 36                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 37                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 38                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 39                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 40                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 41                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 42                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 43                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 44                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 45                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 46                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 47                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 36                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 37                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 38                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 39                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 40                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 41                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 42                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 43                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 44                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 45                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 46                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 47                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |


###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-225,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17103: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as <CollateralSubType> at Enquiry
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the recently added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully

    # ${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    # ${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal"]}
    #${ApplicantType:["indiv","nonIndiv"]}
    @ImplementedBy-priyanshu.kashyap
    @Conventional
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 36                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 37                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 38                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 39                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 40                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 41                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 42                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 43                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 44                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 45                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 46                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 47                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
    # ${Category:["shares","bonds","metals"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category   | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 36                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 37                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 38                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 39                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 40                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 41                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 42                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 43                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 44                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 45                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 46                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 47                                | <ProductType> | <ApplicationStage> |     | <Category> | <ApplicantType> | <CollateralSubType> |

    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    #${ApplicantType:["indiv"]}
    @ImplementedBy-rishabh.sachan
    @Islamic
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | Key | Category | ApplicantType   | CollateralSubType   |
      | collateral.xlsx | property_details           | 36                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 37                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 38                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 39                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 40                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 41                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 42                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 43                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 44                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 45                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 46                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |
      | collateral.xlsx | property_details           | 47                                | <ProductType> | <ApplicationStage> |     |          | <ApplicantType> | <CollateralSubType> |

