@Epic-FAS_Loans
@AuthoredBy-yugam.sharma
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-

@CommitteeMappingMaster

Feature: Fas Activity Reinitiation screen validation

#  Pre-Requisites---
#  In this feature we will validate all these screen level validation with User who is having ALL_Roles Authority

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens FAS Activity Reinitiation screen

    #Squash:06_CAS-112596
#StoryID:CAS-112596
      #FeatureID - ACAUTOCAS-10853, CAS-112596
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["FAS ACTIVITY REINITIATION"]}
  Scenario Outline: user validates error message in case of <Case>
    When user searches the application which is "<Case>"
    Then "<errorMessage>"  should come for this
    Examples:
      | errorMessage                                                                      |  | Case                                               |  |
      | Application already initiated for WITHDRAWAL                                      |  | already initiated for Withdrawal                   |  |
      | Either Application is not found or it is not a FAS Application.                   |  | not a FAS application                              |  |
      | Application already initiated for ADDITIONAL_LODGEMENT                            |  | already initiated for Additional Lodgement         |  |
      | Application already initiated for SWAP                                            |  | already initiated for Swap                         |  |
      | Application already initiated for ACCOUNT_SCRIP_BLOCKING                          |  | already initiated for Account Scrip Blocking       |  |
      | Application already initiated for ACCOUNT_TRANSACTION_BLOCKING                    |  | already initiated for Account Transaction Blocking |  |
      | Application already initiated for CERTIFICATION_RECTIFICATION                     |  | already initiated for Certification Rectification  |  |
      | Application already initiated for ACCOUNT_MODIFICATION                            |  | already initiated for Account Modification         |  |
      | Application already initiated for CLOSURE                                         |  | already initiated for Closure                      |  |
      | Application already initiated for SHARE_SALE                                      |  | already initiated for Share Sale                   |  |
      | Unable to find NCBlast details for given application to initiate Share Sale stage |  | NCBlast Details are not updated                    |  |
      | Application already initiated for SECURITY_MARKING                                |  | already initiated for Security Marking             |  |


     #Squash:11_CAS-112596
#StoryID:CAS-112596
  #FeatureID - ACAUTOCAS-10853, 11_CAS-112596
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["FAS ACTIVITY REINITIATION"]}
  Scenario Outline: user validates success message of <Stage> initiation
    When user searches the "<ProductType>" application which is available at Sent To Ops stage
    And  selects stage as "<Stage>"
    And  starts workflow
    Then "<successMessage>" should come for this
    Examples:
      | ProductType   | Stage                        | successMessage                                      |
      | <ProductType> | ADDITIONAL_LODGEMENT         | ADDITIONAL_LODGEMENT initiated successfully         |
      | <ProductType> | WITHDRAWAL                   | WITHDRAWAL initiated successfully                   |
      | <ProductType> | SWAP                         | SWAP initiated successfully                         |
      | <ProductType> | ACCOUNT_SCRIP_BLOCKING       | ACCOUNT_SCRIP_BLOCKING initiated successfully       |
      | <ProductType> | ACCOUNT_TRANSACTION_BLOCKING | ACCOUNT_TRANSACTION_BLOCKING initiated successfully |
      | <ProductType> | CERTIFICATION_RECTIFICATION  | CERTIFICATION_RECTIFICATION initiated successfully  |
      | <ProductType> | CLOSURE                      | CLOSURE initiated successfully                      |
      | <ProductType> | ACCOUNT_MODIFICATION         | ACCOUNT_MODIFICATION initiated successfully         |
      | <ProductType> | SHARE_SALE                   | SHARE_SALE initiated successfully                   |
      | <ProductType  | SECURITY_MARKING             | SECURITY_MARKING initiated successfully             |

#Squash:12_CAS-112596
#StoryID:CAS-112596
  #FeatureID - ACAUTOCAS-10853, 12_CAS-112596
  # ${ ProductType : ["FAS"]}
  #${ApplicationStage : ["FAS ACTIVITY REINITIATION"]}
  Scenario Outline: user checks the application is redirected to <Stage>
    When user searches the application which is initiated for "<Stage>" from FAS Activity Reinitiation stage
    Then application is available in "<Stage>" grid.
    Examples:
      | Stage                        |
      | ADDITIONAL_LODGEMENT         |
      | WITHDRAWAL                   |
      | SWAP                         |
      | ACCOUNT_SCRIP_BLOCKING       |
      | ACCOUNT_TRANSACTION_BLOCKING |
      | CERTIFICATION_RECTIFICATION  |
      | CLOSURE                      |
      | ACCOUNT_MODIFICATION         |
      | SHARE_SALE                   |
      | SECURITY_MARKING             |

