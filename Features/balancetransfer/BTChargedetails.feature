@Epic-Balance_Transfer
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
#@Release2
@NotImplemented
#@BT

Feature: BTChargedetails
  
  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
    And Charges should be maintained in Charge Definition Master with computation details maintained

 #FeatureID-ACAUTOCAS-14,ACAUTOCAS-359
  Scenario Outline:ACAUTOCAS-868: Charge Policy execution attached with Product for BT Application on Transaction at  "<Var_Stage>" Stage at row number "<BTRowNum2>"
    And BT Loan application is at "<Var_Stage>" stage for charge population with application type from excel "<BTChargedetails>" under sheet "<stage_bttype_Prod_Scheme>" at row number "<BTRowNum2>"
    And charge policy already attached with product taken from excel "<BTChargedetails>" under sheet "<stage_bttype_Prod_Scheme>" at row number "<BTRowNum2>"
    When user clicks on apply charges in charges section at "<Var_Stage>" Stage to execute attached charge policy
    Then user should see all charges list mapped with charge policy on charges screen at "<Var_Stage>" Stage
    
    Examples:
      
      | BTChargedetails      | stage_bttype_Prod_Scheme | BTRowNum2 | Var_Stage                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 0         | DDE                       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 1         | Credit Approval           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 2         | Post Approval             |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 3         | Recommendation            |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 4         | Reconsideration           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 5         | Disbursal                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 6         | App Update Recommendation |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 7         | App Update Approval       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 8         | Tranche Initiation        |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 9         | Tranche Approval          |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 20        | DDE                       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 21        | Credit Approval           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 22        | Post Approval             |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 23        | Recommendation            |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 24        | Reconsideration           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 25        | Disbursal                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 26        | App Update Recommendation |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 27        | App Update Approval       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 28        | Tranche Initiation        |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 29        | Tranche Approval          |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 40        | DDE                       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 41        | Credit Approval           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 42        | Post Approval             |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 43        | Recommendation            |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 44        | Reconsideration           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 45        | Disbursal                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 46        | App Update Recommendation |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 47        | App Update Approval       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 48        | Tranche Initiation        |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 49        | Tranche Approval          |

       #FeatureID-ACAUTOCAS-14,ACAUTOCAS-359
  Scenario Outline:ACAUTOCAS-2593:Charge Policy execution attached with Scheme for BT Application on Transaction at  "<Var_Stage>" Stage at row number "<BTRowNum2>"
    And BT Loan application is at "<Var_Stage>" stage for application type from excel "<BTChargedetails>" under sheet "<stage_bttype_Prod_Scheme>" at row number "<BTRowNum2>"
    #from excel "<BTChargedetails>" under sheet "<btchargedetails>" row "<BTRowNum>"
    And charge policy already attached with scheme taken from excel "<BTChargedetails>" under sheet "<stage_bttype_Prod_Scheme>" at row number "<BTRowNum2>"
    When user clicks on apply charges in charges section at "<Var_Stage>" Stage to execute attached charge policy
    Then user should see all charges list mapped with charge policy on charges screen at "<Var_Stage>" Stage
    
    Examples:
      
      | BTChargedetails      | stage_bttype_Prod_Scheme | BTRowNum2 | Var_Stage                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 10        | DDE                       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 11        | Credit Approval           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 12        | Post Approval             |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 13        | Recommendation            |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 14        | Reconsideration           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 15        | Disbursal                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 16        | App Update Recommendation |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 17        | App Update Approval       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 18        | Tranche Initiation        |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 19        | Tranche Approval          |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 30        | DDE                       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 31        | Credit Approval           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 32        | Post Approval             |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 33        | Recommendation            |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 34        | Reconsideration           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 35        | Disbursal                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 36        | App Update Recommendation |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 37        | App Update Approval       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 38        | Tranche Initiation        |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 39        | Tranche Approval          |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 50        | DDE                       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 51        | Credit Approval           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 52        | Post Approval             |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 53        | Recommendation            |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 54        | Reconsideration           |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 55        | Disbursal                 |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 56        | App Update Recommendation |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 57        | App Update Approval       |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 58        | Tranche Initiation        |
      | BTChargedetails.xlsx | stage_bttype_Prod_Scheme | 59        | Tranche Approval          |

     #FeatureID-ACAUTOCAS-14,ACAUTOCAS-359
  Scenario Outline:ACAUTOCAS-2594: Charges not editable at "<Var_Stage>" stage
    And BT Loan applications is at "<Var_Stage>" stage
    When user navigates to charges section
    And user clicks on charge hyperlink in the charges grid section
    And user verifies application charges details
    Then user should not be able to modify application charges details on charges screen
    
    Examples:
      
      | Var_Stage           |
      | Tranche Approval    |
      | App Update Approval |

 #FeatureID-ACAUTOCAS-14,ACAUTOCAS-359
  Scenario Outline:ACAUTOCAS-2595:Manual Charge Addition on Charges details screen at "<Var_Stage>" Stage
    And BT Loan application is at "<Var_Stage>" Stage with charge policy already executed
    When user clicks on + icon to add manual charges on Charges details screen at "<Var_Stage>"  Stage
    Then user should be able to add manual charges from charges list
    
    Examples:
      
      | Var_Stage                 |
      | DDE                       |
      | Credit Approval           |
      | Post Approval             |
      | Recommendation            |
      | Reconsideration           |
      | Tranche Initiation        |
      | App Update recommendation |
      | Disbursal                 |


 #FeatureID-ACAUTOCAS-14,ACAUTOCAS-359
  Scenario Outline: ACAUTOCAS-3774: Editing Charges Details on Charges Screen at stage "<Var_Stage>" at row number "<BTRowNum2>" for "<FieldName>"
    And BT Loan application is at "<Var_Stage>" stage for application type from excel "<BTChargedetails>" under sheet "<applicationcharges>" at row number "<BTRowNum2>"
    And user has already executed the charge policy on charges section for this application
    When user opens the details of effective charge amount on charges grid from hyperlink
    And user modifies the fields on application charge details taking data from excel "<BTChargedetails>" under sheet "<applicationcharges>" at row number "<BTRowNum2>" for "<FieldName>"
    And user saves the record
    Then user should be able to save "<Success_Status>" with proper message
