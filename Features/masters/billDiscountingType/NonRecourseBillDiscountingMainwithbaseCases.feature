@AuthoredBy-parth.rana
@ATDD
@DevTrack
@GA-9.0
@CAS-261186
@ImplementedBy-ram.singh
Feature: Multi-facilty
  As a CAS user
  I want to configure Bill Discounting Type while creating a Bill Discounting product
  So that the selected type is reflected correctly in Scheme Master and sent to LMS

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Positive
    
  Scenario Outline: Bill Discounting Type field visibility for Bill Discounting product
    And user navigates to Product Master
    And user click on create product button
    When user selects Product Type as "<ProductType>" on Create Products screen
    Then Bill Discounting Type field should be "<Visibility>"

    Examples:
      | ProductType      | Visibility |
      | Bill Discounting | True       |
      | Cash Credit      | False      |


  @Positive
    
  Scenario Outline: User Create both Bill Discounting Type product
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user click on create product button
    When user selects Product Type as "<ProductType>" on Create Products screen
    And user selects Bill Discounting Type as "<SelectedType>"
    And user enters Product Code on Create Products screen
    And user enters product name on create products screen
    And user enters product description on create products screen
    And user selects contract Type on Create Products screen
    And user selects Facility Sub Group on Create Products screen
    And user selects Default Product on Create Products screen
    And user selects Security Type on Create Products screen
    And user navigates to Currencies tab on Create Products screen
    And user selects Currency on Create Products screen
    And user navigates to Branches tab on Create Products screen
    And user selects Available For All Branches option
    And user navigates to Collateral Details tab on Create Products screen
    And user deletes all collateral
    And user navigates to Policies tab on Create Products screen
    And user maps repayment policy
#    And user enters Effective From date
        # --- Save / Save & Send for Approval ---
    And user performs "<Action>" on Create Products screen
    Then product should be created successfully

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | SelectedType | Action                  |
      | BillDiscountingType.xlsx | BillDiscountingType | 0   | Bill Discounting | Non-Recourse | Save                    |
      | BillDiscountingType.xlsx | BillDiscountingType | 1   | Bill Discounting | Non-Recourse | Save & Request Approval |
      | BillDiscountingType.xlsx | BillDiscountingType | 2   | Bill Discounting | Recourse     | Save                    |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Recourse     | Save & Request Approval |


  @Positive
    
  Scenario Outline: Bill Discounting Type should be displayed correctly in View mode before approval
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    When user opens the product in View mode
    Then Bill Discounting Type field should be "<BillDiscountingType>" in view mode

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | BillDiscountingType |
      | BillDiscountingType.xlsx | BillDiscountingType | 1   | Bill Discounting | Non-Recourse        |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Recourse            |


  @Positive
    
  Scenario Outline: Bill Discounting Type should remain unchanged when Author sends product back
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    When user performs Send Back action on the product
    Then Maker opens the product in Edit mode
    Then Bill Discounting Type should be "<BillDiscountingType>"

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | BillDiscountingType |
      | BillDiscountingType.xlsx | BillDiscountingType | 1   | Bill Discounting | Non-Recourse        |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Recourse            |

  @Positive
    
  Scenario Outline: Maker should be able to re-send product for approval after Send Back
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    When user clicks on Authorize action for the product
    Then product should be authorized successfully

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | BillDiscountingType |
      | BillDiscountingType.xlsx | BillDiscountingType | 1   | Bill Discounting | Non-Recourse        |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Recourse            |


  @Positive
    @RT
  Scenario Outline: Author approves Bill Discounting product after Send for Approval
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    When user clicks on Authorize action for the product
    Then product should be authorized successfully

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | BillDiscountingType |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Non-Recourse        |
#      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Recourse            |


  @Positive
    @RT
  Scenario Outline: Bill Discounting Type field should be editable in Edit mode after product approval
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    When user opens the product in Edit mode
    Then Bill Discounting Type field should be editable
    And Bill Discounting Type should be "<BillDiscountingType>"


    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | BillDiscountingType |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Recourse            |


  @Positive
    @RT
  Scenario Outline: Updated Bill Discounting Type should be reflected in Edit mode after re-approval
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    When user opens the product in Edit mode
    And user changes Bill Discounting Type to "<NewType>"
    And user performs "Save and Send for Approval" on Edit Products screen
    And user logout from common master
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "BillDiscountUser" and 0
    And user navigates to Product Master
    And user searches product using Product Code from test data
    And Author approves the product
    And user searches product using Product Code from test data
    Then user opens the product in View mode
    And Bill Discounting Type should be "<NewType>"

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | OldType      | NewType      |
      | BillDiscountingType.xlsx | BillDiscountingType | 0   | Bill Discounting | Non-Recourse | Recourse     |
      | BillDiscountingType.xlsx | BillDiscountingType | 2   | Bill Discounting | Recourse     | Non-Recourse |

