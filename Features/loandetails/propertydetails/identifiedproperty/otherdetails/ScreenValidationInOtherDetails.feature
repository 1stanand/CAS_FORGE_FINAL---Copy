@Epic-Loan_Application_Details
@ReviewedBy-None
@NotImplemented
@Conventional
@Islamic
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@count
Feature:Screen Validation In Other details `

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

    ###GWTType:FieldValidation
   ####exploration
  #FeatureID-ACAUTOCAS-173
  Scenario Outline:Validate fields are displayed under other details in property details at <Stage>
    And application has identified property as a primary collateral
    When user selects the home loan application of "<Stage>" application
    And user opens the property details
    And user opens other details
    Then Fields with type are displayed
      | Field_Name                | Type     |
      | property classification   | lov      |
      | Property Ownership        | lov      |
      | Market Value              | money    |
      | Calculate Value           | button   |
      | Accepted Value (CIC)      | money    |
      | considered value          | dropdown |
      | Revaluation Date          | date     |
      | Reverification Date       | date     |
      | Built up area             | textbox  |
      | Carpet area               | textbox  |
      | property purpose          | dropdown |
      | Age Of Property(In Years) | textbox  |
      | Residual Age of Property  | lov      |
      | Accepted Valuation        | money    |
      | plan type                 | textbox  |
      | plan number               | textbox  |
      | property lot number       | textbox  |
    Examples:
      | Stage                |
      | lead details         |
      | login acceptance     |
      | dde                  |
      | recommendation       |
      | credit approval      |
      | reconsideration      |
      | post approval        |
      | disbursal initiation |
      | disbursal author     |
      | ICD                  |


    #Tooltip Validation
   #${ProductType:["HL","MHL"]}
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline:Validate tooltip for <Field_Name> in other details accordion of property details at lead detail of <ProductType>
    When user creates a new individual application for "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "sourcing_details_home" and row 0
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_details_home" and row 0
    And user fills property details home page
    And user opens the other details accordion
    And user selects the "<Field_Name>"
    Then tooltip for "<Field_Name>" is displayed
      | Field_Name                |
      | property classification   |
      | Property Ownership        |
      | Market Value              |
      | Calculate Value           |
      | Accepted Value (CIC)      |
      | considered value          |
      | Revaluation Date          |
      | Reverification Date       |
      | Built up area             |
      | Carpet area               |
      | property purpose          |
      | Age Of Property(In Years) |
      | Residual Age of Property  |
      | Accepted Valuation        |
      | plan type                 |
      | plan number               |
      | property lot number       |
    Examples:
      | ProductType   |
      | <ProductType> |