#    Then user should be able to get message from excel "<BTChargedetails>" under sheet "<applicationcharges>" at row number "<BTRowNum2>" in field "<chargefields>"
    
    Examples:
      | BTChargedetails      | applicationcharges | BTRowNum2 | Var_Stage                 | Success_Status | FieldName        |
      | BTChargedetails.xlsx | applicationcharges | 0         | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1         | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 2         | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 3         | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 4         | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 5         | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 6         | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 7         | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 8         | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 9         | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 10        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 11        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 12        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 13        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 14        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 15        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 16        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 17        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 18        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 19        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 20        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 21        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 22        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 23        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 24        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 25        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 26        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 27        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 28        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 29        | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 30        | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 31        | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 32        | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 33        | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 34        | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 35        | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 36        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 37        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 38        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 39        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 40        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 41        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 42        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 43        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 44        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 45        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 46        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 47        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 48        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 49        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 50        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 51        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 52        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 53        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 54        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 55        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 56        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 57        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 58        | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 59        | DDE                       | Successfully   | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 60        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 61        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 62        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 63        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 64        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 65        | Credit Approval           | Successfully   | All fields       |
      
      | BTChargedetails.xlsx | applicationcharges | 66        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 67        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 68        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 69        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 70        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 71        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 72        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 73        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 74        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 75        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 76        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 77        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 78        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 79        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 80        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 81        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 82        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 83        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 84        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 85        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 86        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 87        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 88        | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 89        | Credit Approval           | Unsuccessfully | charge rate      |
      
      | BTChargedetails.xlsx | applicationcharges | 90        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 91        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 92        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 93        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 94        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 95        | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 96        | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 97        | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 98        | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 99        | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 100       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 101       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 102       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 103       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 104       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 105       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 106       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 107       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 108       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 109       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 110       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 111       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 112       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 113       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 114       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 115       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 116       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 117       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 118       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 119       | Credit Approval           | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 120       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 121       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 122       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 123       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 124       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 125       | Post Approval             | Successfully   | All fields       |
      
      | BTChargedetails.xlsx | applicationcharges | 126       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 127       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 128       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 129       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 130       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 131       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 132       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 133       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 134       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 135       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 136       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 137       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 138       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 139       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 140       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 141       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 142       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 143       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 144       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 145       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 146       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 147       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 148       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 149       | Post Approval             | Unsuccessfully | charge rate      |
      
      | BTChargedetails.xlsx | applicationcharges | 150       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 151       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 152       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 153       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 154       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 155       | Post Approval             | Successfully   | All fields       |
      
      | BTChargedetails.xlsx | applicationcharges | 156       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 157       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 158       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 159       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 160       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 161       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 162       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 163       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 164       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 165       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 166       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 167       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 168       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 169       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 170       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 171       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 172       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 173       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 174       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 175       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 176       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 177       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 178       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 179       | Post Approval             | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 180       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 181       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 182       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 183       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 184       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 185       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 186       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 187       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 188       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 189       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 190       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 191       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 192       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 193       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 194       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 195       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 196       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 197       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 198       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 199       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 200       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 201       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 202       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 203       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 204       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 205       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 206       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 207       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 208       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 209       | Recommendation            | Unsuccessfully | charge rate      |
      
      | BTChargedetails.xlsx | applicationcharges | 210       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 211       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 212       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 213       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 214       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 215       | Recommendation            | Successfully   | All fields       |
      
      | BTChargedetails.xlsx | applicationcharges | 216       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 217       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 218       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 219       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 220       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 221       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 222       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 223       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 224       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 225       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 226       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 227       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 228       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 229       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 230       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 231       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 232       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 233       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 234       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 235       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 236       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 237       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 238       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 239       | Recommendation            | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 240       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 241       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 242       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 243       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 244       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 245       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 246       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 247       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 248       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 249       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 250       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 251       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 252       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 253       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 254       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 255       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 256       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 257       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 258       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 259       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 260       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 261       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 262       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 263       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 264       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 265       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 266       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 267       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 268       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 269       | Reconsideration           | Unsuccessfully | charge rate      |
      
      | BTChargedetails.xlsx | applicationcharges | 270       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 271       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 272       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 273       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 274       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 275       | Reconsideration           | Successfully   | All fields       |
      
      | BTChargedetails.xlsx | applicationcharges | 276       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 277       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 278       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 279       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 280       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 281       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 282       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 283       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 284       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 285       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 286       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 287       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 288       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 289       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 290       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 291       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 292       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 293       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 294       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 295       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 296       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 297       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 298       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 299       | Reconsideration           | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 300       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 301       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 302       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 303       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 304       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 305       | Disbursal                 | Successfully   | All fields       |
      
      | BTChargedetails.xlsx | applicationcharges | 306       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 307       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 308       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 309       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 310       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 311       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 312       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 313       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 314       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 315       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 316       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 317       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 318       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 319       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 320       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 321       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 322       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 323       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 324       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 325       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 326       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 327       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 328       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 329       | Disbursal                 | Unsuccessfully | charge rate      |
      
      | BTChargedetails.xlsx | applicationcharges | 330       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 331       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 332       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 333       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 334       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 335       | Disbursal                 | Successfully   | All fields       |
      
      | BTChargedetails.xlsx | applicationcharges | 336       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 337       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 338       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 339       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 340       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 341       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 342       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 343       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 344       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 345       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 346       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 347       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 348       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 349       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 350       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 351       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 352       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 353       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 354       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 355       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 356       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 357       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 358       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 359       | Disbursal                 | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 360       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 361       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 362       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 363       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 364       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 365       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 366       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 367       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 368       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 369       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 370       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 371       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 372       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 373       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 374       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 375       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 376       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 377       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 378       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 379       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 380       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 381       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 382       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 383       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 384       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 385       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 386       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 387       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 388       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 389       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 390       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 391       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 392       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 393       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 394       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 395       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 396       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 397       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 398       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 399       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 400       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 401       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 402       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 403       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 404       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 405       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 406       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 407       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 408       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 409       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 410       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 411       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 412       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 413       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 414       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 415       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 416       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 417       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 418       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 419       | App Update Recommendation | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 420       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 421       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 422       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 423       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 424       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 425       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 426       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 427       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 428       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 429       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 430       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 431       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 432       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 433       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 434       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 435       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 436       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 437       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 438       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 439       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 440       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 441       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 442       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 443       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 444       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 445       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 446       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 447       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 448       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 449       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 450       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 451       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 452       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 453       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 454       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 455       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 456       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 457       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 458       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 459       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 460       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 461       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 462       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 463       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 464       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 465       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 466       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 467       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 468       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 469       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 470       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 471       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 472       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 473       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 474       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 475       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 476       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 477       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 478       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 479       | Tranche Initiation        | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 480       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 481       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 482       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 483       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 484       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 485       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 486       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 487       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 488       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 489       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 490       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 491       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 492       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 493       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 494       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 495       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 496       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 497       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 498       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 499       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 500       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 501       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 502       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 503       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 504       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 505       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 506       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 507       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 508       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 509       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 510       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 511       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 512       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 513       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 514       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 515       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 516       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 517       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 518       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 519       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 520       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 521       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 522       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 523       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 524       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 525       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 526       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 527       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 528       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 529       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 530       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 531       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 532       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 533       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 534       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 535       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 536       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 537       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 538       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 539       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 540       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 541       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 542       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 543       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 544       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 545       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 546       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 547       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 548       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 549       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 550       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 551       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 552       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 553       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 554       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 555       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 556       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 557       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 558       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 559       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 560       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 561       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 562       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 563       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 564       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 565       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 566       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 567       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 568       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 569       | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 570       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 571       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 572       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 573       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 574       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 575       | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 576       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 577       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 578       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 579       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 580       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 581       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 582       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 583       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 584       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 585       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 586       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 587       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 588       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 589       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 590       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 591       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 592       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 593       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 594       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 595       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 596       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 597       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 598       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 599       | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 600       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 601       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 602       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 603       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 604       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 605       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 606       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 607       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 608       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 609       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 610       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 611       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 612       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 613       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 614       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 615       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 616       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 617       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 618       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 619       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 620       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 621       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 622       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 623       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 624       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 625       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 626       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 627       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 628       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 629       | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 630       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 631       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 632       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 633       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 634       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 635       | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 636       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 637       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 638       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 639       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 640       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 641       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 642       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 643       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 644       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 645       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 646       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 647       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 648       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 649       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 650       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 651       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 652       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 653       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 654       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 655       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 656       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 657       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 658       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 659       | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 660       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 661       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 662       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 663       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 664       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 665       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 666       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 667       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 668       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 669       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 670       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 671       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 672       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 673       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 674       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 675       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 676       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 677       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 678       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 679       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 680       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 681       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 682       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 683       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 684       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 685       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 686       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 687       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 688       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 689       | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 690       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 691       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 692       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 693       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 694       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 695       | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 696       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 697       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 698       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 699       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 700       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 701       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 702       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 703       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 704       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 705       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 706       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 707       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 708       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 709       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 710       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 711       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 712       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 713       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 714       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 715       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 716       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 717       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 718       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 719       | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 720       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 721       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 722       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 723       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 724       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 725       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 726       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 727       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 728       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 729       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 730       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 731       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 732       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 733       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 734       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 735       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 736       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 737       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 738       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 739       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 740       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 741       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 742       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 743       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 744       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 745       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 746       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 747       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 748       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 749       | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 750       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 751       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 752       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 753       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 754       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 755       | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 756       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 757       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 758       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 759       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 760       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 761       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 762       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 763       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 764       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 765       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 766       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 767       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 768       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 769       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 770       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 771       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 772       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 773       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 774       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 775       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 776       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 777       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 778       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 779       | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 780       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 781       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 782       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 783       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 784       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 785       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 786       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 787       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 788       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 789       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 790       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 791       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 792       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 793       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 794       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 795       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 796       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 797       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 798       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 799       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 800       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 801       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 802       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 803       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 804       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 805       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 806       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 807       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 808       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 809       | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 810       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 811       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 812       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 813       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 814       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 815       | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 816       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 817       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 818       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 819       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 820       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 821       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 822       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 823       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 824       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 825       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 826       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 827       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 828       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 829       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 830       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 831       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 832       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 833       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 834       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 835       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 836       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 837       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 838       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 839       | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 840       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 841       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 842       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 843       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 844       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 845       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 846       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 847       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 848       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 849       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 850       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 851       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 852       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 853       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 854       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 855       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 856       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 857       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 858       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 859       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 860       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 861       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 862       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 863       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 864       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 865       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 866       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 867       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 868       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 869       | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 870       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 871       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 872       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 873       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 874       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 875       | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 876       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 877       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 878       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 879       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 880       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 881       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 882       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 883       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 884       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 885       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 886       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 887       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 888       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 889       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 890       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 891       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 892       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 893       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 894       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 895       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 896       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 897       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 898       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 899       | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 900       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 901       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 902       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 903       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 904       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 905       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 906       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 907       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 908       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 909       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 910       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 911       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 912       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 913       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 914       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 915       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 916       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 917       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 918       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 919       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 920       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 921       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 922       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 923       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 924       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 925       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 926       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 927       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 928       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 929       | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 930       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 931       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 932       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 933       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 934       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 935       | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 936       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 937       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 938       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 939       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 940       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 941       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 942       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 943       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 944       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 945       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 946       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 947       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 948       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 949       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 950       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 951       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 952       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 953       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 954       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 955       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 956       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 957       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 958       | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 959       | Tranche Initiation        | Unsuccessfully | effective amount |
      
      | BTChargedetails.xlsx | applicationcharges | 960       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 961       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 962       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 963       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 964       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 965       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 966       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 967       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 968       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 969       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 970       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 971       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 972       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 973       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 974       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 975       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 976       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 977       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 978       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 979       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 980       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 981       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 982       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 983       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 984       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 985       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 986       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 987       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 988       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 989       | DDE                       | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 990       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 991       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 992       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 993       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 994       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 995       | DDE                       | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 996       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 997       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 998       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 999       | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1000      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1001      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1002      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1003      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1004      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1005      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1006      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1007      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1008      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1009      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1010      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1011      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1012      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1013      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1014      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1015      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1016      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1017      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1018      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1019      | DDE                       | Successfully   | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1020      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1021      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1022      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1023      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1024      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1025      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1026      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1027      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1028      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1029      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1030      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1031      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1032      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1033      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1034      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1035      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1036      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1037      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1038      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1039      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1040      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1041      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1042      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1043      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1044      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1045      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1046      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1047      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1048      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1049      | Credit Approval           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1050      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1051      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1052      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1053      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1054      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1055      | Credit Approval           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1056      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1057      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1058      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1059      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1060      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1061      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1062      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1063      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1064      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1065      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1066      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1067      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1068      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1069      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1070      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1071      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1072      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1073      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1074      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1075      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1076      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1077      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1078      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1079      | Credit Approval           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1080      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1081      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1082      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1083      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1084      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1085      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1086      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1087      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1088      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1089      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1090      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1091      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1092      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1093      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1094      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1095      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1096      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1097      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1098      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1099      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1100      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1101      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1102      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1103      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1104      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1105      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1106      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1107      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1108      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1109      | Post Approval             | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1110      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1111      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1112      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1113      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1114      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1115      | Post Approval             | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1116      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1117      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1118      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1119      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1120      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1121      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1122      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1123      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1124      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1125      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1126      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1127      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1128      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1129      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1130      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1131      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1132      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1133      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1134      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1135      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1136      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1137      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1138      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1139      | Post Approval             | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1140      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1141      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1142      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1143      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1144      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1145      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1146      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1147      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1148      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1149      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1150      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1151      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1152      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1153      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1154      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1155      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1156      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1157      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1158      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1159      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1160      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1161      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1162      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1163      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1164      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1165      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1166      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1167      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1168      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1169      | Recommendation            | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1170      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1171      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1172      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1173      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1174      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1175      | Recommendation            | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1176      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1177      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1178      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1179      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1180      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1181      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1182      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1183      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1184      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1185      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1186      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1187      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1188      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1189      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1190      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1191      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1192      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1193      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1194      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1195      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1196      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1197      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1198      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1199      | Recommendation            | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1200      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1201      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1202      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1203      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1204      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1205      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1206      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1207      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1208      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1209      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1210      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1211      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1212      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1213      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1214      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1215      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1216      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1217      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1218      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1219      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1220      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1221      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1222      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1223      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1224      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1225      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1226      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1227      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1228      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1229      | Reconsideration           | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1230      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1231      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1232      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1233      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1234      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1235      | Reconsideration           | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1236      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1237      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1238      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1239      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1240      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1241      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1242      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1243      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1244      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1245      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1246      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1247      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1248      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1249      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1250      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1251      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1252      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1253      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1254      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1255      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1256      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1257      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1258      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1259      | Reconsideration           | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1260      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1261      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1262      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1263      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1264      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1265      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1266      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1267      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1268      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1269      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1270      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1271      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1272      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1273      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1274      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1275      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1276      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1277      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1278      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1279      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1280      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1281      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1282      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1283      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1284      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1285      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1286      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1287      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1288      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1289      | Disbursal                 | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1290      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1291      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1292      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1293      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1294      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1295      | Disbursal                 | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1296      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1297      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1298      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1299      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1300      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1301      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1302      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1303      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1304      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1305      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1306      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1307      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1308      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1309      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1310      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1311      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1312      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1313      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1314      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1315      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1316      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1317      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1318      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1319      | Disbursal                 | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1320      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1321      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1322      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1323      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1324      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1325      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1326      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1327      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1328      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1329      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1330      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1331      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1332      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1333      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1334      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1335      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1336      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1337      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1338      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1339      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1340      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1341      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1342      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1343      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1344      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1345      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1346      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1347      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1348      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1349      | App Update Recommendation | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1350      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1351      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1352      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1353      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1354      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1355      | App Update Recommendation | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1356      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1357      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1358      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1359      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1360      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1361      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1362      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1363      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1364      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1365      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1366      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1367      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1368      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1369      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1370      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1371      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1372      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1373      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1374      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1375      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1376      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1377      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1378      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1379      | App Update Recommendation | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1380      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1381      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1382      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1383      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1384      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1385      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1386      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1387      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1388      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1389      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1390      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1391      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1392      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1393      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1394      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1395      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1396      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1397      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1398      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1399      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1400      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1401      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1402      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1403      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1404      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1405      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1406      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1407      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1408      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1409      | Tranche Initiation        | Unsuccessfully | charge rate      |
      | BTChargedetails.xlsx | applicationcharges | 1410      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1411      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1412      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1413      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1414      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1415      | Tranche Initiation        | Successfully   | All fields       |
      | BTChargedetails.xlsx | applicationcharges | 1416      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1417      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1418      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1419      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1420      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1421      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1422      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1423      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1424      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1425      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1426      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1427      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1428      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1429      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1430      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1431      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1432      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1433      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1434      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1435      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1436      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1437      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1438      | Tranche Initiation        | Unsuccessfully | effective amount |
      | BTChargedetails.xlsx | applicationcharges | 1439      | Tranche Initiation        | Unsuccessfully | effective amount |


#  The Details added on the Balance Transfer Grid will also be displayed in the Liability Grid of the linked
#  applicant with the option ticked as Balance Transfer.
#  Also, the details added in the liability grid marked as Is Balance Transfer will also be available in the
#  Balance Transfer grid automatically. if entry is created
#  from Liability screen same will be visible in balance transfer details and vice versa

#  3.1.5.1 System Defined Controls
#  • In case on the Liability screen, the user marks the option as Is Balance Transfer and then
#  selects Application Type as other than BT, then system asks for the selection of Application
#  Type as BT option at move to next of the particular stage.
#  • At Credit Approval and Reconsideration move to next stage, the validation will come as sum
#  of closure Amount and Top-up amount (if applicable), which shall be same as Loan Amount
#  Requested.
#  • All the liability details shall be filled before moving ahead from the particular stage.
#  • If no application is found against particular account number while copying from CAS database,
#  then system returns an error message Application is no more present in CAS DB
