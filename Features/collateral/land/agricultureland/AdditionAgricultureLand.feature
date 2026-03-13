@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ReviewedByDEV
@ReviewedSecCollateral
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    #${CollateralSubType:["Agriculture Land"]}
Feature: Addition of Agriculture Land

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #${ProductType:["PF","EDU"]}
  #PF(Secured),EDU(Seccured)
  @Release2
  @Perishable
    @ImplementedBy-ayush.garg
    #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
Scenario Outline: ACAUTOCAS-16920:  user is not able to move to next stage without collateral
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user moves to the next stage
    Then user should get error message in collateral screen
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  #PF(Unsecured),EDU(Unsecured)
    @Perishable
    @NotImplemented
  Scenario Outline: ACAUTOCAS-2206: user moves to the next stage without collateral
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user moves to the next stage
    Then user should be able to move application to next stage
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @Sanity
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-3154:  user enters mandatory information for Agriculture Land and saves without checking duplicates
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home1>" and row <CollateralWB_home_rowNum1>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home2>" and row <CollateralWB_home_rowNum2>
    When user enters other details of land collateral
    And saves collateral data
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum3>
    Then user should receive a proper failure message
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_home1 | CollateralWB_home_rowNum1 | CollateralWB_home2 | CollateralWB_home_rowNum2 | CollateralWB_home_rowNum3 | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details    | 3                         | other_details      | 0                         | 1                         | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @Sanity
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-3155:  user misses entering one or more mandatory information of <field> for Agriculture Land and saves of <ProductType> at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    When User misses "<field>" entering one or more mandatory information
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    And user clicks on check for duplicate collateral with ok button
    And user clicks on save collateral
    Then user should get notification error message
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | field                              | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | Survey Number                      | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Landowner Name                     | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Date of last land holding document | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Vintage of Lease                   | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Holding Status                     | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Encumbrance                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Mortgage                           | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Document Types                     | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | Relation Type                      | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2207:  user moves a new Land Type collateral to the loan application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When User attempts to attach a new "<Land>" Type Collateral to the application
    Then User should be able to attach it only if it is linked to the Product against which the application is entered
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2208:  user adds a collateral with sub type as Agriculture Land
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    When user selects collateral type along with collateral sub type
    Then application should allow only the sub type which is linked to the product
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @Sanity
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-2209:  CollateralPage other details is mandatory
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    When user enters all mandatory information of collateral
    And user checks for dedupe and saves the collateral data
    Then Other Details should be mandatorily entered
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @Sanity
    @ImplementedBy-ayush.garg
     #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
Scenario Outline: ACAUTOCAS-16921: CollateralPage Land Address is mandatory
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user checks for dedupe and saves the collateral data
    Then Address Details should be mandatorily entered
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-3156:  user checks for duplicate collateral to get "<Message>"
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    When user selects collateral type along with collateral sub type
    And user enters "<FieldName>" in land collateral
    And checks for duplicate collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    Then user should receive a proper message for "<FieldName>"
    Examples:
      | FieldName                         | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | Survey Number                     | collateral.xlsx | default           | 6                        | address_details              | 11                                  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Village                           | collateral.xlsx | default           | 6                        | address_details              | 12                                  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | neither Survey Number nor Village | collateral.xlsx | default           | 6                        | address_details              | 17                                  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Survey Number and Village         | collateral.xlsx | default           | 6                        | address_details              | 14                                  | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @Release2
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-3157:  user checks for duplicate collateral again
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    And user has already performed dedupe check
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_two>
    When user changes SurveyNumber along with Village
    And user checks for duplicate collateral
    Then user should receive a proper failure message
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | CollateralWB_address_details_two | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | 19                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | 20                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | 21                               | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @Release2
    @Sanity
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-4440:  user checks for duplicate collateral on Survey Number  Village and saves data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    When user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then user is able to save the data successfully
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-4441:  user checks for duplicate collateral on Survey Number Village and finds them
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all the mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters the address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    When checks for duplicate collateral
    Then user should receive a message saying RowCount duplicates found
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @ImplementedBy-ayush.garg
    #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
Scenario Outline: ACAUTOCAS-16922:user checks for duplicate collateral on Survey Number Village and finds them and view duplicate
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all the mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters the address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    When checks for duplicate collateral
    And user gets a message saying some duplicates found
    Then User should be able to view the duplicates
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @Release2
    @ImplementedBy-ayush.garg
    #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
Scenario Outline: ACAUTOCAS-16923:  user checks for duplicate collateral on Survey Number Village and finds them with save
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all the mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters the address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    When user views the duplicate Collaterals
    Then user should be able to select one Collateral and save it
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

#user need to save the global collateral number and then verify after saving it
  @NotImplemented
     #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
Scenario Outline: ACAUTOCAS-16924: User checks for duplicate collateral on Survey Number Village and finds them with existing globalcollateralno
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all the mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters the address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    When user selects collateral not attached to the same application
    And user saves the collateral data
    Then user is able to save data successfully with existing GlobalCollateralNo
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
#user dedupes for unique collateral number and finds duplicate collaterals to select one with old global coll no and in the same application
  #FeatureID-ACAUTOCAS-239,ACAUTOCAS-244
