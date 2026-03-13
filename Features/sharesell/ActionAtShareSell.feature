@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-deep.maurya
@TechReviewedBy-
@ImplementedBy-deep.maurya
@ReleaseIslamicM3
@Release
@ReleaseIslamic
@Islamic
@Shares

@Test01Dec
# ${ProductType:["IPF"]}
# ${ApplicationStage:["Share Sell"]}
Feature:Action at Share Sell Stage
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user picks an application of "IPF" product type as "indiv" applicant at stage "reconsideration" for category "shares" with key "isshare sell"
    And user moves an application from "Reconsideration" Stage to "Share Sell" Stage

#FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14980: User click on Is Share Released check box at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user click on Is Share Released check box
    Then Release button should be disabled
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  @Perishable
  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14981: Releasing executed share at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    When user click on Release button
    Then Share should be released successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14982: Saving details at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user clicks on Document Tab on Share Sell Stage
    And user selects post-approval documents are visible in the document tab on share sell
    And user add the documents on share sell
    And user clicks on Share Sell Tab
    When user click on save button on share sell
    Then Details should be saved successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14983: Raise query at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user is on Share Sell tab
    And User clicks on more Actions button
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user click on raise query on share sell
    When user raises a query
    Then user should be able to raise Query for selected application
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |

   #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14984: Sorting by <FieldName> at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user is on Investor Details grid
    When user sort the Investor grid by "<FieldName>" in "<OrderType>" order
    Then Investor grid sorted successfully in "<OrderType>" order
    Examples:
      | ProductType   | ApplicationStage   | FieldName    | OrderType  |
      | <ProductType> | <ApplicationStage> | Unique ID    | ascending  |
      | <ProductType> | <ApplicationStage> | Unique ID    | descending |
      | <ProductType> | <ApplicationStage> | Company Name | ascending  |
      | <ProductType> | <ApplicationStage> | Company Name | descending |


  @Perishable
  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14985: Validate changing tab without saving Share Sell details with Is Share Release flag checked at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user is on Share Sell tab
    When user fills dynamic form details on Share Sell
    And user click on Is Share Released check box
    And user clicks on Document Tab on Share Sell Stage
    When user click on OK button
    Then Flag will get unchecked on Share Sell stage
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |

  @Perishable
  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14986: Validate performing another action on Share Sell tab  with Is Share Release flag checked at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user is on Share Sell tab
    When user fills dynamic form details on Share Sell
    And user click on Is Share Released check box
    When user opens investor details model window
    Then Flag will not get unchecked on Share Sell stage
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |

  @Perishable
  #FeatureID-ACAUTOCAS-11317,CAS-187621
  Scenario Outline: ACAUTOCAS-14987: Validate clicking cancel with Is Share Release flag checked at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<ShareSellWB>" under sheet "<ShareSell_home>" and row <ShareSell_home_rowNum>
    And user is on Share Sell tab
    When user fills dynamic form details on Share Sell
    And user click on Is Share Released check box
    And user click on cancel button on Share Sell
    When user click on OK button
    Then Flag will get unchecked on Share Sell stage
    Examples:
      | ProductType   | ApplicationStage   | ShareSellWB     | ShareSell_home | ShareSell_home_rowNum |
      | <ProductType> | <ApplicationStage> | share_sell.xlsx | share_sell     | 0                     |

   #FeatureID-ACAUTOCAS-11317,CAS-187621
  @Perishable
  Scenario Outline: ACAUTOCAS-14988: Cancel the application at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And User clicks on more Actions button
    And user clicks on cancel application on Share Sell
    When user fills mandatory fields on cancel application
    And user navigates to cancelled application
    Then application is cancelled successfully on Share Sell
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


































