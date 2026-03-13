@Epic-PF_Bond_Base
@PQMStory
@TechReviewdBy-harshprit.kumar
@Islamic
@ReleaseIslamicM3
@Release
@Bonds
@03AprilFix
# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
Feature:API configuration for Bonds

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #FeatureID-ACAUTOCAS-11329,CAS-191742
  #PQM-13_CAS-191742
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-14577: Validating <API_Name> in API center for <ProductType> application
    And user click on CAS API vault
    When user search "<API_Name>" in search bar
    Then "<API_Name>" should be present in API center
    Examples:
      | API_Name         | ProductType   |
      | CAS_IFIN_BOND_01 | <ProductType> |
      | CAS_IFIN_BOND_02 | <ProductType> |

  #FeatureID-ACAUTOCAS-11329,CAS-191742
  #PQM-13_CAS-191742
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-14578: <API_Name> should be present in API center for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    Then "<API_Name>" should be opened
    Examples:
      | API_Name         | ProductType   |
      | CAS_IFIN_BOND_01 | <ProductType> |
      | CAS_IFIN_BOND_02 | <ProductType> |


  #FeatureID-ACAUTOCAS-11329,CAS-191742
  #PQM-14_CAS-191742,15_CAS-191742
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-14579: <Fields> should be present in <API_Name> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    Then "<Fields>" should be present in API request details
    Examples:
      | API_Name         | ProductType   | Fields                |
      | CAS_IFIN_BOND_01 | <ProductType> | referenceNumber       |
      | CAS_IFIN_BOND_01 | <ProductType> | bankProductName       |
      | CAS_IFIN_BOND_01 | <ProductType> | amount                |
      | CAS_IFIN_BOND_01 | <ProductType> | transactionTimeStamp  |
      | CAS_IFIN_BOND_01 | <ProductType> | applicationId         |
      | CAS_IFIN_BOND_01 | <ProductType> | cifNumber             |
      | CAS_IFIN_BOND_01 | <ProductType> | dataPushObject        |
      | CAS_IFIN_BOND_01 | <ProductType> | bank                  |
      | CAS_IFIN_BOND_02 | <ProductType> | refNumber             |
      | CAS_IFIN_BOND_02 | <ProductType> | transactionDateTime   |
      | CAS_IFIN_BOND_02 | <ProductType> | dealReferenceNumber   |
      | CAS_IFIN_BOND_02 | <ProductType> | amount                |
      | CAS_IFIN_BOND_02 | <ProductType> | customerType          |
      | CAS_IFIN_BOND_02 | <ProductType> | customerFirstName     |
      | CAS_IFIN_BOND_02 | <ProductType> | customerMiddleName    |
      | CAS_IFIN_BOND_02 | <ProductType> | customerLastName      |
      | CAS_IFIN_BOND_02 | <ProductType> | customerFullName      |
      | CAS_IFIN_BOND_02 | <ProductType> | institutionName       |
      | CAS_IFIN_BOND_02 | <ProductType> | customerMobile        |
      | CAS_IFIN_BOND_02 | <ProductType> | customerEmail         |
      | CAS_IFIN_BOND_02 | <ProductType> | customerAccountTitle  |
      | CAS_IFIN_BOND_02 | <ProductType> | customerIBAN          |
      | CAS_IFIN_BOND_02 | <ProductType> | customerAccountNumber |
      | CAS_IFIN_BOND_02 | <ProductType> | bank                  |
      | CAS_IFIN_BOND_02 | <ProductType> | bankBranch            |
      | CAS_IFIN_BOND_02 | <ProductType> | bankProductName       |
      | CAS_IFIN_BOND_02 | <ProductType> | dataPushObject        |
      | CAS_IFIN_BOND_02 | <ProductType> | appId                 |
      | CAS_IFIN_BOND_02 | <ProductType> | cifNumber             |
      | CAS_IFIN_BOND_02 | <ProductType> | hostBankId            |


  #FeatureID-ACAUTOCAS-11329,CAS-191742
  #PQM-14_CAS-191742,15_CAS-191742
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-14580: Validate required <Fields> should be present in <API_Name> request details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in API request details
    Examples:
      | API_Name         | ProductType   | Fields               | Status   |
      | CAS_IFIN_BOND_01 | <ProductType> | referenceNumber      | required |
      | CAS_IFIN_BOND_01 | <ProductType> | bankProductName      | required |
      | CAS_IFIN_BOND_01 | <ProductType> | amount               | required |
      | CAS_IFIN_BOND_01 | <ProductType> | transactionTimeStamp | required |
      | CAS_IFIN_BOND_02 | <ProductType> | refNumber            | required |
      | CAS_IFIN_BOND_02 | <ProductType> | transactionDateTime  | required |
      | CAS_IFIN_BOND_02 | <ProductType> | amount               | required |
      | CAS_IFIN_BOND_02 | <ProductType> | customerType         | required |
      | CAS_IFIN_BOND_02 | <ProductType> | customerMobile       | required |
      | CAS_IFIN_BOND_02 | <ProductType> | customerEmail        | required |
      | CAS_IFIN_BOND_02 | <ProductType> | customerAccountTitle | required |
      | CAS_IFIN_BOND_02 | <ProductType> | bankProductName      | required |


 #FeatureID-ACAUTOCAS-11329,CAS-191742
  #PQM-15_CAS-191742,17_CAS-191742
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-14581: <Fields> should be present in <API_Name> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API response details
    Examples:
      | API_Name         | ProductType   | Fields               |
      | CAS_IFIN_BOND_01 | <ProductType> | referenceNumber      |
      | CAS_IFIN_BOND_01 | <ProductType> | returnCode           |
      | CAS_IFIN_BOND_01 | <ProductType> | returnDescription    |
      | CAS_IFIN_BOND_01 | <ProductType> | transactionTimeStamp |
      | CAS_IFIN_BOND_01 | <ProductType> | responseTimeStamp    |
      | CAS_IFIN_BOND_01 | <ProductType> | dealDetails          |
      | CAS_IFIN_BOND_01 | <ProductType> | dynamicJson          |
      | CAS_IFIN_BOND_02 | <ProductType> | refNumber            |
      | CAS_IFIN_BOND_02 | <ProductType> | returnCode           |
      | CAS_IFIN_BOND_02 | <ProductType> | returnDesc           |
      | CAS_IFIN_BOND_02 | <ProductType> | transTimeStamp       |
      | CAS_IFIN_BOND_02 | <ProductType> | responseTimeStamp    |
      | CAS_IFIN_BOND_02 | <ProductType> | dealDetails          |
      | CAS_IFIN_BOND_02 | <ProductType> | dynamicJson          |
      | CAS_IFIN_BOND_02 | <ProductType> | additionalFields     |
      | CAS_IFIN_BOND_02 | <ProductType> | dataPushObject       |


  #FeatureID-ACAUTOCAS-11329,CAS-191742
  #PQM-14_CAS-191742,15_CAS-191742
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-14582: Validate required <Fields> should be present in <API_Name> response details for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API response details
    Examples:
      | API_Name         | ProductType   | Fields               | Status   |
      | CAS_IFIN_BOND_01 | <ProductType> | referenceNumber      | required |
      | CAS_IFIN_BOND_01 | <ProductType> | returnCode           | required |
      | CAS_IFIN_BOND_01 | <ProductType> | returnDescription    | required |
      | CAS_IFIN_BOND_01 | <ProductType> | transactionTimeStamp | required |
      | CAS_IFIN_BOND_02 | <ProductType> | refNumber            | required |
      | CAS_IFIN_BOND_02 | <ProductType> | returnCode           | required |
      | CAS_IFIN_BOND_02 | <ProductType> | returnDesc           | required |
      | CAS_IFIN_BOND_02 | <ProductType> | transTimeStamp       | required |

  #FeatureID-ACAUTOCAS-11329,CAS-191742
  #PQM-19_CAS-191742,26_CAS-191742
  @AuthoredBy-deep.maurya
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-14583: Hit the <API_Name> via try now feature for <ProductType> application
    And user clicks on Documentation tab
    And user searches "<API_Name>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user update the json of "<API_Name>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API_Name>"
    Examples:
      | API_Name         | ProductType   | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | CAS_IFIN_BOND_01 | <ProductType> | post_approval.xlsx | bondAllocation              | 0                                  |
      | CAS_IFIN_BOND_02 | <ProductType> | post_approval.xlsx | bondAllocation              | 1                                  |

