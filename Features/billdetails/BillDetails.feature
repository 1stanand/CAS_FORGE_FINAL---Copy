#@Epic-Corporate_Loans
#@AuthoredBy-anshima.tiwari
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#
#@BillDetails
#Feature: Bill details
#
#    #  Pre-Requisites---
##  In this feature we will validate all these screen level verification with User who is having ALL_Roles Authority
## Multi facility application should be present at DDE and in facility details product type should be bill discounting
#
#  Background:
#    Given user is on CAS login page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#
#  #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,"Facility Initiation", "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Verify bill details tab at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    When user clicks on facility id
#    Then bill details tab should be present
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,"Facility Initiation", "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Verify required fields of bill details at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    When user clicks on required to check all mandatory fields
#    Then following fields  should be visible in bill details
#      | Fields_Name        |
#      | Collateral Type    |
#      | Collateral SubType |
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#    #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,"Facility Initiation", "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Verify All fields of bill details at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    When user clicks on bill details tab
#    And user clicks on All fields to check all fields of bill details
#    Then following fields should be visible in bill details:
#      | Fields_Name       |
#      | Collateral ID     |
#      | Collateral Number |
#      | Reference Number  |
#      | Description       |
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#   #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,"Facility Initiation", "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Verify bill invoice details fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    When user clicks on create bill button
#    Then Following fields are visible with required conditional mandatory
#      | Fields                          | Required/Conditional_Mandatory |
#      | Bill / Invoice ID               | Required                       |
#      | Tranche / Split ID              | Required                       |
#      | Bill / Invoice Status           | Required                       |
#      | Type                            | Required                       |
#      | Bill / Invoice Number           | Required                       |
#      | PO Number                       | Not Required                   |
#      | Bill / Invoice Date             | Required                       |
#      | Bill / Invoice Maturity Date    | Required                       |
#      | Bill / Invoice Duration In Days | Conditional Mandatory          |
#      | Margin Days                     | Not Required                   |
#      | Bill / Invoice Amount           | Required                       |
#      | Margin %                        | Required                       |
#      | Security Deposit %              | Not Required                   |
#      | Margin Amount                   | Conditional Mandatory          |
#      | Security Deposit Amount         | Not Required                   |
#      | Interest Start Date             | Required                       |
#      | Interest Tenure In Days         | Not Required                   |
#      | Rate %                          | Required                       |
#      | Interest Amount                 | Required                       |
#      | TDS Rate                        | Not Required                   |
#      | TDS Amount                      | Not Required                   |
#      | Remarks                         | Not Required                   |
#      | + Add Attachment button         | Not Required                   |
#      | Seller details accordion        | Required                       |
#      | Buyer details accordion         | Required                       |
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,"Facility Initiation", "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Verify data already present at bill details screen at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    When user click on bill details tab
#    And user clicks on create bill button
#    Then data should be present in following fields with below mode
#      | Fields             | Mode    |
#      | Collateral Type    | Disable |
#      | Collateral SubType | Disable |
#      | Bill / Invoice ID  | Disable |
#      | Rate               | Enable  |
#
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #Create a new bill in bill details
#   #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Create a bill in bill details with "<All_Required_Fields>" at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user creates a new bill
#    And user read data from workbook <SourceDataFile> under sheet "<SheetName>" row number "<RowNum>"
#    And user fills bill details with "<All/Required_Fields>" fields
#    And user click on calculate interest TDS button
#    And user navigate to fill seller details
#    And user read data from workbook <SourceDataFile> under sheet "<SheetName1>" row number "<RowNum>"
#    And user navigate to fill add_edit identification details
#    And user read data from workbook <SourceDataFile> under sheet "<SheetName2>" row number "<RowNum>"
#    And user navigate to fill address details
#    And user read data from workbook <SourceDataFile> under sheet "<SheetName3>" row number "<RowNum>"
#    And user navigate to fill buyer details
#    And user read data from workbook <SourceDataFile> under sheet "<SheetName4>" row number "<RowNum>"
#    And user navigate to fill add_edit identification details
#    And user read data from workbook <SourceDataFile> under sheet "<SheetName5>" row number "<RowNum>"
#    And user navigate to fill address details
#    And user read data from workbook <SourceDataFile> under sheet "<SheetName3>" row number "<RowNum>"
#    When user saves the data
#    Then record should be save successfully
#    Examples:
#      | ApplicationStage   | ProductType   | SourceDataFile    | SheetName | RowNum | All/Required_Fields | SheetName3    | SheetName1   | SheetName4  | SheetName2      | SheetName5     |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 0      | required            | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 1      | all                 | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 0      | required            | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 1      | all                 | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 0      | reuired             | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 1      | all                 | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 0      | required            | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 1      | all                 | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 0      | required            | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 1      | all                 | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 0      | reuired             | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 1      | all                 | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 0      | required            | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create    | 1      | all                 | CreateAddress | CreateSeller | CreateBuyer | CreateID_Seller | CreateID_Buyer |
#
#
###identification details and address popup screen for seller and buyer
##   #${ProductType:["MULF"]}
## #${ApplicationStage:["DDE", "Credit Approval"]}
##  #FeatureID-ACAUTOCAS-10792
##  Scenario Outline:Verify identification details modal page at "<ApplicationStage>" in "<ProductType>"
##    And user open an application of "<ProductType>" at "<ApplicationStage>"
##    And user open deal & facility details tab
##    And user open facility details tab
##    And user clicks on facility id
##    And user clicks on bill details tab
##    And user opens created bill in edit mode
##    And  user enter seller name select individual non individual
##    When user clicks on add_edit identification details
##    Then pop up should open to add details
##    Examples:
##      | ApplicationStage   | ProductType   |
##      | <ApplicationStage> | <ProductType> |
#
#
#
##     #Enter address details in bill details
##   #${ProductType:["MULF"]}
## #${ApplicationStage:["DDE", "Credit Approval"]}
##  #FeatureID-ACAUTOCAS-10792
##  Scenario Outline: Fill address details in bill details with "<All/Required_Fields>"
##    And user open an application of "<ProductType>" at "<ApplicationStage>"
##    And user open deal & facility details tab
##    And user open facility details tab
##    And user clicks on facility id
##    And user clicks on bill details tab
##    And user creates a new bill
##    And user open address details tab
##    And user read data from workbook <SourceDataFile> under sheet "<SheetName>" row number "<RowNum>"
##    And user fills address details with "<All/Required_Fields>" fields
##    And user saves the data
##    Then record should be save successfully
##    Examples:
##      | ApplicationStage   | ProductType   | SourceDataFile    | SheetName      | RowNum | All/Required_Fields |
##      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create_Address | 0      | required            |
##      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Create_Address | 1      | all                 |
#
##Validate Dependent field
#  #${ProductType:["MULF"]}
##${ApplicationStage:["DDE", "Credit Approval"]}
##FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Verify margin amount in bill details
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details
#    And user open facility details
#    And user opens bill details
#    And user creates a new bill
#    When user enters margin percentage bill amount reading data from workbook "<SourceDataFile>" under sheet "<SourceSheet>" and row number <SourceSheetRow>
#    Then margin amount should be calculated as in from workbook "<SourceDataFile>" under sheet "<SourceSheet>" and row number <SourceSheetRow>
#    Examples:
#      | ApplicationStage   | ProductType   | SourceDataFile       | SourceSheet | SourceSheetRow |
#      | <ApplicationStage> | <ProductType> | credit_approval.xlsx | uw_decision | 1              |
#      | <ApplicationStage> | <ProductType> | credit_approval.xlsx | uw_decision | 2              |
#
#
#
#    #view fields of bill details
#   #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,
# # "Facility Initiation", "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: User view the added bill details at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    When user click on bill invoice id
#    Then Following fields should be visible view mode:
#      | Fields                          |
#      | Bill / Invoice ID               |
#      | Tranche / Split ID              |
#      | Bill / Invoice Status           |
#      | Type                            |
#      | Bill / Invoice Number           |
#      | PO Number                       |
#      | Bill / Invoice Date             |
#      | Bill / Invoice Maturity Date    |
#      | Bill / Invoice Duration In Days |
#      | Margin Days                     |
#      | Bill / Invoice Amount           |
#      | Margin %                        |
#      | Security Deposit %              |
#      | Margin Amount                   |
#      | Security Deposit Amount         |
#      | Interest Start Date             |
#      | Interest Tenure In Days         |
#      | Rate %                          |
#      | Interest Amount                 |
#      | TDS Rate                        |
#      | TDS Amount                      |
#      | Remarks                         |
#      | + Add Attachment button         |
#      | Seller details accordion        |
#      | Buyer details accordion         |
#      | Get margin/security deposite    |
#      | Calculate Interest/TDS          |
#      | Bill / Invoice ID               |
#      | Tranche / Split ID              |
#      | Bill / Invoice Status           |
#      | Type                            |
#      | Bill / Invoice Number           |
#      | PO Number                       |
#      | Bill / Invoice Date             |
#      | Bill / Invoice Maturity Date    |
#      | Bill / Invoice Duration In Days |
#      | Margin Days                     |
#      | Bill / Invoice Amount           |
#      | Margin %                        |
#      | Security Deposit %              |
#      | Margin Amount                   |
#      | Security Deposit Amount         |
#      | Interest Start Date             |
#      | Interest Tenure In Days         |
#      | Rate %                          |
#      | Interest Amount                 |
#      | TDS Rate                        |
#      | TDS Amount                      |
#      | Remarks                         |
#      | + Add Attachment button         |
#      | Seller details accordion        |
#      | Buyer details accordion         |
#      | Get margin/security deposite    |
#      | Calculate Interest/TDS          |
#      | Seller Name                     |
#      | Individual/Non-Individual       |
#      | add/edit identification details |
#      | Identification accordion        |
#      | Address accordion               |
#      | Buyer Name                      |
#      | Individual/Non-Individual       |
#      | add/edit identification details |
#      | Identification accordion        |
#      | Address accordion               |
#      | All Fields                      |
#      | Required                        |
#      | Address Type                    |
#      | Full Address                    |
#      | Country                         |
#      | Flat/Plot Number                |
#      | Address Line 2                  |
#      | Address Line 3                  |
#      | PinCode                         |
#      | Region                          |
#      | State                           |
#      | City                            |
#      | District                        |
#      | Taluka                          |
#      | Village                         |
#      | Mobile Phone                    |
#      | Current Address                 |
#      | Duration at this Address        |
#      | Duration at this City           |
#      | Is address verified             |
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
##    #Verify seller details in view mode
##   #${ProductType:["MULF"]}
## #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,
## # "Facility Initiation", "Disbursal Initiation"]}
##  #FeatureID-ACAUTOCAS-10792
##  Scenario Outline: View the seller details at "<ApplicationStage>" in "<ProductType>"
##    And user open an application of "<ProductType>" at "<ApplicationStage>"
##    And user open deal & facility details tab
##    And user open facility details tab
##    And user clicks on facility id
##    And user clicks on bill details tab
##    And user clicks on bill id
##    When user click on seller details accordion
##    Then Following fields should be visible in view mode
##
##
##    Examples:
##      | ApplicationStage   | ProductType   |
##      | <ApplicationStage> | <ProductType> |
##      | <ApplicationStage> | <ProductType> |
#
##    #Verify buyer details in view mode
##   #${ProductType:["MULF"]}
## #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,
## # "Facility Initiation", "Disbursal Initiation"]}
##  #FeatureID-ACAUTOCAS-10792
##  Scenario Outline:View the buyer details at "<ApplicationStage>" in "<ProductType>"
##    And user open an application of "<ProductType>" at "<ApplicationStage>"
##    And user open deal & facility details tab
##    And user open facility details tab
##    And user clicks on facility id
##    And user clicks on bill details tab
##    And user clicks on bill id
##    When user click on buyer details accordion
##    Then Following fields should be visible in view mode
##      | Fields                          |
##
##    Examples:
##      | ApplicationStage   | ProductType   |
##      | <ApplicationStage> | <ProductType> |
##      | <ApplicationStage> | <ProductType> |
#
#
##    #Verify address details for seller and buyer in view mode
##   #${ProductType:["MULF"]}
## #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,
## # "Facility Initiation", "Disbursal Initiation"]}
##  #FeatureID-ACAUTOCAS-10792
##  Scenario Outline:view the address details for seller, buyer details at "<ApplicationStage>" in "<ProductType>"
##    And user open an application of "<ProductType>" at "<ApplicationStage>"
##    And user open deal & facility details tab
##    And user open facility details tab
##    And user clicks on facility id
##    And user clicks on bill details tab
##    And user clicks on bill invoice id
##    When user click on seller address details and buyer address details accordion
##    And click on address type link
##    Then Following fields should be visible in view mode
##      | Fields |
##
##    Examples:
##      | ApplicationStage   | ProductType   |
##      | <ApplicationStage> | <ProductType> |
##      | <ApplicationStage> | <ProductType> |
#
#
#    #edit bill details
#   #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: edit a bill in bill details at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on edit icon
#    When user enters data from workbook "<SourceDataFile>" under sheet "<SheetName>"  row number <RowNum>
#    And user click on calculate interest TDS button to calculate interest amount Interest Tenure In Days
#    And edit BillInvoice Date Bill Invoice Maturity Date Interest Start Date
#      | Fields           |
#      | BillInvoice Date |
#    And margin amount is calculated on the basis of margin bill amount
#    And rate is present which is mapped in repayment policy
#    And user saves the data
#    Then record should be save successfully
#    Examples:
#      | ApplicationStage   | ProductType   | SourceDataFile    | SheetName | RowNum |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit      | 0      |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit      | 1      |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit      | 2      |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit      | 3      |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit      | 4      |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit      | 5      |
#
#
#
##     #Edit address details in bill details
##   #${ProductType:["MULF"]}
## #${ApplicationStage:["DDE", "Credit Approval"]}
##  #FeatureID-ACAUTOCAS-10792
##  Scenario Outline: Edit address details in bill details with "<All/Required_Fields>"
##    And user open an application of "<ProductType>" at "<ApplicationStage>"
##    And user open deal & facility details tab
##    And user open facility details tab
##    And user clicks on facility id
##    And user clicks on bill details tab
##    And user creates a new bill
##    And user open address details tab
##    And user read data from workbook <SourceDataFile> under sheet "<SheetName>" row number "<RowNum>"
##    And user edits address details with "<All/Required_Fields>" fields
##    And user saves the data
##    Then record should be save successfully
##    Examples:
##      | ApplicationStage   | ProductType   | SourceDataFile    | SheetName    | RowNum | All/Required_Fields |
##      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit_Address | 0      | required            |
##      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Edit_Address | 1      | all                 |
#
#    #View the edited record
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval", "FDE stage" , "Post Approval" ,
# # "Facility Initiation", "Disbursal Initiation"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: View the edited record in bill details at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And user view a edited new record
#    When user view the data from workbook "<SourceDataFile>" under sheet "<SheetName>"  row number <RowNum>
#    And user Verify edited data
#    Then changes should be visible
#      | Fields                          |
#      | Bill / Invoice ID               |
#      | Tranche / Split ID              |
#      | Bill / Invoice Status           |
#      | Type                            |
#      | Bill / Invoice Number           |
#      | PO Number                       |
#      | Bill / Invoice Date             |
#      | Bill / Invoice Maturity Date    |
#      | Bill / Invoice Duration In Days |
#      | Margin Days                     |
#      | Bill / Invoice Amount           |
#      | Margin %                        |
#      | Security Deposit %              |
#      | Margin Amount                   |
#      | Security Deposit Amount         |
#      | Interest Start Date             |
#      | Interest Tenure In Days         |
#      | Rate %                          |
#      | Interest Amount                 |
#      | TDS Rate                        |
#      | TDS Amount                      |
#      | Remarks                         |
#      | + Add Attachment button         |
#      | Seller details accordion        |
#      | Buyer details accordion         |
#      | Get margin/security deposite    |
#      | Calculate Interest/TDS          |
#      | Bill / Invoice ID               |
#      | Tranche / Split ID              |
#      | Bill / Invoice Status           |
#      | Type                            |
#      | Bill / Invoice Number           |
#      | PO Number                       |
#      | Bill / Invoice Date             |
#      | Bill / Invoice Maturity Date    |
#      | Bill / Invoice Duration In Days |
#      | Margin Days                     |
#      | Bill / Invoice Amount           |
#      | Margin %                        |
#      | Security Deposit %              |
#      | Margin Amount                   |
#      | Security Deposit Amount         |
#      | Interest Start Date             |
#      | Interest Tenure In Days         |
#      | Rate %                          |
#      | Interest Amount                 |
#      | TDS Rate                        |
#      | TDS Amount                      |
#      | Remarks                         |
#      | + Add Attachment button         |
#      | Seller details accordion        |
#      | Buyer details accordion         |
#      | Get margin/security deposite    |
#      | Calculate Interest/TDS          |
#      | Seller Name                     |
#      | Individual/Non-Individual       |
#      | add/edit identification details |
#      | Identification accordion        |
#      | Address accordion               |
#      | Buyer Name                      |
#      | Individual/Non-Individual       |
#      | add/edit identification details |
#      | Identification accordion        |
#      | Address accordion               |
#      | All Fields                      |
#      | Required                        |
#      | Address Type                    |
#      | Full Address                    |
#      | Country                         |
#      | Flat/Plot Number                |
#      | Address Line 2                  |
#      | Address Line 3                  |
#      | PinCode                         |
#      | Region                          |
#      | State                           |
#      | City                            |
#      | District                        |
#      | Taluka                          |
#      | Village                         |
#      | Mobile Phone                    |
#      | Current Address                 |
#      | Duration at this Address        |
#      | Duration at this City           |
#      | Is address verified             |
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#     #Validate the bill details with negative scenario
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Validates the record in bill details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on create bill button to create a new bill
#    When user enter data from workbook "<SourceDataFile>" under sheet "<SheetName>"  row number "<RowNum>"
#    And user fills all fields except "<FieldName>" field
#    And user saves the data
#    Then an error message occurred to capture "<FieldName>"
#    Examples:
#      | ApplicationStage   | ProductType   | SourceDataFile    | SheetName | RowNum | FieldName                 |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 0      | Type                      |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 1      | Bill / Invoice Number     |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 2      | Bill / Invoice Amount     |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 3      | Margin %                  |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 4      | Rate %                    |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 5      | Seller Name               |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 6      | Individual/Non-Individual |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 7      | Buyer name                |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Negative  | 8      | Individual/Non-Individual |
#
## Validate date in bill details with negative scenario
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: validates Bill Invoice Date Bill Invoice Maturity Date Interest Start Date at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user creates a new bill
#    When user try to save date field without data
#    Then following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                                   | Mandatory | ErrorMessage                                                 |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Date          | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Maturity Date | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is  Interest Start Date          | Yes       | There are some errors, please correct them and try again..!! |
#
#
##Validate the seller details with negative scenario
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates seller details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    When user clicks on add edit identification details button without selecting seller name , individual  non individual
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName  | Mandatory | ErrorMessage                                |
#      | <ApplicationStage> | <ProductType> | All fields | Yes       | Select Individual/Non-Individual for Seller |
#
#     #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates seller details with fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    When user clicks on add edit identification details button without selecting seller name
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName   | Mandatory | ErrorMessage |
#      | <ApplicationStage> | <ProductType> | Seller name | Yes       | <Error>      |
#
#     #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Check seller details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    When user clicks on add edit identification details button without selecting individual non individual
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                 | Mandatory | ErrorMessage                                |
#      | <ApplicationStage> | <ProductType> | Individual/Non-Individual | Yes       | Select Individual/Non-Individual for Seller |
#
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Validates identification details in seller details with mandatory fields at <ApplicationStage> in <ProductType>"
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user clicks on bill invoice idAnd user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open seller details tab
#    And user clicks on add edit identification details button
#    When user start select data from drop down
#    And user saves the data
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                         | Mandatory | ErrorMessage                                                 |
#      | <ApplicationStage> | <ProductType> | All Fields                        | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Identification Type | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Identification No   | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Country of issue    | Yes       | There are some errors, please correct them and try again..!  |
#
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Validates address details in seller details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open address details tab
#    And user clicks on plus icon
#    And address details are open
#    And only for country india Flat_Plot Number is mandatory
#    When user start select all fields data
#    And user saves the data
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                      | Mandatory | ErrorMessage                                                 |
#      | <ApplicationStage> | <ProductType> | All Fields                     | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Address Type     | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Country          | Yes       | Please select country.                                       |
#      | <ApplicationStage> | <ProductType> | This Field is Flat/Plot Number | Yes       | There are some errors, please correct them and try again..!  |
#      | <ApplicationStage> | <ProductType> | This Field is Pincode          | Yes       | There are some errors, please correct them and try again..!  |
#      | <ApplicationStage> | <ProductType> | This Field is Region           | No        | There are some errors, please correct them and try again..!  |
#      | <ApplicationStage> | <ProductType> | This Field is State            | Yes       | There are some errors, please correct them and try again..!  |
#
##Validate the buyer details with negative scenario
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates buyer details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open buyer details tab
#    When user clicks on add edit identification details button without selecting buyer name , individual non individual
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName  | Mandatory | ErrorMessage                               |
#      | <ApplicationStage> | <ProductType> | All fields | Yes       | Select Individual/Non-Individual for buyer |
#
#     #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Check buyer details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open buyer details tab
#    When user clicks on add edit identification details button without selecting buyer name
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName  | Mandatory | ErrorMessage            |
#      | <ApplicationStage> | <ProductType> | buyer name | Yes       | Please Enter buyer Name |
#
#     #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates buyer details with fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open buyer details tab
#    When user clicks on add edit identification details button without selecting individual  non individual
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                 | Mandatory | ErrorMessage                               |
#      | <ApplicationStage> | <ProductType> | Individual/Non-Individual | Yes       | Select Individual/Non-Individual for buyer |
#
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Validates identification details in buyer details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open buyer details tab
#    And user clicks on add edit identification details button
#    When user start select data from drop down
#    And user saves the data
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                         | Mandatory | ErrorMessage                                                 |
#      | <ApplicationStage> | <ProductType> | All Fields                        | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Identification Type | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Identification No   | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Country of issue    | Yes       | There are some errors, please correct them and try again..!  |
#
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates address details in buyer details with mandatory fields <FieldName> at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open address details tab
#    And address details are open
#    And only for country india Flat_Plot Number is mandatory
#    When user start select all fields
#    And user saves the data
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                      | Mandatory | ErrorMessage                                                 |
#      | <ApplicationStage> | <ProductType> | All Fields                     | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Address Type     | Yes       | There are some errors, please correct them and try again..!! |
#      | <ApplicationStage> | <ProductType> | This Field is Country          | Yes       | Please select country.                                       |
#      | <ApplicationStage> | <ProductType> | This Field is Flat/Plot Number | Yes       | There are some errors, please correct them and try again..!  |
#      | <ApplicationStage> | <ProductType> | This Field is Pincode          | Yes       | There are some errors, please correct them and try again..!  |
#      | <ApplicationStage> | <ProductType> | This Field is Region           | No        | There are some errors, please correct them and try again..!  |
#      | <ApplicationStage> | <ProductType> | This Field is State            | Yes       | There are some errors, please correct them and try again..!  |
#
#     #Validate the bill details with incorrect scenario
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Validates the record with incorrect scenarios in bill details master with mandatory fields <RowNum> and <FieldName> at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks create bill button
#    And user creates a new record
#    When user enter data from workbook "<SourceDataFile>" under sheet "<SheetName>"  row number <RowNum>
#    And user saves the data
#    Then Following error message should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | SourceDataFile    | SheetName | RowNum | FieldName                           | Mandatory |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 0      | This Field is Margin Days           | No        |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 1      | This Field is Margin Days           | No        |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 2      | This Field is Bill / Invoice Amount | Yes       |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 5      | This Field is Bill / Invoice Amount | Yes       |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 6      | This Field is Margin %              | Yes       |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 7      | This Field is Margin %              | Yes       |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 8      | This Field is Margin %              | Yes       |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 9      | This Field is Security Deposit %    | No        |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 10     | This Field is Security Deposit %    | No        |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 11     | This Field is Security Deposit %    | No        |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 12     | This Field is Rate %                | Yes       |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 13     | This Field is Rate %                | Yes       |
#      | <ApplicationStage> | <ProductType> | Bill_Details.xlsx | Incorrect | 14     | This Field is Rate %                | Yes       |
#
#    # Validate date in bill details with incorrect scenario
#   #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates incorrect scenario on Bill Invoice Date, Bill Invoice Maturity Date, Interest Start Date at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on create bill button
#    When user try to save date field in incorrect format of data
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" and "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                                   | Mandatory | ErrorMessage              |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Date          | Yes       | Please enter a valid date |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Maturity Date | Yes       | Please enter a valid date |
#      | <ApplicationStage> | <ProductType> | This Field is  Interest Start Date          | Yes       | Please enter a valid date |
#
#    #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Validates date before 1942 on Bill Invoice Date, Bill Invoice Maturity Date, Interest Start Date at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on create bill button
#    When user try to save date field in incorrect data
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" and "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                                   | Mandatory | ErrorMessage                                         |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Date          | Yes       | Year of Date should be greater than or equal to 1942 |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Maturity Date | Yes       | Please enter a valid date                            |
#      | <ApplicationStage> | <ProductType> | This Field is  Interest Start Date          | Yes       | Year of Date should be greater than or equal to 1942 |
#
#    #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: User validates Bill Invoice Date at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    When user try to save Bill Invoice Date field same date otherwise greater than maturity day
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                          | Mandatory | ErrorMessage                                                                 |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Date | Yes       | Bill / Invoice Date cannot be after or same as Bill / Invoice Maturity Date. |
#
#     #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline: Validates Bill Invoice Maturity Date at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    When user try to save current date in Bill Invoice Maturity Date
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName                          | Mandatory | ErrorMessage                                                 |
#      | <ApplicationStage> | <ProductType> | This Field is  Bill / Invoice Date | Yes       | Bill / Invoice Maturity Date cannot be equal to current date |
#
#
#    #Validate the seller details with incorrect scenario
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates incorrect scenario in seller details with mandatory fields at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open seller details tab
#    When user clicks on add edit identification details button enter seller name with all characters
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" mandatory "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName   | Mandatory | ErrorMessage                                       |
#      | <ApplicationStage> | <ProductType> | seller name | Yes       | Only Alphabets,Numbers and ' . spaces are allowed. |
#
# #Validate the buyer details with incorrect scenario
# #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#  Scenario Outline:Validates incorrect scenario in buyer details with mandatory fields at "<ApplicationStage>" in "<ProductType>"
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on bill invoice id
#    And open buyer details tab
#    When user clicks on add edit identification details button enter buyer name with all characters
#    Then Following error message "<ErrorMessage>" should come for field "<FieldName>" and "<Mandatory>"
#    Examples:
#      | ApplicationStage   | ProductType   | FieldName  | Mandatory | ErrorMessage                                       |
#      | <ApplicationStage> | <ProductType> | buyer name | Yes       | Only Alphabets,Numbers and ' . spaces are allowed. |
#
#   #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#   #user delete the created record
#  Scenario Outline:Delete the created record at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on delete button
#    Then record should be deleted successfully
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#     #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#   #user create bill from upload
#  Scenario Outline:Create bill details using upload at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on xlsx template download button
#    And fill data in downloaded template
#    When user upload bill_invoice details button
#    Then record should be uoploaded successfully
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#        #${ProductType:["MULF"]}
# #${ApplicationStage:["DDE", "Credit Approval"]}
#  #FeatureID-ACAUTOCAS-10792
#   #user create bill from upload when error occured
#  Scenario Outline:Create bill details using upload at <ApplicationStage> in <ProductType>
#    And user open an application of "<ProductType>" at "<ApplicationStage>"
#    And user open deal facility details tab
#    And user open facility details tab
#    And user clicks on facility id
#    And user clicks on bill details tab
#    And user clicks on xlsx template download button
#    And fill incorrect data in downloaded template
#    When user upload bill_invoice details button
#    Then error file should be downloaded successfully with validation message
#    Examples:
#      | ApplicationStage   | ProductType   |
#      | <ApplicationStage> | <ProductType> |
#
#
#
#
