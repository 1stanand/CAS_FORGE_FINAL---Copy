@Epic-API
@AuthoredBy-manish.yadav2
@ReviewedBy-shivam.agarwal
@ImplementedBy-manish.yadav2
@Islamic
@Perishable
@PQMStory

#Story-CAS-202211
Feature: assetRegistration service [CAS_Appl_138] in API Center

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release
  # PQM-1_CAS-202211
  # PMG-2_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17792: validate service <API_Name> should be present in API center
    And user click on CAS API vault
    When user search "<API_Name>" in search bar
    Then "<API_Name>" should be present in API center
    Examples:
      | API_Name          |
      | CAS_Appl_138      |
      | assetRegistration |

  @Release
  # PQM-1_CAS-202211
  # PMG-1_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17793: validate service <API_Name> should be present in Documentation API center
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation of API center
    Then "<API_Name>" should be present in documentation of API center
    Examples:
      | API_Name          |
      | CAS_Appl_138      |
      | assetRegistration |

  @Release
  # PQM-2_CAS-202211
  # PMG-3_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17794: validate downloaded <FileType> file should present as per contract in <APIName>
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<FileType>" for "<APIName>"
    Then "<FileType>" is present as per contract in "<APIName>"
    Examples:
      | FileType                | APIName      |
      | API Documentation PDF   | CAS_Appl_138 |
      | API Documentation Excel | CAS_Appl_138 |

  @Release
  # PQM-3_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17795: validate license status should be present for <API_INFO> in CAS API Vault
    And user click on CAS API vault
    When user search "<API_INFO>" in search bar
    Then license status should be present in CAS API Vault
    Examples:
      | API_INFO                                                   |
      | CAS_Appl_138                                               |
      | assetRegistration                                          |
      | This service will be used to register applicant's vehicle. |

  @Release
  # PQM-4_CAS-202211
  # PMG-6_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17796: validate in <API_Name> Service URL REST should be mentioned
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then URL should have REST mentioned in "<API_Name>"
    Examples:
      | API_Name          |
      | CAS_Appl_138      |
      | assetRegistration |

  @Release
  # PQM-6_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17797: validate <API_Description> for <API_Name> in documentation of API center
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<API_Description>" should be proper as per contract in documentation of API center
    Examples:
      | API_Name     | API_Description                                            |
      | CAS_Appl_138 | This service will be used to register applicant's vehicle. |

  @Release
  # PQM-7_CAS-202211, 8_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17798: Service should be execute successfully
    And user clicks on Documentation tab
    And user opens "<API_Name>" from documentation of API center
    And user click on try now button on API center
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API_Name>"
    Examples:
      | API_Name     |
      | CAS_Appl_138 |

  @Release
  # PQM-5_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17799: validate <Parameter> should be present in request json of <API_Name> in API center
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<Parameter>" should be present in "request" json in API center

    Examples:
      | API_Name     | Parameter                     |
      | CAS_Appl_138 | referenceNumber               |
      | CAS_Appl_138 | timeStamp                     |
      | CAS_Appl_138 | chassisNumber                 |
      | CAS_Appl_138 | fileNumber                    |
      | CAS_Appl_138 | registrationState             |
      | CAS_Appl_138 | transactionType               |
      | CAS_Appl_138 | identification                |
      | CAS_Appl_138 | identificationType            |
      | CAS_Appl_138 | identificationNumber          |
      | CAS_Appl_138 | identificationReferenceNumber |
      | CAS_Appl_138 | dataPushObject                |

  @Release
  # PQM-5_CAS-202211
  #FeatureID-ACAUTOCAS-17372
Scenario Outline: ACAUTOCAS-17800: validate <Parameter> should be present in response json of <API_Name> in API center
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<Parameter>" should be present in "response" json in API center

    Examples:
      | API_Name     | Parameter         |
      | CAS_Appl_138 | referenceNumber   |
      | CAS_Appl_138 | timeStamp         |
      | CAS_Appl_138 | transactionId     |
      | CAS_Appl_138 | statusCode        |
      | CAS_Appl_138 | statusDescription |
      | CAS_Appl_138 | error             |
      | CAS_Appl_138 | errorCode         |
      | CAS_Appl_138 | errorDescription  |
      | CAS_Appl_138 | json              |