#FeatureID-ACAUTOCAS-11329,CAS-190862
  @AuthoredBy-aniket.tripathi
  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-14584: <Fields> should be present in <API_Name> request details for <ProductType> application for bond cancellation service
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    Then "<Fields>" should be present in API request details
    Examples:
      | API_Name         | ProductType   | Fields                    |
      | CAS_IFIN_BOND_03 | <ProductType> | refNumber                 |
      | CAS_IFIN_BOND_03 | <ProductType> | transTimeStamp            |
      | CAS_IFIN_BOND_03 | <ProductType> | purchaseDealRefNumber     |
      | CAS_IFIN_BOND_03 | <ProductType> | transferDealRefNumber     |
      | CAS_IFIN_BOND_03 | <ProductType> | dealReferenceNoIdentifier |
      | CAS_IFIN_BOND_03 | <ProductType> | applicationId             |
      | CAS_IFIN_BOND_03 | <ProductType> | cifNumber                 |
      | CAS_IFIN_BOND_03 | <ProductType> | dataPushObject            |

#FeatureID-ACAUTOCAS-11329,CAS-190862
  @AuthoredBy-aniket.tripathi
  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-14585: Validate required <Fields> should be present in <API_Name> request details for <ProductType> application for bond cancellation service
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in API request details
    Examples:
      | API_Name         | ProductType   | Fields                    | Status   |
      | CAS_IFIN_BOND_03 | <ProductType> | refNumber                 | required |
      | CAS_IFIN_BOND_03 | <ProductType> | transTimeStamp            | required |
      | CAS_IFIN_BOND_03 | <ProductType> | dealReferenceNoIdentifier | required |

