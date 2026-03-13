@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@ReleaseIslamicM4
@Release

@Islamic
@Metals
Feature:API for Metal Cancellation Service

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  #PQM-4_CAS-195349
  #PMG-1_CAS-195349,2_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15651:Validating <API_NAME> in API center for <ProductType> application for metals
    And user click on CAS API vault
    When user search "<API_NAME>" in search bar
    Then "<API_NAME>" should be present in API center for metals
    Examples:
      | API_NAME                 | ProductType   |
      | CAS_IFIN_Metal_05        | <ProductType> |
      | metalCancellationService | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-3_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15652:<API_NAME> should be present in API center for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    Then "<API_NAME>" should be opened
    Examples:
      | API_NAME          | ProductType   |
      | CAS_IFIN_Metal_05 | <ProductType> |

  # ${ProductType:["IPF"]}
  # PQM-5_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15653:<Fields> should be present in <API_NAME> request details for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    Then "<Fields>" should be present in API request details
    Examples:
      | API_NAME          | ProductType   | Fields         |
      | CAS_IFIN_Metal_05 | <ProductType> | applicationId  |
      | CAS_IFIN_Metal_05 | <ProductType> | hostCifNumber  |
      | CAS_IFIN_Metal_05 | <ProductType> | cifNumber      |
      | CAS_IFIN_Metal_05 | <ProductType> | refNumber      |
      | CAS_IFIN_Metal_05 | <ProductType> | transactionKey |
      | CAS_IFIN_Metal_05 | <ProductType> | transactionNo  |
      | CAS_IFIN_Metal_05 | <ProductType> | dataPushObject |

  # ${ProductType:["IPF"]}
  #PQM-5_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15654:Validate required <Fields> should be present in <API_NAME> request details for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in API request details
    Examples:
      | API_NAME          | ProductType   | Fields         | Status   |
      | CAS_IFIN_Metal_05 | <ProductType> | applicationId  | required |
      | CAS_IFIN_Metal_05 | <ProductType> | cifNumber      | required |
      | CAS_IFIN_Metal_05 | <ProductType> | refNumber      | required |
      | CAS_IFIN_Metal_05 | <ProductType> | transactionKey | required |
      | CAS_IFIN_Metal_05 | <ProductType> | transactionNo  | required |

  # ${ProductType:["IPF"]}
  #PQM-5_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15655:<Fields> should be present in <API_NAME> response details for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API response details
    Examples:
      | API_NAME          | ProductType   | Fields          |
      | CAS_IFIN_Metal_05 | <ProductType> | responseCode    |
      | CAS_IFIN_Metal_05 | <ProductType> | responseMessage |
      | CAS_IFIN_Metal_05 | <ProductType> | refNumber       |
      | CAS_IFIN_Metal_05 | <ProductType> | extendedJson    |

  # ${ProductType:["IPF"]}
  #PQM-5_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15656:Validate required <Fields> should be present in <API_NAME> response details for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API response details
    Examples:
      | API_NAME          | ProductType   | Fields          | Status   |
      | CAS_IFIN_Metal_05 | <ProductType> | responseCode    | required |
      | CAS_IFIN_Metal_05 | <ProductType> | responseMessage | required |
      | CAS_IFIN_Metal_05 | <ProductType> | refNumber       | required |

  #PQM-9_CAS-195349
  # ${ProductType:["IPF"]}
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15657:Hit the <API_Name> via try now feature for <ProductType> application for metals
    And user clicks on Documentation tab
    And user searches "<API_Name>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_MetalAllocation>" and row <PostApproval_MetalAllocation_rowNum>
    And user update the json of "<API_Name>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API_Name>"
    Examples:
      | API_Name          | ProductType   | PostApprovalWB     | PostApproval_MetalAllocation | PostApproval_MetalAllocation_rowNum |
      | CAS_IFIN_Metal_05 | <ProductType> | post_approval.xlsx | metalAllocation              | 0                                   |

  # ${ProductType:["IPF"]}
  #PMG-3_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15658:Verify metal cancellation <Service> in api documentation for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    And user click on download "<Service>" for metals
    Then "<Service>" is present as per contract from API Portal
    Examples:
      | API_NAME          | Service                 | ProductType   |
      | CAS_IFIN_Metal_05 | API Documentation PDF   | <ProductType> |
      | CAS_IFIN_Metal_05 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-2_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15659:Verify metal cancellation <Service> option is visible in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    Then "<Service>" option should be visible from API Portal
    Examples:
      | API_NAME          | Service                 | ProductType   |
      | CAS_IFIN_Metal_05 | API Documentation PDF   | <ProductType> |
      | CAS_IFIN_Metal_05 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-1_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15660: API Documentation Tab for <ProductType> application for metals
    When user clicks on Documentation tab
    Then "<API_NAME>" is visible as per contract from API Portal
    Examples:
      | API_NAME          | ProductType   |
      | CAS_IFIN_Metal_05 | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-7_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15661:Hit the <API_NAME> in postman with blank data in all mandatory field for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_MetalAllocation>" and row <PostApproval_MetalAllocation_rowNum>
    And user hits the postman API for metal cancellation
    Then mock response should get generated for metal cancellation
    Examples:
      | API_NAME          | ProductType   | PostApprovalWB     | PostApproval_MetalAllocation | PostApproval_MetalAllocation_rowNum |
      | CAS_IFIN_Metal_05 | <ProductType> | post_approval.xlsx | metalAllocation              | 1                                   |

  # ${ProductType:["IPF"]}
  #PQM-6_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15662:Hit the <API_NAME> in postman with all data for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_MetalAllocation>" and row <PostApproval_MetalAllocation_rowNum>
    And user hits the postman API for metal cancellation
    Then mock response should get generated for metal cancellation
    Examples:
      | API_NAME          | ProductType   | PostApprovalWB     | PostApproval_MetalAllocation | PostApproval_MetalAllocation_rowNum |
      | CAS_IFIN_Metal_05 | <ProductType> | post_approval.xlsx | metalAllocation              | 0                                   |

  # ${ProductType:["IPF"]}
  # PQM-10_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15663:Hit the <API_NAME> without access_token for <ProductType> application for metals
    And user clicks on Documentation tab
    And user searches "<API_NAME>" in documentation and opens
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_MetalAllocation>" and row <PostApproval_MetalAllocation_rowNum>
    And user update the json of "<API_NAME>"
    When user click on send request button
    Then the "<API_NAME>" service is not get executed
    Examples:
      | API_NAME          | ProductType   | PostApprovalWB     | PostApproval_MetalAllocation | PostApproval_MetalAllocation_rowNum |
      | CAS_IFIN_Metal_05 | <ProductType> | post_approval.xlsx | metalAllocation              | 0                                   |

  # ${ProductType:["IPF"]}
  #PMG-6_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15664: validate service as Rest API for <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    Then URL should have REST mentioned in "<API_NAME>"
    Examples:
      | API_NAME          | ProductType   |
      | CAS_IFIN_Metal_05 | <ProductType> |

  # ${ProductType:["IPF"]}
  #PMG-7_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15665: Data of <FieldName> present in integration of <ProductType> application for metals
    And user clicks on Documentation tab
    When user searches "<API_NAME>" in documentation and opens
    Then Data of "<FieldName>" in "<API_NAME>" present in integration
    Examples:
      | API_NAME          | ProductType   | FieldName |
      | CAS_IFIN_Metal_05 | <ProductType> | Request   |
      | CAS_IFIN_Metal_05 | <ProductType> | Response  |

  # ${ProductType:["IPF"]}
  #PMG-5_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15666:Hit the <API_NAME> with data in Data Push Object for <ProductType> application for metals
    And user clicks on Documentation tab
    And user searches "<API_NAME>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_MetalAllocation>" and row <PostApproval_MetalAllocation_rowNum>
    And user update the json of "<API_NAME>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API_NAME>"
    Examples:
      | API_NAME          | ProductType   | PostApprovalWB     | PostApproval_MetalAllocation | PostApproval_MetalAllocation_rowNum |
      | CAS_IFIN_Metal_05 | <ProductType> | post_approval.xlsx | metalAllocation              | 0                                   |

  # ${ProductType:["IPF"]}
  #PMG-9_CAS-195349
  #FeatureID-ACAUTOCAS-15322
