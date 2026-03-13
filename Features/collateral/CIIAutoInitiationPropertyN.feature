@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-
@ReviewedByDEV
@Reconciled
@Release
#${ApplicantType:["indiv","nonindiv"]}

Feature: Collateral Auto Initiation for Property type collateral when Auto Initiation flag is set to No

#  The DB parameter 'cas.autoInit.config' is set to N in configuration table
#  select * from configuration where PROPERTY_KEY = 'cas.autoInit.config';

#User Story references
#  CAS-122570 - Auto-Initiation : Collateral Investigation (CAS and CMS)
#  CAS-123921 - CLONE - Auto-Initiation : Collateral Investigation (CAS and CMS)
#  CAS-165882 - Logged By: JYOTI.GUPTA - The system (CAS) must auto-allocate the Verification/Valuation of Collateral based on the Rules that are set in the system

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-5128:  Collateral investigation initiation for Property <CollateralSubType> at Stage <Stage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_cersaiDetails>" and row <Collateral_cersaiDetails_rowNum>
    And user adds the property type collateral of "<CollateralSubType>" subtype
    And user records the application number at "<ApplicationStage>"
    When user opens collateral investigation initiation screen
    And user search the application with already attached collateral
    Then user should be able to see the attached collateral subtype "<CollateralSubType>"
    @ImplementedBy-rishabh.garg
    @Conventional
    #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
    Examples:
      | CollateralWB              | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | CollateralSubType                   | ApplicationStage     | ProductType   | key | category | applicantType   |
      | collateral.xlsx           | cersai_details           | 0                               | Builder Property Under Construction | DDE                  | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 0                               | Builder Property Under Construction | Recommendation       | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 0                               | Builder Property Under Construction | Credit Approval      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 0                               | Builder Property Under Construction | Reconsideration      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 0                               | Builder Property Under Construction | Post Approval        | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 0                               | Builder Property Under Construction | Disbursal Initiation | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 1                               | Construction On Land                | DDE                  | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 1                               | Construction On Land                | Recommendation       | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 1                               | Construction On Land                | Credit Approval      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 1                               | Construction On Land                | Reconsideration      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 1                               | Construction On Land                | Post Approval        | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 1                               | Construction On Land                | Disbursal Initiation | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 2                               | Plot + Self Construction            | DDE                  | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 2                               | Plot + Self Construction            | Recommendation       | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 2                               | Plot + Self Construction            | Credit Approval      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 2                               | Plot + Self Construction            | Reconsideration      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 2                               | Plot + Self Construction            | Post Approval        | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 2                               | Plot + Self Construction            | Disbursal Initiation | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 3                               | Ready Property                      | DDE                  | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 3                               | Ready Property                      | Recommendation       | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 3                               | Ready Property                      | Credit Approval      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 3                               | Ready Property                      | Reconsideration      | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 3                               | Ready Property                      | Post Approval        | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx           | cersai_details           | 3                               | Ready Property                      | Disbursal Initiation | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 9                               | Builder Property Under Construction | Disbursal Approval   | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 10                              | Builder Property Under Construction | Application Renewal  | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 11                              | Builder Property Under Construction | Tranch Initiation    | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 12                              | Builder Property Under Construction | Tranch Approval      | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 22                              | Construction On Land                | Disbursal Approval   | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 23                              | Construction On Land                | Application Renewal  | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 24                              | Construction On Land                | Tranch Initiation    | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 25                              | Construction On Land                | Tranch Approval      | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 35                              | Plot Plus Self Construction         | Disbursal Approval   | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 36                              | Plot Plus Self Construction         | Application Renewal  | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 37                              | Plot Plus Self Construction         | Tranch Initiation    | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 38                              | Plot Plus Self Construction         | Tranch Approval      | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 48                              | Ready Property                      | Disbursal Approval   | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 49                              | Ready Property                      | Application Renewal  | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 50                              | Ready Property                      | Tranch Initiation    | <ProductType> |     |          | <ApplicantType> |
      | CollInvestInitiation.xlsx | PropertyData             | 51                              | Ready Property                      | Tranch Approval      | <ProductType> |     |          | <ApplicantType> |

    @Islamic
     # ${ProductType:["IPF"]}
     # ${ApplicationStage:["DDE","Recommendation","Reconsideration","Credit Approval"]}
     # ${Category:["shares","bonds","metals"]}
    Examples:
      | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | CollateralSubType                   | ApplicationStage   | ProductType   | key | category   | applicantType   |
      | collateral.xlsx | cersai_details           | 266                             | Builder Property Under Construction | <ApplicationStage> | <ProductType> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | cersai_details           | 1                               | Construction On Land                | <ApplicationStage> | <ProductType> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | cersai_details           | 2                               | Plot + Self Construction            | <ApplicationStage> | <ProductType> |     | <Category> | <ApplicantType> |
      | collateral.xlsx | cersai_details           | 3                               | Ready Property                      | <ApplicationStage> | <ProductType> |     | <Category> | <ApplicantType> |

    @ImplementedBy-richa.singh
    @Islamic
    # ${ProductType:["IAF","IHF"]}
    # ${ApplicationStage:["DDE","Reconsideration","Credit Approval"]}
    Examples:
      | CollateralWB    | Collateral_cersaiDetails | Collateral_cersaiDetails_rowNum | CollateralSubType                   | ApplicationStage   | ProductType   | key | category | applicantType   |
      | collateral.xlsx | cersai_details           | 266                             | Builder Property Under Construction | <ApplicationStage> | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx | cersai_details           | 1                               | Construction On Land                | <ApplicationStage> | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx | cersai_details           | 2                               | Plot + Self Construction            | <ApplicationStage> | <ProductType> |     |          | <ApplicantType> |
      | collateral.xlsx | cersai_details           | 3                               | Ready Property                      | <ApplicationStage> | <ProductType> |     |          | <ApplicantType> |