#FeatureID-ACAUTOCAS-11329,CAS-190862
  @AuthoredBy-aniket.tripathi
  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-14586: <Fields> should be present in <API_Name> response details for <ProductType> application for bond cancellation service
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API response details
    Examples:
      | API_Name         | ProductType   | Fields            |
      | CAS_IFIN_BOND_03 | <ProductType> | refNumber         |
      | CAS_IFIN_BOND_03 | <ProductType> | returnCode        |
      | CAS_IFIN_BOND_03 | <ProductType> | returnDescription |
      | CAS_IFIN_BOND_03 | <ProductType> | transTimeStamp    |
      | CAS_IFIN_BOND_03 | <ProductType> | responseTimeStamp |
      | CAS_IFIN_BOND_03 | <ProductType> | dynamicJson       |

#FeatureID-ACAUTOCAS-11329,CAS-190862
  @AuthoredBy-aniket.tripathi
  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-14587: Validate required <Fields> should be present in <API_Name> response details for <ProductType> application for bond cancellation service
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API response details
    Examples:
      | API_Name         | ProductType   | Fields            | Status   |
      | CAS_IFIN_BOND_03 | <ProductType> | refNumber         | required |
      | CAS_IFIN_BOND_03 | <ProductType> | returnCode        | required |
      | CAS_IFIN_BOND_03 | <ProductType> | returnDescription | required |
      | CAS_IFIN_BOND_03 | <ProductType> | transTimeStamp    | required |








