Scenario Outline: ACAUTOCAS-15667:Hit the <API_NAME> without data in <FieldName>
    And user clicks on Documentation tab
    And user searches "<API_NAME>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_MetalAllocation>" and row <PostApproval_MetalAllocation_rowNum>
    And user update the json of "<API_NAME>" excluding "<FieldName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API_NAME>"
    Examples:
      | API_NAME          | FieldName      | PostApprovalWB     | PostApproval_MetalAllocation | PostApproval_MetalAllocation_rowNum |
      | CAS_IFIN_Metal_05 | ApplicationId  | post_approval.xlsx | metalAllocation              | 2                                   |
      | CAS_IFIN_Metal_05 | HostCifNumber  | post_approval.xlsx | metalAllocation              | 3                                   |
      | CAS_IFIN_Metal_05 | CifNumber      | post_approval.xlsx | metalAllocation              | 4                                   |
      | CAS_IFIN_Metal_05 | RefNumber      | post_approval.xlsx | metalAllocation              | 5                                   |
      | CAS_IFIN_Metal_05 | transactionKey | post_approval.xlsx | metalAllocation              | 6                                   |
      | CAS_IFIN_Metal_05 | transactionNo  | post_approval.xlsx | metalAllocation              | 7                                   |
      | CAS_IFIN_Metal_05 | dataPushObject | post_approval.xlsx | metalAllocation              | 8                                   |




