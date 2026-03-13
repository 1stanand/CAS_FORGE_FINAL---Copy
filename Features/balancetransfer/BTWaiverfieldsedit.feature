@Epic-Balance_Transfer
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
#@Release2
@NotImplemented
#@BT

Feature: BTWaiver_fields_edit

    #FeatureID-ACAUTOCAS-14,ACAUTOCAS-361
  Scenario Outline:ACAUTOCAS-2467: Editable fields and Validations on Waiver initiation Screen for BT applications at "<Var_Stage>" Stage at row number "<BTRowNum2>"
    #Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Given BT Loan application is at "<Var_Stage>" Stage for application type from excel "<BTChargedetails>" under sheet "<ChrgsWaiver>" at row number "<BTRowNum2>" for editing fields
    When user enters values in fields from excel "<BTChargedetails>" under sheet "<ChrgsWaiver>" at row number "<BTRowNum2>" for "<FieldName>"
    And user "<initiate_approves>" waiver
    Then user should get proper message as "<Success_Status>" with proper message
    
    Examples:
      | BTChargedetails      | ChrgsWaiver | BTRowNum2 | Var_Stage                 | initiate_approves | Success_Status | FieldName          |
      | BTChargedetails.xlsx | ChrgsWaiver | 0         | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 1         | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 2         | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 3         | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 4         | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 5         | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 6         | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 7         | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 8         | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 9         | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 10        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 11        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 12        | DDE                       | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 13        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 14        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 15        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 16        | DDE                       | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 17        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 18        | DDE                       | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 19        | DDE                       | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 20        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 21        | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 22        | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 23        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 24        | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 25        | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 26        | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 27        | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 28        | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 29        | Credit Approval           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 30        | Credit Approval           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 31        | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 32        | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 33        | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 34        | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 35        | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 36        | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 37        | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 38        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 39        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 40        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 41        | Credit Approval           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 42        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 43        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 44        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 45        | Credit Approval           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 46        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 47        | Credit Approval           | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 48        | Credit Approval           | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 49        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 50        | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 51        | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 52        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 53        | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 54        | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 55        | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 56        | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 57        | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 58        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 59        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 60        | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 61        | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 62        | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 63        | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 64        | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 65        | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 66        | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 67        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 68        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 69        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 70        | Post Approval             | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 71        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 72        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 73        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 74        | Post Approval             | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 75        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 76        | Post Approval             | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 77        | Post Approval             | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 78        | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 79        | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 80        | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 81        | Post Approval             | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 82        | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 83        | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 84        | Post Approval             | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 85        | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 86        | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 87        | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 88        | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 89        | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 90        | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 91        | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 92        | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 93        | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 94        | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 95        | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 96        | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 97        | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 98        | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 99        | Recommendation            | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 100       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 101       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 102       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 103       | Recommendation            | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 104       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 105       | Recommendation            | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 106       | Recommendation            | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 107       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 108       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 109       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 110       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 111       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 112       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 113       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 114       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 115       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 116       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 117       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 118       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 119       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 120       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 121       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 122       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 123       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 124       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 125       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 126       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 127       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 128       | Reconsideration           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 129       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 130       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 131       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 132       | Reconsideration           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 133       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 134       | Reconsideration           | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 135       | Reconsideration           | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 136       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 137       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 138       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 139       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 140       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 141       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 142       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 143       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 144       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 145       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 146       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 147       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 148       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 149       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 150       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 151       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 152       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 153       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 154       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 155       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 156       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 157       | Disbursal                 | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 158       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 159       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 160       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 161       | Disbursal                 | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 162       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 163       | Disbursal                 | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 164       | Disbursal                 | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 165       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 166       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 167       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 168       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 169       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 170       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 171       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 172       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 173       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 174       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 175       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 176       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 177       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 178       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 179       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 180       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 181       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 182       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 183       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 184       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 185       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 186       | App Update Recommendation | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 187       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 188       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 189       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 190       | App Update Recommendation | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 191       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 192       | App Update Recommendation | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 193       | App Update Recommendation | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 194       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 195       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 196       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 197       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 198       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 199       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 200       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 201       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 202       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 203       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 204       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 205       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 206       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 207       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 208       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 209       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 210       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 211       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 212       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 213       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 214       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 215       | Tranche Initiation        | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 216       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 217       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 218       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 219       | Tranche Initiation        | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 220       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 221       | Tranche Initiation        | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 222       | Tranche Initiation        | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 223       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 224       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 225       | Tranche Initiation        | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 226       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 227       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 228       | Tranche Initiation        | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 229       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 230       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 231       | Tranche Initiation        | initiates         | Failure        | User               |
      
      | BTChargedetails.xlsx | ChrgsWaiver | 232       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 233       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 234       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 235       | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 236       | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 237       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 238       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 239       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 240       | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 241       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 242       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 243       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 244       | DDE                       | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 245       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 246       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 247       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 248       | DDE                       | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 249       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 250       | DDE                       | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 251       | DDE                       | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 252       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 253       | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 254       | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 255       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 256       | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 257       | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 258       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 259       | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 260       | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 261       | Credit Approval           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 262       | Credit Approval           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 263       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 264       | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 265       | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 266       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 267       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 268       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 269       | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 270       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 271       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 272       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 273       | Credit Approval           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 274       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 275       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 276       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 277       | Credit Approval           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 278       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 279       | Credit Approval           | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 280       | Credit Approval           | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 281       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 282       | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 283       | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 284       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 285       | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 286       | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 287       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 288       | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 289       | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 290       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 291       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 292       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 293       | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 294       | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 295       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 296       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 297       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 298       | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 299       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 300       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 301       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 302       | Post Approval             | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 303       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 304       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 305       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 306       | Post Approval             | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 307       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 308       | Post Approval             | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 309       | Post Approval             | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 310       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 311       | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 312       | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 313       | Post Approval             | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 314       | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 315       | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 316       | Post Approval             | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 317       | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 318       | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 319       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 320       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 321       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 322       | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 323       | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 324       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 325       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 326       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 327       | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 328       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 329       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 330       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 331       | Recommendation            | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 332       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 333       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 334       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 335       | Recommendation            | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 336       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 337       | Recommendation            | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 338       | Recommendation            | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 339       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 340       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 341       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 342       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 343       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 344       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 345       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 346       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 347       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 348       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 349       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 350       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 351       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 352       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 353       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 354       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 355       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 356       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 357       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 358       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 359       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 360       | Reconsideration           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 361       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 362       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 363       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 364       | Reconsideration           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 365       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 366       | Reconsideration           | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 367       | Reconsideration           | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 368       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 369       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 370       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 371       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 372       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 373       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 374       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 375       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 376       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 377       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 378       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 379       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 380       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 381       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 382       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 383       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 384       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 385       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 386       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 387       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 388       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 389       | Disbursal                 | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 390       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 391       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 392       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 393       | Disbursal                 | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 394       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 395       | Disbursal                 | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 396       | Disbursal                 | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 397       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 398       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 399       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 400       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 401       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 402       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 403       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 404       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 405       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 406       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 407       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 408       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 409       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 410       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 411       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 412       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 413       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 414       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 415       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 416       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 417       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 418       | App Update Recommendation | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 419       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 420       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 421       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 422       | App Update Recommendation | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 423       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 424       | App Update Recommendation | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 425       | App Update Recommendation | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 426       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 427       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 428       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 429       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 430       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 431       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 432       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 433       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 434       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 435       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 436       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 437       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 438       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 439       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 440       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 441       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 442       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 443       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 444       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 445       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 446       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 447       | Tranche Initiation        | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 448       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 449       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 450       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 451       | Tranche Initiation        | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 452       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 453       | Tranche Initiation        | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 454       | Tranche Initiation        | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 455       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 456       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 457       | Tranche Initiation        | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 458       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 459       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 460       | Tranche Initiation        | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 461       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 462       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 463       | Tranche Initiation        | initiates         | Failure        | User               |
      
      | BTChargedetails.xlsx | ChrgsWaiver | 464       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 465       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 466       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 467       | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 468       | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 469       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 470       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 471       | DDE                       | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 472       | DDE                       | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 473       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 474       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 475       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 476       | DDE                       | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 477       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 478       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 479       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 480       | DDE                       | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 481       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 482       | DDE                       | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 483       | DDE                       | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 484       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 485       | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 486       | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 487       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 488       | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 489       | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 490       | DDE                       | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 491       | DDE                       | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 492       | DDE                       | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 493       | Credit Approval           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 494       | Credit Approval           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 495       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 496       | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 497       | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 498       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 499       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 500       | Credit Approval           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 501       | Credit Approval           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 502       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 503       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 504       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 505       | Credit Approval           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 506       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 507       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 508       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 509       | Credit Approval           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 510       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 511       | Credit Approval           | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 512       | Credit Approval           | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 513       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 514       | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 515       | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 516       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 517       | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 518       | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 519       | Credit Approval           | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 520       | Credit Approval           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 521       | Credit Approval           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 522       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 523       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 524       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 525       | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 526       | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 527       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 528       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 529       | Post Approval             | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 530       | Post Approval             | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 531       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 532       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 533       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 534       | Post Approval             | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 535       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 536       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 537       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 538       | Post Approval             | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 539       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 540       | Post Approval             | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 541       | Post Approval             | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 542       | Post Approval             | initiates         | Success        | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 543       | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 544       | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 545       | Post Approval             | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 546       | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 547       | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 548       | Post Approval             | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 549       | Post Approval             | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 550       | Post Approval             | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 551       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 552       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 553       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 554       | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 555       | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 556       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 557       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 558       | Recommendation            | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 559       | Recommendation            | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 560       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 561       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 562       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 563       | Recommendation            | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 564       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 565       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 566       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 567       | Recommendation            | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 568       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 569       | Recommendation            | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 570       | Recommendation            | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 571       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 572       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 573       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 574       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 575       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 576       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 577       | Recommendation            | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 578       | Recommendation            | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 579       | Recommendation            | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 580       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 581       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 582       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 583       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 584       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 585       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 586       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 587       | Reconsideration           | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 588       | Reconsideration           | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 589       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 590       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 591       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 592       | Reconsideration           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 593       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 594       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 595       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 596       | Reconsideration           | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 597       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 598       | Reconsideration           | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 599       | Reconsideration           | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 600       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 601       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 602       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 603       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 604       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 605       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 606       | Reconsideration           | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 607       | Reconsideration           | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 608       | Reconsideration           | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 609       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 610       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 611       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 612       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 613       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 614       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 615       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 616       | Disbursal                 | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 617       | Disbursal                 | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 618       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 619       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 620       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 621       | Disbursal                 | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 622       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 623       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 624       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 625       | Disbursal                 | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 626       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 627       | Disbursal                 | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 628       | Disbursal                 | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 629       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 630       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 631       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 632       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 633       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 634       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 635       | Disbursal                 | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 636       | Disbursal                 | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 637       | Disbursal                 | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 638       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 639       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 640       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 641       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 642       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 643       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 644       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 645       | App Update Recommendation | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 646       | App Update Recommendation | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 647       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 648       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 649       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 650       | App Update Recommendation | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 651       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 652       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 653       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 654       | App Update Recommendation | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 655       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 656       | App Update Recommendation | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 657       | App Update Recommendation | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 658       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 659       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 660       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 661       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 662       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 663       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 664       | App Update Recommendation | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 665       | App Update Recommendation | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 666       | App Update Recommendation | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 667       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 668       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 669       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 670       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 671       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 672       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 673       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 674       | Tranche Initiation        | initiates         | Failure        | Product Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 675       | Tranche Initiation        | initiates         | Failure        | Package Discount   |
      | BTChargedetails.xlsx | ChrgsWaiver | 676       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 677       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 678       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 679       | Tranche Initiation        | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 680       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 681       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 682       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 683       | Tranche Initiation        | initiates         | Failure        | Waiver Amount      |
      | BTChargedetails.xlsx | ChrgsWaiver | 684       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 685       | Tranche Initiation        | initiates         | Failure        | Reason             |
      | BTChargedetails.xlsx | ChrgsWaiver | 686       | Tranche Initiation        | initiates         | Failure        | Reason Description |
      | BTChargedetails.xlsx | ChrgsWaiver | 687       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 688       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 689       | Tranche Initiation        | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 690       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 691       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 692       | Tranche Initiation        | initiates         | Failure        | User               |
      | BTChargedetails.xlsx | ChrgsWaiver | 693       | Tranche Initiation        | initiates         | Successfully   | All fields         |
      | BTChargedetails.xlsx | ChrgsWaiver | 694       | Tranche Initiation        | initiates         | Failure        | Role               |
      | BTChargedetails.xlsx | ChrgsWaiver | 695       | Tranche Initiation        | initiates         | Failure        | User               |

