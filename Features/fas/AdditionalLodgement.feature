@Epic-FAS_Loans
@AuthoredBy-yugam.sharma
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@AdditionalLodgement

Feature: Additional Lodgement screen validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

#Squash:03_CAS-119534
#StoryID:CAS-119534
   #FeatureID - ACAUTOCAS-10854, CAS-119534
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ADDITIONAL LODGEMENT"]}
  Scenario Outline: Verify fields are visible on <ApplicationStage> in <ProductType>
    And user opens "<ProductType>" application at "<ApplicationStage>"
    When user opens stage decision tab
    Then user should be able to see below fields
      | FieldName             |
      | Application ID        |
      | FAS AccountType       |
      | Customer Name         |
      | Borrower Category     |
      | FAS  Category         |
      | FAS Constitution Type |
      | Neo Cust ID           |
      | Identification No     |
      | Phone Number          |
      | Stage                 |
      | Product Type          |
      | Product Name          |
      | Sourcing Date         |
      | Sourcing Channel      |
      | Branch                |
      | Credit Officer        |
      | Image Based Processing|
      | Product Processor     |
      | Loan Amount           |
      | Sanctioned Limit      |
      | Updated On            |
      | Updated By            |
      | Copy                  |
      | Export                |
      | Load Search           |
      | Save Search           |
      | Clear Filter          |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


  #Squash:03_CAS-119534
#StoryID:CAS-119534
   #FeatureID - ACAUTOCAS-10854, CAS-119534
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["ADDITIONAL LODGEMENT"]}
  Scenario Outline: User views field values on <ApplicationStage> in <ProductType>
    When <ApplicationStage> grid is visible
    Then Then <var>Values under this <field> should be visible in view
    Examples:
      | ApplicationStage   | ProductType   | var                          | field                  |
      | <ApplicationStage> | <ProductType> | Application ID               | Application ID         |
      | <ApplicationStage> | <ProductType> | FAS AccountType Value        | FAS AccountType        |
      | <ApplicationStage> | <ProductType> | Customer Name                | Customer Name          |
      | <ApplicationStage> | <ProductType> | Borrower Category Value      | Borrower Category      |
      | <ApplicationStage> | <ProductType> | FAS  Category Value          | FAS  Category          |
      | <ApplicationStage> | <ProductType> | FAS Constitution Type Value  | FAS Constitution Type  |
      | <ApplicationStage> | <ProductType> | Neo Cust ID                  | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> | Identification Number        | Identification No      |
      | <ApplicationStage> | <ProductType> | Phone Number                 | Phone Number           |
      | <ApplicationStage> | <ProductType> | Stage Name                   | Stage                  |
      | <ApplicationStage> | <ProductType> | Product Type Name            | Product Type           |
      | <ApplicationStage> | <ProductType> | Product Name                 | Product Name           |
      | <ApplicationStage> | <ProductType> | Sourcing Date                | Sourcing Date          |
      | <ApplicationStage> | <ProductType> | Sourcing Channel Value       | Sourcing Channel       |
      | <ApplicationStage> | <ProductType> | Branch Name                  | Branch                 |
      | <ApplicationStage> | <ProductType> | Credit Officer Name          | Credit Officer         |
      | <ApplicationStage> | <ProductType> | Image Based Processing Value | Image Based Processing |
      | <ApplicationStage> | <ProductType> | Product Processor Value      | Product Processor      |
      | <ApplicationStage> | <ProductType> | Loan Amount                  | Loan Amount            |
      | <ApplicationStage> | <ProductType> | Sanctioned Limit Amount      | Sanctioned Limit       |
      | <ApplicationStage> | <ProductType> | Updated On Date              | Updated On             |
      | <ApplicationStage  | <ProductType  | Updated By Name              | Updated By             |