Scenario Outline: ACAUTOCAS-16925: user checks for duplicate collateral on Survey Number Village and finds them collateral already attached
    Given user adding a Land Type Collateral
    And Collateral Sub Type as "<Agriculture Land>"
    When user enters all mandatory information from "<LandAgricultureLandDataFile>" under "<LandAgricultureLandDataSheet>" row <LandAgricultureLandRowNumber>
    And enters non unique "Survey Number"
    And enters non unique "Village"
    And checks for duplicate collateral
    And user gets a message saying <RowCount> duplicates found
    And user selects collateral already attached to the same application
    And saves the data
    Then user should be able to get message as "<This collateral is already attached to the application>"
    Examples:
      | LandAgricultureLandDataFile | LandAgricultureLandDataSheet | LandAgricultureLandRowNumber |
      | LandAgricultureLand.xlsx    | LandAgricultureLand          | 0                            |

  @Release2
    @Sanity
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-3159:  user checks for duplicate collateral and ignores them to create new
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all the mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters the address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    And checks for duplicate collateral
    And user gets a message saying some duplicates found
    And user ignores the duplicate collaterals found
    When saves the data for collateral
    Then user is asked to enter the reason of ignoring
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
    #data needs to be created using data generation tool
  Scenario Outline: ACAUTOCAS-3160:  user is able to add a new collateral as Agriculture Land to the "<PersonalLoan>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    When user selects collateral type along with collateral sub type
    Then user should be able to enter values
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
    #data needs to be created using data generation tool
  Scenario Outline: ACAUTOCAS-3161:  user is able to add a new collateral as Agriculture Land to the "<PersonalLoan>" application with new Global Collateral No
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    When user enters other details of land collateral
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then new collateral should be attached to the application with new "<Global Collateral Number>"
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @Release2
    @ImplementedBy-ayush.garg
    @Sanity
  Scenario Outline: ACAUTOCAS-3162:  Capture Agriculture Land against an application with create another after this one
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters all mandatory information of collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    And user enters address details of land collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_other_details>" and row <CollateralWB_other_details_rowNum>
    And user enters other details of land collateral
    When user selects create another after this one option
    And user checks the duplicates on collateral dedupe check
    And user clicks on saves the collateral data
    And user gets saved successfully message
    Then CollateralPage remains available to create another collateral
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | CollateralWB_other_details | CollateralWB_other_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 3                                   | other_details              | 0                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

    #pre-requisite master data not maintained please check the orignal file
  @NotImplemented
  Scenario Outline: ACAUTOCAS-3163:  CollateralPage Agriculture Land Address Taluka and Village Validation 1
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    When user enters State ,District ,Taluka and Village
    Then the fields Taluka and Village should accept them as if they are defined in masters
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 136                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 137                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 138                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 139                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 140                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 141                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 142                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 143                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 144                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 145                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 146                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

#pre-requisite master data not maintained please check the orignal file
  @NotImplemented
  Scenario Outline: ACAUTOCAS-3164:  CollateralPage Agriculture Land Address Taluka and Village Validation 2
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user adds new collateral to the application
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_home>" and row <CollateralWB_home_rowNum>
    And user selects collateral type along with collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<CollateralWB_address_details>" and row <CollateralWB_address_details_rowNum>
    When user enters State ,District ,Taluka and Village
    Then the fields Taluka and Village should accept them as if they are not defined in masters
    Examples:
      | CollateralWB    | CollateralWB_home | CollateralWB_home_rowNum | CollateralWB_address_details | CollateralWB_address_details_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default           | 6                        | address_details              | 161                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 162                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 163                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 164                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | default           | 6                        | address_details              | 174                                 | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:["Agriculture Land"]}
###Squash:137607
###Story:CAS-23473
###Bug:
    @Sanity
#FeatureID-ACAUTOCAS-239,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16926: user adds multiple collateral to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Agriculture Land"
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application menu
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" row "SourceSheetRow":
      | SourceSheetRow |
      | 3              |
      | 4              |
      | 5              |
      | 6              |
      | 7              |
      | 8              |
      | 9              |
      | 10             |
      | 11             |
      | 12             |
      | 13             |
      | 14             |
    And user fills mandatory fields of Agriculture Land to attach multiple collaterals
    When user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile  | SourceSheet |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     |

  @NotImplemented
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Agriculture Land"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-239,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16927: user views multiple collateral attached to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Agriculture Land"
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from application menu
    And user has added collaterals data to "<ProductType>" application from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" row "SourceSheetRow":
      | SourceSheetRow |
      | 3              |
      | 4              |
      | 5              |
      | 6              |
      | 7              |
      | 8              |
      | 9              |
      | 10             |
      | 11             |
      | 12             |
      | 13             |
      | 14             |
    And user opens Collateral Page for viewing attached collaterals
    When user views the collateral at <SourceSheetRow>
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile  | SourceSheet | SourceSheetRow |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 3              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 4              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 5              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 6              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 7              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 8              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 9              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 10             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 11             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 12             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 13             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 14             |

  @NotImplemented
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Agriculture Land"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-239,ACAUTOCAS-2
Scenario Outline: ACAUTOCAS-16928: user views multiple collateral attached to "<ProductType>" application at "<ApplicationStage>" stage with sub type as "Agriculture Land" at Enquiry
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry menu
    And user has added collaterals data to "<ProductType>" application from the excel file "<SourceDataFile>" under sheet "<SourceSheet>" row "SourceSheetRow":
      | SourceSheetRow |
      | 3              |
      | 4              |
      | 5              |
      | 6              |
      | 7              |
      | 8              |
      | 9              |
      | 10             |
      | 11             |
      | 12             |
      | 13             |
      | 14             |
    And user opens Collateral Page for viewing attached collaterals
    When user views the collateral at <SourceSheetRow>
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile  | SourceSheet | SourceSheetRow |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 3              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 4              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 5              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 6              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 7              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 8              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 9              |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 10             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 11             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 12             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 13             |
      | <ProductType> | <ApplicationStage> | collateral.xlsx | default     | 14             |
