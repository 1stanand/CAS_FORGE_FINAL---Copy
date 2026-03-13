@Epic-API
@AuthoredBy-manish.yadav2
@ReviewedBy-shivam.agarwal
@ImplementedBy-manish.yadav2
@Islamic
@Perishable
@PQMStory

#Story-CAS-202211
Feature: assetVerification service [CAS_Appl_139] in API Center

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release
  # PQM-14_CAS-202211
  # PMG-2_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17801: validate service <API_Name> should be present in API center
    And user click on CAS API vault
    When user search "<API_Name>" in search bar
    Then "<API_Name>" should be present in API center
    Examples:
      | API_Name          |
      | CAS_Appl_139      |
      | assetVerification |

  @Release
  # PQM-14_CAS-202211
  # PMG-1_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17802: validate service <API_Name> should be present in Documentation API center
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation of API center
    Then "<API_Name>" should be present in documentation of API center
    Examples:
      | API_Name          |
      | CAS_Appl_139      |
      | assetVerification |

  @Release
  # PQM-15_CAS-202211
  # PMG-3_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17803: validate downloaded <FileType> file should present as per contract in <APIName>
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<FileType>" for "<APIName>"
    Then "<FileType>" is present as per contract in "<APIName>"
    Examples:
      | FileType                | APIName      |
      | API Documentation PDF   | CAS_Appl_139 |
      | API Documentation Excel | CAS_Appl_139 |

  @Release
  # PQM-16_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17804: validate license status should be present for <API_INFO> in CAS API Vault
    And user click on CAS API vault
    When user search "<API_INFO>" in search bar
    Then license status should be present in CAS API Vault
    Examples:
      | API_INFO                                                                        |
      | CAS_Appl_139                                                                    |
      | assetVerification                                                               |
      | This service will be used to verify the already registered applicant's vehicle. |

  @Release
  # PQM-17_CAS-202211
  # PMG-6_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17805: validate in <API_Name> Service URL REST should be mentioned
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then URL should have REST mentioned in "<API_Name>"
    Examples:
      | API_Name          |
      | CAS_Appl_139      |
      | assetVerification |

  @Release
  # PQM-19_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17806: validate <API_Description> for <API_Name> in documentation of API center
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<API_Description>" should be proper as per contract in documentation of API center
    Examples:
      | API_Name     | API_Description                                                                 |
      | CAS_Appl_139 | This service will be used to verify the already registered applicant's vehicle. |

  @Release
  # PQM-20_CAS-202211, 21_CAS-202211, 23_CAS-202211, 26_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17807: Service should be execute successfully
    And user clicks on Documentation tab
    And user opens "<API_Name>" from documentation of API center
    And user click on try now button on API center
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API_Name>"
    Examples:
      | API_Name     |
      | CAS_Appl_139 |

  @Release
  # PQM-18_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17808: validate <Parameter> should be present in request json of <API_Name> in API center
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<Parameter>" should be present in "request" json in API center

    Examples:
      | API_Name     | Parameter         |
      | CAS_Appl_139 | referenceNumber   |
      | CAS_Appl_139 | timeStamp         |
      | CAS_Appl_139 | chassisNumber     |
      | CAS_Appl_139 | applicationNumber |
      | CAS_Appl_139 | dataPushObject    |

  @Release
  # PQM-18_CAS-202211
  #FeatureID-ACAUTOCAS-17372
  Scenario Outline: ACAUTOCAS-17809: validate <Parameter> should be present in response json of <API_Name> in API center
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<Parameter>" should be present in "response" json in API center

    Examples:
      | API_Name     | Parameter                                    |
      | CAS_Appl_139 | mortgageTransaction                          |
      | CAS_Appl_139 | transactionId                                |
      | CAS_Appl_139 | mortgageId                                   |
      | CAS_Appl_139 | mortgageReferenceNumber                      |
      | CAS_Appl_139 | mortgageCompanyCode                          |
      | CAS_Appl_139 | mortgageCompanyName                          |
      | CAS_Appl_139 | currentOwnerId                               |
      | CAS_Appl_139 | fileNumber                                   |
      | CAS_Appl_139 | identificationNumber                         |
      | CAS_Appl_139 | chassisNumber                                |
      | CAS_Appl_139 | mortgageTransactionTypeCode                  |
      | CAS_Appl_139 | mortgageTransactionTypeVernacularDescription |
      | CAS_Appl_139 | mortgageTransactionTypeEnglishDescription    |
      | CAS_Appl_139 | statusCode                                   |
      | CAS_Appl_139 | statusVernacularDescription                  |
      | CAS_Appl_139 | statusEnglishDescription                     |
      | CAS_Appl_139 | remarks                                      |
      | CAS_Appl_139 | referenceNumber                              |
      | CAS_Appl_139 | timeStamp                                    |
      | CAS_Appl_139 | error                                        |
      | CAS_Appl_139 | errorCode                                    |
      | CAS_Appl_139 | errorDescription                             |
      | CAS_Appl_139 | json                                         |
