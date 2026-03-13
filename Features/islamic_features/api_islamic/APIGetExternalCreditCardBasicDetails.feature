@Epic-Credit_Card
@PQMStory
@AuthoredBy-manish.yadav2
@ReviewedBy-
@ImplementedBy-manish.yadav2
@Islamic
@Perishable

#Story-CAS-203051
Feature: Revamp of getExternalCreditCardBasicDetails [CAS_Appl_131] service

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release
  # PQM-1_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17743: validate service <API_Name> should be present in API center
    And user click on CAS API vault
    When user search "<API_Name>" in search bar
    Then "<API_Name>" should be present in API center
    Examples:
      | API_Name                          |
      | CAS_Appl_131                      |
      | getExternalCreditCardBasicDetails |

  @Release
  # PQM-1_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17744: validate service <API_Name> should be present in Documentation API center
    And user clicks on Documentation tab
    When user searches "<API_Name>" in documentation of API center
    Then "<API_Name>" should be present in documentation of API center
    Examples:
      | API_Name                          |
      | CAS_Appl_131                      |
      | getExternalCreditCardBasicDetails |

  @Release
  # PQM-2_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17745: validate downloaded <FileType> file should present as per contract in <APIName>
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<FileType>" for "<APIName>"
    Then "<FileType>" is present as per contract in "<APIName>"
    Examples:
      | FileType                | APIName      |
      | API Documentation PDF   | CAS_Appl_131 |
      | API Documentation Excel | CAS_Appl_131 |

  @Release
  # PQM-3_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17746: validate license status should be present for <API_INFO> in CAS API Vault
    And user click on CAS API vault
    When user search "<API_INFO>" in search bar
    Then license status should be present in CAS API Vault
    Examples:
      | API_INFO                                                                                       |
      | CAS_Appl_131                                                                                   |
      | getExternalCreditCardBasicDetails                                                              |
      | This service is used to get credit card basic details on the basis of some request parameters. |

  @Release
  # PQM-4_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17747: validate in <API_Name> Service URL REST should be mentioned
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then URL should have REST mentioned in "<API_Name>"
    Examples:
      | API_Name                          |
      | CAS_Appl_131                      |
      | getExternalCreditCardBasicDetails |

  @Release
  # PQM-5_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17748: validate <API_Description> for <API_Name> in documentation of API center
    And user clicks on Documentation tab
    When user opens "<API_Name>" from documentation of API center
    Then "<API_Description>" should be proper as per contract in documentation of API center
    Examples:
      | API_Name     | API_Description                                                                                |
      | CAS_Appl_131 | This service is used to get credit card basic details on the basis of some request parameters. |

  @Release
  # PQM-6_CAS-203051, 10_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17749: Service should be execute successfully
    And user clicks on Documentation tab
    And user opens "<API_Name>" from documentation of API center
    And user click on try now button on API center
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<API_Name>"
    Examples:
      | API_Name     |
      | CAS_Appl_131 |

  @Release
  # ST-6_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17750: validate <Parameter> should be present in request json of <API_Name> in API center
    And user clicks on Documentation tab
    And user opens "<API_Name>" from documentation of API center
    Then "<Parameter>" should be present in "request" json in API center

    Examples:
      | API_Name     | Parameter    |
      | CAS_Appl_131 | purpose      |
      | CAS_Appl_131 | requestType  |
      | CAS_Appl_131 | customerName |
      | CAS_Appl_131 | customerDob  |


  @Release
  # ST-6_CAS-203051
  #FeatureID-ACAUTOCAS-17199
Scenario Outline: ACAUTOCAS-17751: validate <Parameter> should be present in response json of <API_Name> in API center
    And user clicks on Documentation tab
    And user opens "<API_Name>" from documentation of API center
    Then "<Parameter>" should be present in "response" json in API center

    Examples:
      | API_Name     | Parameter          |
      | CAS_Appl_131 | status             |
      | CAS_Appl_131 | errorMessage       |
      | CAS_Appl_131 | customerName       |
      | CAS_Appl_131 | cardDetailsList    |
      | CAS_Appl_131 | currentBalance     |
      | CAS_Appl_131 | utilizedAmount     |
      | CAS_Appl_131 | lastPaymentDate    |
      | CAS_Appl_131 | lastPaymentAmount  |
      | CAS_Appl_131 | cardExpiryDate     |
      | CAS_Appl_131 | cardHolderName     |
      | CAS_Appl_131 | cardIssueDate      |
      | CAS_Appl_131 | dynamicFormDetails |