# handled in above Scenario
#  @Positive
#  Scenario Outline: Updated Bill Discounting Type should be reflected in View mode after re-approval
#    Given user logged in Common Master for Maker transaction
#    And load Products Master data present in "<DataFile>" under "<Sheet>" and <Row>
#    And an approved "<ProductType>" product exists with Bill Discounting Type "<OldType>"
#    And user navigates to Products Master screen
#    And user searches product using Product Code from test data
#    When user opens the product in Edit mode
#    And user changes Bill Discounting Type to "<NewType>"
#    And user performs "Save and Send for Approval" on Edit Products screen
#    And Author approves the product
#    Then user opens the product in View mode
##    And Bill Discounting Type should be "<NewType>"
#
#    Examples:
#      | DataFile | Sheet | Row | ProductType      | OldType      | NewType      |
#      | <file>   | <sh>  | 1   | Bill Discounting | Recourse     | Non-Recourse |
#      | <file>   | <sh>  | 2   | Bill Discounting | Non-Recourse | Recourse     |


  @EdgeCase
    
  Scenario Outline: Cloned product should be created in Draft state and retain Bill Discounting Type
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    When user clones the approved product
    And user searches product using Product Code from test data
    And product status should be "Clone,Saved As Draft" in grid
    When user opens the product in Edit mode
    Then Bill Discounting Type should be "<BillDiscountingType>"

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | BillDiscountingType |
      | BillDiscountingType.xlsx | BillDiscountingType | 1   | Bill Discounting | Recourse            |
      | BillDiscountingType.xlsx | BillDiscountingType | 0   | Bill Discounting | Non-Recourse        |


  @Positive
    
  Scenario Outline: Bill Discounting Type should appear in Scheme Master after product selection
    And user navigate to scheme master
    And user click on create scheme
    When User enters "<ProductCode>" in product code
    Then Bill Discounting Type should be displayed in viewMode

    Examples:
      | ProductCode          |
      | billDisCountingType9 |


  @EdgeCase
    
  Scenario Outline: Updated Bill Discounting Type in Product should reflect in existing Scheme
        # --- Product & Scheme creation ---
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    And user navigate to scheme master for bill discounting
    And user click on create scheme
