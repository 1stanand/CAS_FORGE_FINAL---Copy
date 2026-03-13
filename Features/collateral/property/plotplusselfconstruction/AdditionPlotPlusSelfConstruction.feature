@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

#${CollateralSubType:["Plot Plus Self Construction"]}
    #${ApplicantType:["indiv","nonindiv"]}
Feature: Addition of Plot Plus Self Construction

#  Pre-Requisites---
#  In this feature we will attach an Property Type Collateral-Plot Plus Self Construction to the loan application.
#  Ensure the Product Type Collateral Mapping is available in Collateral_Setup.xlsx using the query Collateral_Setup.sql
#  Ensure the Product Collateral Mapping is available in Prod_Collateral_Setup.xlsx using the query Prod_Collateral_Setup.sql

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0


  Scenario Outline: ACAUTOCAS-2531: user moves to the next stage without collateral in <CollateralSubType> of <ProductType> application at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user moves to the next stage
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Then user should get error message without adding collateral
    #PF(Secured),EDU(Secured)
  #${ProductType:["PF","EDU"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Perishable
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key     | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 615                       | <ProductType> | <ApplicationStage> | nocolla |          | <applicantType> | <CollateralSubType> |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Perishable
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key     | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 615                       | <ProductType> | <ApplicationStage> | nocolla | <category> | <applicantType> | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Perishable
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key     | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 615                       | <ProductType> | <ApplicationStage> | nocolla |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3238:  User enters mandatory information for <CollateralSubType> and saves without checking duplicates
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user saves the data of collateral subtype
    Then User should receive a proper failure message
                                       #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 540                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 540                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 540                       | <ProductType> | <ApplicationStage> |     |          | indiv         | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3239:  User misses entering one or more mandatory information for <CollateralSubType> and saves
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on dedupe check
    And user saves the data of collateral subtype
    Then user should receive a failure "<MandatoryField>" missing message
                                       #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | MandatoryField              | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Classification     | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 49                                |
      | State                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 51                                |
      | Pincode, Property Ownership | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 57                                |
      | State, Property Type        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 59                                |
      | Property Ownership          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 63                                |
      | Address Type, Pincode       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 64                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 67                                |
      | Property Ownership          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 68                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 72                                |
      | Pincode                     | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 73                                |
      | Property Purpose            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 79                                |
      | Address Line 2              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 83                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 85                                |
      | Property Owner              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 89                                |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | MandatoryField              | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Classification     | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 49                                |
      | State                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 51                                |
      | Pincode, Property Ownership | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 57                                |
      | State, Property Type        | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 59                                |
      | Property Ownership          | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 63                                |
      | Address Type, Pincode       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 64                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 67                                |
      | Property Ownership          | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 68                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 72                                |
      | Pincode                     | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 73                                |
      | Property Purpose            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 79                                |
      | Address Line 2              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 83                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 85                                |
      | Property Owner              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 89                                |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | MandatoryField              | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum |
      | Property Classification     | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 49                                |
      | State                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 51                                |
      | Pincode, Property Ownership | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 57                                |
      | State, Property Type        | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 59                                |
      | Property Ownership          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 63                                |
      | Address Type, Pincode       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 64                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 67                                |
      | Property Ownership          | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 68                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 72                                |
      | Pincode                     | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 73                                |
      | Property Purpose            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 79                                |
      | Address Line 2              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 83                                |
      | Property Type               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 85                                |
      | Property Owner              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | property_details           | 89                                |


  Scenario Outline: ACAUTOCAS-2532: user moves a new Property Type collateral to the loan application in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then application should allow only the collateral type which is linked to the product
                                   #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-2533: user adds a collateral with sub type as <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user selects collateral type
    Then user should be able to capture the collateral sub type
                               #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2534: CollateralPage Other Details is mandatory of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user opens other details section of collateral page
    When user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And saves collateral data
    Then "<SectionName>" should be mandatory entered in property collateral type
                         #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | SectionName   | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | address_details           | 0                                | Other Details | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | SectionName   | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | address_details           | 0                                | Other Details | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | SectionName   | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | address_details           | 0                                | Other Details | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2535: CollateralPages Property Address is mandatory of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user opens property address details section
    And user checks for duplicate collateral
    And user saves the data of collateral subtype
    Then "<SectionName>" should be mandatory entered in property collateral type
                   #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | SectionName      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | Property Address | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | SectionName      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | Property Address | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | SectionName      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | Property Address | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3240: CollateralPage Other Details Built Up area validation in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of ready property
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user gets a proper notification
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | Collateral_otherDetails | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails_rowNum | CollateralWB    | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | other_details           | default            | 163                       | 2                              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | other_details           | default            | 163                       | 3                              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral_otherDetails | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails_rowNum | CollateralWB    | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | other_details           | default            | 163                       | 2                              | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | other_details           | default            | 163                       | 3                              | collateral.xlsx | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral_otherDetails | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails_rowNum | CollateralWB    | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | other_details           | default            | 163                       | 2                              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | other_details           | default            | 163                       | 3                              | collateral.xlsx | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3241:  CollateralPage Property and Registration Details validation Part 1 of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user goes to Property and Registration Details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_agreementDetails>" and row <Collateral_agreementDetails_rowNum>
    When user enters all mandatory information of Registration details
    And user saves the agreement details
    Then user gets a proper notification
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | agreement_details           | 51                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

    @Sanity
    Examples:
      | CollateralWB     | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx  | agreement_details           | 48                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collaterals.xlsx | agreement_details           | 49                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx  | agreement_details           | 52                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx  | agreement_details           | 50                                 | 591                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | agreement_details           | 51                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
    @Sanity
    Examples:
      | CollateralWB     | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx  | agreement_details           | 48                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collaterals.xlsx | agreement_details           | 49                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx  | agreement_details           | 52                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx  | agreement_details           | 50                                 | 591                       | default            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |

  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | agreement_details           | 51                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

    @Sanity
    Examples:
      | CollateralWB     | Collateral_agreementDetails | Collateral_agreementDetails_rowNum | Collateral_default_rowNum | Collateral_default | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx  | agreement_details           | 48                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collaterals.xlsx | agreement_details           | 49                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx  | agreement_details           | 52                                 | 593                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx  | agreement_details           | 50                                 | 591                       | default            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3242: CollateralPage Property and Registration Details validation Part 2 with multiple data of AgreementType of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user adds property and registration details to collateral data from
      | collateral.xlsx | property_registration_details | 16 |
      | collateral.xlsx | property_registration_details | 17 |
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyRegistrationDetails>" and row <Collateral_propertyRegistrationDetails_rowNum>
    And user enters all mandatory information on Property and Registration Details section
    And user saves the agreement details
    Then user gets a proper notification
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 16                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 18                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 17                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |



     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Sanity
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 16                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 18                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 17                                            | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Sanity
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_propertyRegistrationDetails | Collateral_propertyRegistrationDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 16                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 18                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | property_registration_details          | 17                                            | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-4482:  User uses customer guarantor co-applicant address as property address in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user select "<category>" address details of collateral subtype
    Then user should get an option to use "<category>" address as property address
             #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category    | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | Primary     | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | CoApplicant | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | Guarantor   | <applicantType> | <CollateralSubType> |

  # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category    | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | Primary     | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | CoApplicant | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | Guarantor   | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category    | applicantType   | CollateralSubType   |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | Primary     | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | CoApplicant | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | default            | 163                       | other_details           | 0                              | address_details           | 0                                | <ProductType> | <ApplicationStage> |     | Guarantor   | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3244: User executes dedupe for <CollateralSubType> of <ProductType> application at <ApplicationStage> stage with <Dataset>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks for duplicate collateral
    Then user should get a message in collateral dedupe check
             #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Dataset |
      | collateral.xlsx | default            | 163                       | address_details           | 41                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 1       |
      | collateral.xlsx | default            | 163                       | address_details           | 42                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 2       |
      | collateral.xlsx | default            | 163                       | address_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 3       |
      | collateral.xlsx | default            | 163                       | address_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 4       |
      | collateral.xlsx | default            | 163                       | address_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 5       |
      | collateral.xlsx | default            | 163                       | address_details           | 46                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 6       |
      | collateral.xlsx | default            | 163                       | address_details           | 47                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 7       |



     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Dataset |
      | collateral.xlsx | default            | 163                       | address_details           | 41                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | 1       |
      | collateral.xlsx | default            | 163                       | address_details           | 42                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | 2       |
      | collateral.xlsx | default            | 163                       | address_details           | 43                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | 3       |
      | collateral.xlsx | default            | 163                       | address_details           | 44                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | 4       |
      | collateral.xlsx | default            | 163                       | address_details           | 45                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | 5       |
      | collateral.xlsx | default            | 163                       | address_details           | 46                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | 6       |
      | collateral.xlsx | default            | 163                       | address_details           | 47                               | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | 7       |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Dataset |
      | collateral.xlsx | default            | 163                       | address_details           | 41                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 1       |
      | collateral.xlsx | default            | 163                       | address_details           | 42                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 2       |
      | collateral.xlsx | default            | 163                       | address_details           | 43                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 3       |
      | collateral.xlsx | default            | 163                       | address_details           | 44                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 4       |
      | collateral.xlsx | default            | 163                       | address_details           | 45                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 5       |
      | collateral.xlsx | default            | 163                       | address_details           | 46                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 6       |
      | collateral.xlsx | default            | 163                       | address_details           | 47                               | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | 7       |


  Scenario Outline: ACAUTOCAS-3245:  user executes dedupe for <CollateralSubType> to find existing property
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of ready property
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user fill the property Address
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user fill the property Address
    And checks for duplicate collateral
    Then user should receive a message saying some duplicates found
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | default            | 163                       | collateral.xlsx | address_details            | 226                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 227                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 228                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 229                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 230                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 231                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | default            | 163                       | collateral.xlsx | address_details            | 226                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 227                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 228                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 229                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 230                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 231                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | default            | 163                       | collateral.xlsx | address_details            | 226                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 227                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 228                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 229                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 230                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 231                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3246:  user checks for duplicate collateral and views the duplicates of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of ready property
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user fill the property Address
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user fill the property Address
    And checks for duplicate collateral
    And user views the duplicate Collaterals
    Then user able to view the duplicates
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | default            | 163                       | collateral.xlsx | address_details            | 232                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 233                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 234                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 235                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 236                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 237                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |



     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | default            | 163                       | collateral.xlsx | address_details            | 232                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 233                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 234                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 235                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 236                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 237                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Collateral_default | Collateral_default_rowNum | CollateralWB    | Collateral_address_details | Collateral_address_details_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | default            | 163                       | collateral.xlsx | address_details            | 232                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 233                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 234                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 235                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 236                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | default            | 163                       | collateral.xlsx | address_details            | 237                               | other_details           | 4                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3247:  user attaches a duplicate <CollateralSubType> collateral attached to same application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user fills address details for property type
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user saves the existing global collateral number of collateral subtype
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user fills other details fields for property type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum2>
    And user fills address details for property type
    And checks for duplicate collateral
    And user click on view duplicates collateral
    Then user gets a proper notification on dedupe check
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    @Sanity
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_addressDetails_rowNum2 | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 261                              | 262                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 263                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 264                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 265                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 266                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 267                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_addressDetails_rowNum2 | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 261                              | 262                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 263                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 264                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 265                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 266                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 267                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_addressDetails_rowNum2 | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | address_details           | 261                              | 262                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 263                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 264                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 265                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 266                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | address_details           | 261                              | 267                               | other_details           | 1                              | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3248:  user attaches a duplicate Plot Plus Self Construction collateral attached to a different application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<SecondaryApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<SecondaryApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral to save CMS data
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
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
                #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 12                                | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 12                                | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 12                                | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 12                                | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 12                                | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 12                                | 6       | Post Approval             |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 12                                | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 12                                | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 12                                | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 12                                | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 12                                | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 12                                | 6       | Post Approval             |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | Dataset | SecondaryApplicationStage |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 54                               | other_details           | 0                              | property_details           | 12                                | 1       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 55                               | other_details           | 0                              | property_details           | 12                                | 2       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 56                               | other_details           | 0                              | property_details           | 12                                | 3       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 57                               | other_details           | 0                              | property_details           | 12                                | 4       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 58                               | other_details           | 0                              | property_details           | 12                                | 5       | Post Approval             |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | address_details           | 59                               | other_details           | 0                              | property_details           | 12                                | 6       | Post Approval             |


  Scenario Outline: ACAUTOCAS-3249:  user modifies property address after running dedupe for <CollateralSubType> and attempts to save
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user checks the duplicates on collateral dedupe check
    And user modifies "<FieldModified>" of address details of collateral subtype
    And user saves the collateral data
    Then user should get a proper message
         #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-aman.verma
    @LoggedBug
    Examples:
      | FieldModified  | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Plot Number    | collateral.xlsx | default            | 163                       | address_details           | 58                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Address Line 2 | collateral.xlsx | default            | 163                       | address_details           | 59                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Address Line 3 | collateral.xlsx | default            | 163                       | address_details           | 60                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Taluka         | collateral.xlsx | default            | 163                       | address_details           | 61                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Village        | collateral.xlsx | default            | 163                       | address_details           | 62                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | PinCode        | collateral.xlsx | default            | 163                       | address_details           | 63                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | FieldModified  | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | Plot Number    | collateral.xlsx | default            | 163                       | address_details           | 58                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | Address Line 2 | collateral.xlsx | default            | 163                       | address_details           | 59                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | Address Line 3 | collateral.xlsx | default            | 163                       | address_details           | 60                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | Taluka         | collateral.xlsx | default            | 163                       | address_details           | 61                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | Village        | collateral.xlsx | default            | 163                       | address_details           | 62                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | PinCode        | collateral.xlsx | default            | 163                       | address_details           | 63                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @LoggedBug
    Examples:
      | FieldModified  | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | Plot Number    | collateral.xlsx | default            | 163                       | address_details           | 58                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Address Line 2 | collateral.xlsx | default            | 163                       | address_details           | 59                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Address Line 3 | collateral.xlsx | default            | 163                       | address_details           | 60                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Taluka         | collateral.xlsx | default            | 163                       | address_details           | 61                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | Village        | collateral.xlsx | default            | 163                       | address_details           | 62                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | PinCode        | collateral.xlsx | default            | 163                       | address_details           | 63                               | other_details           | 0                              | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3250: User checks for duplicate collateral and ignores them to create new in <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user closes duplicate check result box after checking the duplicates
    And user saves the collateral data
    Then user gets a proper notification
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3251: CollateralPage Ownership Details validation using DataSet <Dataset> of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user enters all mandatory information on Ownership section from "<CollateralWB>" under "<Collateral_ownershipDetails>" row <Collateral_ownershipDetails_rowNum>
    And user enters all mandatory fields of Ownership section
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user should receive message
         #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | Dataset | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | 1       | collateral.xlsx | ownership_details           | 17                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 2       | collateral.xlsx | ownership_details           | 18                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 3       | collateral.xlsx | ownership_details           | 19                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 4       | collateral.xlsx | ownership_details           | 20                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 5       | collateral.xlsx | ownership_details           | 21                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 6       | collateral.xlsx | ownership_details           | 22                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 7       | collateral.xlsx | ownership_details           | 23                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 8       | collateral.xlsx | ownership_details           | 24                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Dataset | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | 1       | collateral.xlsx | ownership_details           | 17                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | 2       | collateral.xlsx | ownership_details           | 18                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | 3       | collateral.xlsx | ownership_details           | 19                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | 4       | collateral.xlsx | ownership_details           | 20                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | 5       | collateral.xlsx | ownership_details           | 21                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | 6       | collateral.xlsx | ownership_details           | 22                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | 7       | collateral.xlsx | ownership_details           | 23                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | 8       | collateral.xlsx | ownership_details           | 24                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | Dataset | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | 1       | collateral.xlsx | ownership_details           | 17                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 2       | collateral.xlsx | ownership_details           | 18                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 3       | collateral.xlsx | ownership_details           | 19                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 4       | collateral.xlsx | ownership_details           | 20                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 5       | collateral.xlsx | ownership_details           | 21                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 6       | collateral.xlsx | ownership_details           | 22                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 7       | collateral.xlsx | ownership_details           | 23                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | 8       | collateral.xlsx | ownership_details           | 24                                 | other_details           | 1                              | address_details           | 48                               | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-2536:  CollateralPage Ownership Details validation 2 of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 26                                 |
      | collateral.xlsx | ownership_details           | 27                                 |
    And user closes duplicate check result box after checking the duplicates
    And saves the data
    Then user should receive message
              #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-2537: CollateralPage Ownership Details validation 3 of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    When user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 9                                  |
      | collateral.xlsx | ownership_details           | 10                                 |
    And user closes duplicate check result box after checking the duplicates
    And saves the data
    Then user should receive message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-2538:  CollateralPage Ownership Details validation 4 of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    When user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 11                                 |
      | collateral.xlsx | ownership_details           | 12                                 |
    And user closes duplicate check result box after checking the duplicates
    And saves the data
    Then user should receive message
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-2539:  CollateralPage Ownership Details validation 5 with save of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    When user adds ownerships to the collateral with data from
      | CollateralWB    | Collateral_ownershipDetails | Collateral_ownershipDetails_rowNum |
      | collateral.xlsx | ownership_details           | 13                                 |
      | collateral.xlsx | ownership_details           | 14                                 |
      | collateral.xlsx | ownership_details           | 30                                 |
      | collateral.xlsx | ownership_details           | 31                                 |
    And user closes duplicate check result box after checking the duplicates
    And saves the data
    Then collateral should saved successfully
        #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 16                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 16                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 16                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  @ImplementedBy-ashutosh.kumar2
    @Release3
    @Sanity
  Scenario Outline:ACAUTOCAS-3252: User is able to add a new collateral as <CollateralSubType> to the application with every fields
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    Then User should receive a proper "<Result>" message
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Result  |
      | collateral.xlsx | other_details           | 4                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 5                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 6                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 7                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 8                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 9                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 10                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 11                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 12                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 13                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 14                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 15                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 16                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 17                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 18                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 19                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 20                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 21                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | Result  |
      | collateral.xlsx | other_details           | 4                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 5                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 6                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 7                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 8                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 9                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 10                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 11                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 12                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 13                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 14                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 15                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 16                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 17                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 18                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 19                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 20                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 21                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | Success |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | Result  |
      | collateral.xlsx | other_details           | 4                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 5                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 6                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 7                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 8                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 9                              | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 10                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 11                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 12                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 13                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 14                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 15                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 16                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 17                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 18                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 19                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 20                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |
      | collateral.xlsx | other_details           | 21                             | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | Success |


  Scenario Outline:ACAUTOCAS-3253: User is able to add a new collateral as <CollateralSubType> to the application with new Global Collateral No with <DataSet>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_otherDetails>" and row <Collateral_otherDetails_rowNum>
    And user enters mandatory fields of other details of collateral subtype
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_address_details>" and row <Collateral_address_details_rowNum>
    And user enters mandatory fields of address details of collateral subtype
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the collateral data
    Then user check the global collateral number
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | DataSet | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 4                              | 1       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 5                              | 2       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 6                              | 3       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 7                              | 4       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 8                              | 5       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 9                              | 6       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 10                             | 7       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 11                             | 8       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 12                             | 9       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 13                             | 10      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 14                             | 11      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 15                             | 12      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 16                             | 13      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 17                             | 14      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 18                             | 15      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 19                             | 16      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 20                             | 17      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 21                             | 18      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |

 # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | DataSet | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 4                              | 1       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 5                              | 2       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 6                              | 3       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 7                              | 4       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 8                              | 5       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 9                              | 6       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 10                             | 7       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 11                             | 8       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 12                             | 9       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 13                             | 10      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 14                             | 11      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 15                             | 12      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 16                             | 13      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 17                             | 14      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 18                             | 15      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 19                             | 16      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 20                             | 17      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 21                             | 18      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | DataSet | Collateral_address_details | Collateral_address_details_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 4                              | 1       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 5                              | 2       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 6                              | 3       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 7                              | 4       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 8                              | 5       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 9                              | 6       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 10                             | 7       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 11                             | 8       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 12                             | 9       | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 13                             | 10      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 14                             | 11      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 15                             | 12      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 16                             | 13      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 17                             | 14      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 18                             | 15      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 19                             | 16      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 20                             | 17      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |
      | collateral.xlsx | other_details           | 21                             | 18      | address_details            | 0                                 | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline:ACAUTOCAS-3254: Capture <CollateralSubType> against an application with create another after this one
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
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
          #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @Sanity
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 163                       | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_otherDetails | Collateral_otherDetails_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   |
      | collateral.xlsx | other_details           | 1                              | address_details           | 0                                | default            | 163                       | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> |


  Scenario Outline: ACAUTOCAS-3255:  CollateralPage Property Address Taluka and Village Validation 1 of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters all address details of collateral sub type
    Then fields Taluka and Village should accept them as if they are defined in masters
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 54                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 55                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 56                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 57                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 58                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 59                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 60                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 61                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 62                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 63                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 64                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 65                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 66                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 67                               |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 54                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 55                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 56                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 57                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 58                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 59                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 60                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 61                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 62                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 63                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 64                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 65                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 66                               |
      | <ProductType> | <ApplicationStage> |     | <category. | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 67                               |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 54                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 55                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 56                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 57                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 58                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 59                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 60                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 61                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 62                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 63                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 64                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 65                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 66                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 67                               |


  Scenario Outline: ACAUTOCAS-3256: CollateralPage Property Address Taluka and Village Validation 2 of <CollateralSubType>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    When user fills mandatory fields of home page of collateral details for given collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_addressDetails>" and row <Collateral_addressDetails_rowNum>
    And user enters all address details of collateral sub type
    Then fields Taluka and Village should accept them as if they are not defined in masters
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 68                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 69                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 70                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 71                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 72                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 73                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 74                               |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 68                               |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 69                               |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 70                               |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 71                               |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 72                               |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 73                               |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 74                               |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType   | CollateralWB    | Collateral_default | Collateral_default_rowNum | Collateral_addressDetails | Collateral_addressDetails_rowNum |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 68                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 69                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 70                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 71                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 72                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 73                               |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | <CollateralSubType> | collateral.xlsx | default            | 163                       | address_details           | 74                               |


# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:["Plot Plus Self Construction"]}
###Squash:137607
###Story:CAS-23473
###Bug:

#FeatureID-ACAUTOCAS-228,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17010: user adds multiple collateral to <ProductType> application at <ApplicationStage> stage with sub type as Plot Plus Self Construction
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    When user adds property type collateral of "<CollateralSubType>" subtype
      | collateral.xlsx | property_details | 24 |
      | collateral.xlsx | property_details | 25 |
      | collateral.xlsx | property_details | 26 |
      | collateral.xlsx | property_details | 27 |
      | collateral.xlsx | property_details | 28 |
      | collateral.xlsx | property_details | 29 |
      | collateral.xlsx | property_details | 30 |
      | collateral.xlsx | property_details | 31 |
      | collateral.xlsx | property_details | 32 |
      | collateral.xlsx | property_details | 33 |
      | collateral.xlsx | property_details | 34 |
    Then user check the all added collateral to application
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType      |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType      |
      | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    @Sanity
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType      |
      | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |



# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Plot Plus Self Construction"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-228,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17011: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Plot Plus Self Construction
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    When user adds collateral based on "<CollateralSubType>" subtype
    And user views the already added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @ImplementedBy-ashutosh.kumar2
    @Sanity
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType      |
      | collateral.xlsx | property_details           | 24                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 25                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 26                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 27                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 28                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 29                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 30                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 31                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 32                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 33                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 34                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 35                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |


     # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType      |
      | collateral.xlsx | property_details           | 24                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 25                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 26                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 27                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 28                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 29                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 30                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 31                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 32                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 33                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 34                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 35                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |



  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType      |
      | collateral.xlsx | property_details           | 24                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 25                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 26                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 27                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 28                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 29                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 30                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 31                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 32                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 33                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 34                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 35                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |



# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DDE","Credit Approval","Disbursal Initiation"]}
# ${CollType:[]}
# ${CollSubType:["Plot Plus Self Construction"]}
###Squash:137607
###Story:CAS-23473
###Bug:
#FeatureID-ACAUTOCAS-228,ACAUTOCAS-2
  Scenario Outline: ACAUTOCAS-17012: user views multiple collateral attached to <ProductType> application at <ApplicationStage> stage with sub type as Plot Plus Self Construction at Enquiry
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_propertyDetails>" and row <Collateral_propertyDetails_rowNum>
    And user adds collateral based on "<CollateralSubType>" subtype
    And user opens application from enquiry menu
    And user opens Collateral Page for viewing attached collaterals at "<ApplicationStage>"
    When user views the recently added collateral
    Then user should be able to reconcile the "<CollateralSubType>" data successfully
            #${ProductType:["PF","HL","MAL","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
    @Conventional
    @Sanity
    @ImplementedBy-ashutosh.kumar2
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType      |
      | collateral.xlsx | property_details           | 24                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 25                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 26                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 27                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 28                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 29                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 30                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 31                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 32                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 33                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 34                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 35                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |


       # ${ProductType:["IPF"]}
   # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
   # ${Category:["shares","bonds","metals"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category   | applicantType   | CollateralSubType      |
      | collateral.xlsx | property_details           | 24                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 25                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 26                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 27                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 28                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 29                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 30                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 31                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 32                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 33                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 34                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 35                                | <ProductType> | <ApplicationStage> |     | <category> | <applicantType> | Plot Plus Construction |


  # ${ProductType:["IAF","IHF"]}
   # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    @Islamic
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | CollateralWB    | Collateral_propertyDetails | Collateral_propertyDetails_rowNum | ProductType   | ApplicationStage   | key | category | applicantType   | CollateralSubType      |
      | collateral.xlsx | property_details           | 24                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 25                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 26                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 27                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 28                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 29                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 30                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 31                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 32                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 33                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 34                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |
      | collateral.xlsx | property_details           | 35                                | <ProductType> | <ApplicationStage> |     |          | <applicantType> | Plot Plus Construction |

