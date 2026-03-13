@Epic-Balance_Transfer
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
#@Release2
@NotImplemented
#@BT

Feature: BTCharges_Contractual
  
  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And Chargecodes should be maintained in Charge Code Definition Master with all Transaction types mapped
    And Charges should be maintained in Charge Definition Master with computation details maintained

     #FeatureID-ACAUTOCAS-14,ACAUTOCAS-And
  Scenario Outline: ACAUTOCAS-2856: Contractual Charges available for BT Applications at "<Var_Stage>" Stage at row number "<BTRowNum2>"
    And BT Loan application is at "<Var_Stage>" stage for application type from excel "<BTChargedetails>" under sheet "<stage_bttype_Prod_Scheme>" at row number "<BTRowNum2>"
    And contractual charges already mapped in charge policy
    When user navigates to charges section at "<Var_Stage>" stage
    Then user will see new section for contractual charge in charge fees acccordion with contractual charges attached with charge policy in the grid at "<Var_Stage>" stage
    #And user can enter effective charge amount against contractual charges in grid
    
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


       #FeatureID-ACAUTOCAS-14,ACAUTOCAS-And,CAS-75790
  Scenario Outline: ACAUTOCAS-2685: Editing Contractual Charges at "<Var_Stage>" Stage at row number "<BTRowNum2>"
    And BT Loan application is at "<Var_Stage>" stage  for application type from excel "<BTChargedetails>" under sheet "<contractualchrgs>" at row number "<BTRowNum2>"
    And user has already executed the charge policy on charges section for this application
    When user opens the details of effective rate amount on charges grid from hyperlink at "<Var_Stage>" Stage
    And user modifies the fields on application charge details taking data from excel "<BTChargedetails>" under sheet "<contractualchrgs>" at row number "<BTRowNum2>"
    #for "<FieldName>"
    And user saves the record
    Then user should be able to save "<Success_Status>" with proper message
    
    Examples:
      | BTChargedetails      | contractualchrgs | BTRowNum2 | Var_Stage                 | Success_Status |
      | BTChargedetails.xlsx | contractualchrgs | 0         | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1         | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 2         | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 3         | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 4         | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 5         | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 6         | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 7         | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 8         | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 9         | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 10        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 11        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 12        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 13        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 14        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 15        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 16        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 17        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 18        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 19        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 20        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 21        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 22        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 23        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 24        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 25        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 26        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 27        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 28        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 29        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 30        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 31        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 32        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 33        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 34        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 35        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 36        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 37        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 38        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 39        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 40        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 41        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 42        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 43        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 44        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 45        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 46        | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 47        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 48        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 49        | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 50        | DDE                       | Unsuccessfully |
      
      | BTChargedetails.xlsx | contractualchrgs | 51        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 52        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 53        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 54        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 55        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 56        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 57        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 58        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 59        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 60        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 61        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 62        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 63        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 64        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 65        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 66        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 67        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 68        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 69        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 70        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 71        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 72        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 73        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 74        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 75        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 76        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 77        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 78        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 79        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 80        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 81        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 82        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 83        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 84        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 85        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 86        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 87        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 88        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 89        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 90        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 91        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 92        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 93        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 94        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 95        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 96        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 97        | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 98        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 99        | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 100       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 101       | Credit Approval           | Unsuccessfully |
      
      | BTChargedetails.xlsx | contractualchrgs | 102       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 103       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 104       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 105       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 106       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 107       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 108       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 109       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 110       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 111       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 112       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 113       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 114       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 115       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 116       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 117       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 118       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 119       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 120       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 121       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 122       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 123       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 124       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 125       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 126       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 127       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 128       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 129       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 130       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 131       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 132       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 133       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 134       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 135       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 136       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 137       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 138       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 139       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 140       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 141       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 142       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 143       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 144       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 145       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 146       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 147       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 148       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 149       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 150       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 151       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 152       | Post Approval             | Unsuccessfully |
      
      | BTChargedetails.xlsx | contractualchrgs | 153       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 154       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 155       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 156       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 157       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 158       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 159       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 160       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 161       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 162       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 163       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 164       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 165       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 166       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 167       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 168       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 169       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 170       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 171       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 172       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 173       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 174       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 175       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 176       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 177       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 178       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 179       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 180       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 181       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 182       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 183       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 184       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 185       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 186       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 187       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 188       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 189       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 190       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 191       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 192       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 193       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 194       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 195       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 196       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 197       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 198       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 199       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 200       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 201       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 202       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 203       | Recommendation            | Unsuccessfully |
      
      | BTChargedetails.xlsx | contractualchrgs | 204       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 205       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 206       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 207       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 208       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 209       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 210       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 211       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 212       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 213       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 214       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 215       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 216       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 217       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 218       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 219       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 220       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 221       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 222       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 223       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 224       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 225       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 226       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 227       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 228       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 229       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 230       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 231       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 232       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 233       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 234       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 235       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 236       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 237       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 238       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 239       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 240       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 241       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 242       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 243       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 244       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 245       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 246       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 247       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 248       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 249       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 250       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 251       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 252       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 253       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 254       | Reconsideration           | Unsuccessfully |
      
      | BTChargedetails.xlsx | contractualchrgs | 255       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 256       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 257       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 258       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 259       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 260       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 261       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 262       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 263       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 264       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 265       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 266       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 267       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 268       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 269       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 270       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 271       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 272       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 273       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 274       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 275       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 276       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 277       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 278       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 279       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 280       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 281       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 282       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 283       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 284       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 285       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 286       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 287       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 288       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 289       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 290       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 291       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 292       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 293       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 294       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 295       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 296       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 297       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 298       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 299       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 300       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 301       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 302       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 303       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 304       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 305       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 306       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 307       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 308       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 309       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 310       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 311       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 312       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 313       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 314       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 315       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 316       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 317       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 318       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 319       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 320       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 321       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 322       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 323       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 324       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 325       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 326       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 327       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 328       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 329       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 330       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 331       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 332       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 333       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 334       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 335       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 336       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 337       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 338       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 339       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 340       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 341       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 342       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 343       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 344       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 345       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 346       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 347       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 348       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 349       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 350       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 351       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 352       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 353       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 354       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 355       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 356       | Tranche Initiation        | Unsuccessfully |
      
      | BTChargedetails.xlsx | contractualchrgs | 357       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | And       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 359       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 360       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 361       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 362       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 363       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 364       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 365       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 366       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 367       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 368       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 369       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 370       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 371       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 372       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 373       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 374       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 375       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 376       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 377       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 378       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 379       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 380       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 381       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 382       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 383       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 384       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 385       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 386       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 387       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 388       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 389       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 390       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 391       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 392       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 393       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 394       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 395       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 396       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 397       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 398       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 399       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 400       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 401       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 402       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 403       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 404       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 405       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 406       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 407       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 408       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 409       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 410       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 411       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 412       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 413       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 414       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 415       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 416       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 417       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 418       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 419       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 420       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 421       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 422       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 423       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 424       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 425       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 426       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 427       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 428       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 429       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 430       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 431       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 432       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 433       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 434       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 435       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 436       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 437       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 438       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 439       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 440       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 441       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 442       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 443       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 444       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 445       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 446       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 447       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 448       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 449       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 450       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 451       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 452       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 453       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 454       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 455       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 456       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 457       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 458       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 459       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 460       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 461       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 462       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 463       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 464       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 465       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 466       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 467       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 468       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 469       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 470       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 471       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 472       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 473       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 474       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 475       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 476       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 477       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 478       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 479       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 480       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 481       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 482       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 483       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 484       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 485       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 486       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 487       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 488       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 489       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 490       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 491       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 492       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 493       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 494       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 495       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 496       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 497       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 498       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 499       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 500       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 501       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 502       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 503       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 504       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 505       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 506       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 507       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 508       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 509       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 510       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 511       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 512       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 513       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 514       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 515       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 516       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 517       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 518       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 519       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 520       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 521       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 522       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 523       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 524       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 525       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 526       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 527       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 528       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 529       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 530       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 531       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 532       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 533       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 534       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 535       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 536       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 537       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 538       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 539       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 540       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 541       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 542       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 543       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 544       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 545       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 546       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 547       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 548       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 549       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 550       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 551       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 552       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 553       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 554       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 555       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 556       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 557       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 558       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 559       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 560       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 561       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 562       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 563       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 564       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 565       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 566       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 567       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 568       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 569       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 570       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 571       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 572       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 573       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 574       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 575       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 576       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 577       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 578       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 579       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 580       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 581       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 582       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 583       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 584       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 585       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 586       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 587       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 588       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 589       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 590       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 591       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 592       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 593       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 594       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 595       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 596       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 597       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 598       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 599       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 600       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 601       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 602       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 603       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 604       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 605       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 606       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 607       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 608       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 609       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 610       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 611       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 612       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 613       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 614       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 615       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 616       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 617       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 618       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 619       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 620       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 621       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 622       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 623       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 624       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 625       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 626       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 627       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 628       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 629       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 630       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 631       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 632       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 633       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 634       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 635       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 636       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 637       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 638       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 639       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 640       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 641       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 642       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 643       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 644       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 645       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 646       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 647       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 648       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 649       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 650       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 651       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 652       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 653       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 654       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 655       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 656       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 657       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 658       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 659       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 660       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 661       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 662       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 663       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 664       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 665       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 666       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 667       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 668       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 669       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 670       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 671       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 672       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 673       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 674       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 675       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 676       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 677       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 678       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 679       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 680       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 681       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 682       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 683       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 684       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 685       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 686       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 687       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 688       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 689       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 690       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 691       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 692       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 693       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 694       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 695       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 696       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 697       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 698       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 699       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 700       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 701       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 702       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 703       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 704       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 705       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 706       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 707       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 708       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 709       | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 710       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 711       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 712       | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 713       | Tranche Initiation        | Unsuccessfully |
      
      | BTChargedetails.xlsx | contractualchrgs | 714       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 715       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 716       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 717       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 718       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 719       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 720       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 721       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 722       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 723       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 724       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 725       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 726       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 727       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 728       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 729       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 730       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 731       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 732       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 733       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 734       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 735       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 736       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 737       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 738       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 739       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 740       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 741       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 742       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 743       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 744       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 745       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 746       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 747       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 748       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 749       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 750       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 751       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 752       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 753       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 754       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 755       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 756       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 757       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 758       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 759       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 760       | DDE                       | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 761       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 762       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 763       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 764       | DDE                       | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 765       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 766       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 767       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 768       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 769       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 770       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 771       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 772       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 773       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 774       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 775       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 776       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 777       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 778       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 779       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 780       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 781       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 782       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 783       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 784       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 785       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 786       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 787       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 788       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 789       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 790       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 791       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 792       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 793       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 794       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 795       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 796       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 797       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 798       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 799       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 800       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 801       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 802       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 803       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 804       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 805       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 806       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 807       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 808       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 809       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 810       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 811       | Credit Approval           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 812       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 813       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 814       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 815       | Credit Approval           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 816       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 817       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 818       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 819       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 820       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 821       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 822       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 823       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 824       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 825       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 826       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 827       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 828       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 829       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 830       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 831       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 832       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 833       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 834       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 835       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 836       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 837       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 838       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 839       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 840       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 841       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 842       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 843       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 844       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 845       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 846       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 847       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 848       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 849       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 850       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 851       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 852       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 853       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 854       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 855       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 856       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 857       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 858       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 859       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 860       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 861       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 862       | Post Approval             | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 863       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 864       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 865       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 866       | Post Approval             | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 867       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 868       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 869       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 870       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 871       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 872       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 873       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 874       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 875       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 876       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 877       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 878       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 879       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 880       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 881       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 882       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 883       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 884       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 885       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 886       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 887       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 888       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 889       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 890       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 891       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 892       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 893       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 894       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 895       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 896       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 897       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 898       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 899       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 900       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 901       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 902       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 903       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 904       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 905       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 906       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 907       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 908       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 909       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 910       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 911       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 912       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 913       | Recommendation            | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 914       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 915       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 916       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 917       | Recommendation            | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 918       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 919       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 920       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 921       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 922       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 923       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 924       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 925       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 926       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 927       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 928       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 929       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 930       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 931       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 932       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 933       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 934       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 935       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 936       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 937       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 938       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 939       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 940       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 941       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 942       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 943       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 944       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 945       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 946       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 947       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 948       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 949       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 950       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 951       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 952       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 953       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 954       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 955       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 956       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 957       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 958       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 959       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 960       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 961       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 962       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 963       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 964       | Reconsideration           | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 965       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 966       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 967       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 968       | Reconsideration           | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 969       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 970       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 971       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 972       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 973       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 974       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 975       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 976       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 977       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 978       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 979       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 980       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 981       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 982       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 983       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 984       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 985       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 986       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 987       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 988       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 989       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 990       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 991       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 992       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 993       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 994       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 995       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 996       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 997       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 998       | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 999       | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1000      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1001      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1002      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1003      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1004      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1005      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1006      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1007      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1008      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1009      | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1010      | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1011      | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1012      | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1013      | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1014      | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1015      | App Update Recommendation | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1016      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1017      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1018      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1019      | App Update Recommendation | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1020      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1021      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1022      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1023      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1024      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1025      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1026      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1027      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1028      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1029      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1030      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1031      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1032      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1033      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1034      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1035      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1036      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1037      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1038      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1039      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1040      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1041      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1042      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1043      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1044      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1045      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1046      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1047      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1048      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1049      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1050      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1051      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1052      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1053      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1054      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1055      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1056      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1057      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1058      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1059      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1060      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1061      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1062      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1063      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1064      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1065      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1066      | Tranche Initiation        | Successfully   |
      | BTChargedetails.xlsx | contractualchrgs | 1067      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1068      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1069      | Tranche Initiation        | Unsuccessfully |
      | BTChargedetails.xlsx | contractualchrgs | 1070      | Tranche Initiation        | Unsuccessfully |


     #FeatureID-ACAUTOCAS-14,ACAUTOCAS-359
  Scenario Outline: ACAUTOCAS-6108: Contractual Charges not editable at "<Var_Stage>" stage
    And BT Loan applications is at "<Var_Stage>" stage
    When user navigates to charges section
    And user clicks on charge hyperlink in the charges grid section
    And user verifies application charges details
    Then user should not be able to modify application charges details on charges screen
    
    Examples:
      
      | Var_Stage           |
      | Tranche Approval    |
      | App Update Approval |