#    And enter Scheme Code on Create Scheme screen
    And enter Scheme Name on Create Scheme screen
    And enter Scheme Description on Create Scheme screen
    And enter Product Code on Create Scheme screen
    And enter Scheme start date on Create Scheme screen
    And select Default Scheme checkbox on Create Scheme screen
    And enter Minimum Loan Value on Create Scheme screen
    And enter Maximum Loan Value on Create Scheme screen
    And enter LTV value on Create Scheme screen
    And select currency mapping on Create Scheme screen
    And user performs "Save and Send for Approval" on Create Scheme screen
    And user logout from common master
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "BillDiscountUser" and 0
    And user navigate to scheme master for bill discounting
    And And user searches scheme using Scheme Code from test data
    And And user open scheme in view mode
    And user approves the scheme successfully
    And user logout from common master
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Product Master
    And user searches product using Product Code from test data
    And user opens the product in Edit mode
    And user changes Bill Discounting Type to "<NewType>"
    And user performs "Save and Send for Approval" on Edit Products screen
    And user logout from common master
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "BillDiscountUser" and 0
    And user navigates to Product Master
    And user searches product using Product Code from test data
    And Author approves the product
    And user navigate to scheme master for bill discounting
    And And user searches scheme using Scheme Code from test data
    And And user open scheme in view mode
    Then Bill Discounting Type should be "<NewType>" in scheme

    Examples:
      | DataFile                 | Sheet                     | Row | ProductType      | OldType      | NewType  |
      | BillDiscountingType.xlsx | BillDiscountingTypeScheme | 0   | Bill Discounting | Non-Recourse | Recourse |


  @EdgeCase
    
  Scenario Outline: Downloaded upload file should show Bill Discounting Type value of the existing product
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    And user selects the product record checkbox from the grid
    When user clicks on Download Upload Template option
    Then downloaded upload file should contain Bill Discounting Type as "<ExpectedType>"

    Examples:
      | DataFile                 | Sheet       | Row | ProductType      | ExistingType | ExpectedType |
      | BillDiscountingType.xlsx | productType | 0   | Bill Discounting | Non_Recourse | Non_Recourse |


  @Positive
  Scenario Outline: Bill Discounting Type column should be present in downloaded product upload file
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Product Master
#    And user navigates to upload product master screen
    When user clicks on Download Upload Template option
    Then downloaded upload file should contain "<ColumnName>" column

    Examples:
      | ColumnName          |
      | billDiscountingType |


  @Positive
    
  Scenario Outline: Product upload should allow valid Bill Discounting Type
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Product Master
    And user navigates to upload product master screen
    And user upload the file from the upload test data
    Then product should be created successfully though the upload

    Examples:
      | ProductType      | UploadType   |
      | Bill Discounting | Non-Recourse |

  @Negative
    
  Scenario Outline: Product upload should fail for invalid Bill Discounting Type
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Product Master
    And user navigates to upload product master screen
    And user upload the file from the upload test data
    Then upload should fail with "<ErrorMessage>"
    And product should not be created

    Examples:
      | ProductType      | IncorrectValue | ErrorMessage                        |
      | Bill Discounting |                | Bill discounting type is mandatory. |
      | Bill Discounting |                | Bill discounting type is mandatory. |


  @Negative
  Scenario Outline: Validation error when Bill Discounting Type is not selected for Bill Discounting product
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user click on create product button
    When user selects Product Type as "<ProductType>" on Create Products screen
    And user does not selects Bill Discounting Type
    And user enters Product Code on Create Products screen
    And user enters product name on create products screen
    And user enters product description on create products screen
    And user selects contract Type on Create Products screen
    And user selects Facility Sub Group on Create Products screen
    And user selects Default Product on Create Products screen
    And user selects Security Type on Create Products screen
    And user navigates to Currencies tab on Create Products screen
    And user selects Currency on Create Products screen
    And user navigates to Branches tab on Create Products screen
    And user selects Available For All Branches option
    And user navigates to Collateral Details tab on Create Products screen
    And user deletes all collateral
    And user navigates to Policies tab on Create Products screen
    And user maps repayment policy
#    And user enters Effective From date
        # --- Save / Save & Send for Approval ---
    And user performs "<Action>" on Create Products screen
    Then system should display validation message "<ValidationMessage>"
    And product should not be saved

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | Action                  | ValidationMessage       |
      | BillDiscountingType.xlsx | BillDiscountingType | 4   | Bill Discounting | Save                    | This field is required. |
      | BillDiscountingType.xlsx | BillDiscountingType | 4   | Bill Discounting | Save & Request Approval | This field is required. |

  @EdgeCase
  Scenario Outline: Existing Bill Discounting scheme should display Recourse as Bill Discounting Type in read-only mode
    Given user logged in Common Master for Maker transaction
    And an existing "<ProductType>" product already exists in the system
    And a scheme is already created for the product
    And user navigates to Scheme Master screen
    And user searches scheme using Scheme Code
    When user opens the existing scheme in View mode
    Then Bill Discounting Type field should be displayed
    And Bill Discounting Type should be "<BillDiscountingType>"
    And Bill Discounting Type field should be read-only

    Examples:
      | ProductType      | BillDiscountingType |
      | Bill Discounting | Recourse            |

  @EdgeCase
    
  Scenario Outline: Existing Bill Discounting product should have Recourse pre-selected by default
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    And user opens the product in Edit mode
    And Bill Discounting Type field is visible
    And Bill Discounting Type dropdown should have "<DefaultType>" selected by default

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | DefaultType |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Recourse    |

  @EdgeCase
    
  Scenario Outline: Bill Discounting Type field should be hidden when Product Type is changed for existing product
    And user reads data from the excel file "<DataFile>" under sheet "<Sheet>" and row <Row>
    And user navigates to Product Master
    And user searches product using Product Code from test data
    And user opens the product in Edit mode
    And Bill Discounting Type field is visible
    When user changes Product Type to "<NewProductType>"
    Then Bill Discounting Type field should be "hidden"

    Examples:
      | DataFile                 | Sheet               | Row | ProductType      | NewProductType |
      | BillDiscountingType.xlsx | BillDiscountingType | 3   | Bill Discounting | Business Loan  |



