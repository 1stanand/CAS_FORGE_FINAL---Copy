@Epic-CPR
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Release

@Islamic

Feature: API for UnHold Service

  Background:
    Given user is on CAS Login Page
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   # ${ProductType:["IPF"]}
   # PMG-2_CAS-201335,3_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15668: Validating <API Name> in API center for <ProductType> application for unHold  service
    And user click on CAS API vault
    When user search "<API Name>" in search bar
    Then "<API Name>" should be present in API center for unHold service
    Examples:
      | API Name       | ProductType   |
      | CAS_Appl_137   | <ProductType> |
      | unHoldService | <ProductType> |

   # ${ProductType:["IPF"]}
   # PMG-1_CAS-201335
   # PQM-1_CAS-201335,4_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15669:<API Name> should be present in API center for <ProductType> application for unHold  service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<API Name>" should be opened
    Examples:
      | API Name       | ProductType   |
      | CAS_Appl_137   | <ProductType> |
      | unHoldService | <ProductType> |

   # ${ProductType:["IPF"]}
   # PMG-4_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15670:<Fields> should be present in <API Name> request details for <ProductType> application for unHold  service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Fields>" should be present in API request details
    Examples:
      | API Name     | ProductType   | Fields            |
      | CAS_Appl_137 | <ProductType> | productProcessor  |
      | CAS_Appl_137 | <ProductType> | applicationNumber |
      | CAS_Appl_137 | <ProductType> | holdStage         |
      | CAS_Appl_137 | <ProductType> | referenceNumber   |

  # ${ProductType:["IPF"]}
  #PMG-4_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15671:Validate required <Fields> should be present in <API Name> request details for <ProductType> application for unHold  service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in API request details
    Examples:
      | API Name     | ProductType   | Fields            | Status   |
      | CAS_Appl_137 | <ProductType> | productProcessor  | required |
      | CAS_Appl_137 | <ProductType> | applicationNumber | required |
      | CAS_Appl_137 | <ProductType> | holdStage         | required |
      | CAS_Appl_137 | <ProductType> | referenceNumber   | required |

  # ${ProductType:["IPF"]}
  #PMG-4_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15672:<Fields> should be present in <API Name> response details for <ProductType> application for unHold  service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in API response details
    Examples:
      | API Name     | ProductType   | Fields          |
      | CAS_Appl_137 | <ProductType> | status          |
      | CAS_Appl_137 | <ProductType> | errorCode       |
      | CAS_Appl_137 | <ProductType> | errorDesc       |
      | CAS_Appl_137 | <ProductType> | referenceNumber |

  # ${ProductType:["IPF"]}
  #PMG-4_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15673:Validate required <Fields> should be present in <API Name> response details for <ProductType> application for unHold  service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in API response details
    Examples:
      | API Name     | ProductType   | Fields          | Status   |
      | CAS_Appl_137 | <ProductType> | status          | required |
      | CAS_Appl_137 | <ProductType> | errorCode       | required |
      | CAS_Appl_137 | <ProductType> | errorDesc       | required |
      | CAS_Appl_137 | <ProductType> | referenceNumber | required |

  # ${ProductType:["IPF"]}
  #PMG-6_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15674: validate service as Rest API for <ProductType> application for unHold service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then URL should have REST mentioned in "<API Name>"
    Examples:
      | API Name     | ProductType   |
      | CAS_Appl_137 | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-7_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15675: Data of <FieldName> present in integration of <ProductType> application for unHold service
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then Data of "<FieldName>" in "<API Name>" present in integration
    Examples:
      | API Name     | ProductType   | FieldName |
      | CAS_Appl_137 | <ProductType> | Request   |
      | CAS_Appl_137 | <ProductType> | Response  |

  # ${ProductType:["IPF"]}
  #PQM-2_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15676:Verify unHold Service <Service> option is visible in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    Then "<Service>" option should be visible from API Portal
    Examples:
      | API Name     | Service                 | ProductType   |
      | CAS_Appl_137 | API Documentation PDF   | <ProductType> |
      | CAS_Appl_137 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-2_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15677:Verify unHold service <Service> in api documentation for <ProductType> application
    And user clicks on Documentation tab
    When user searches "<API Name>" in documentation and opens
    And user click on download "<Service>" for unHold service
    Then "<Service>" is present as per contract from API Portal for unHold service
    Examples:
      | API Name     | Service                 | ProductType   |
      | CAS_Appl_137 | API Documentation PDF   | <ProductType> |
      | CAS_Appl_137 | API Documentation Excel | <ProductType> |

  # ${ProductType:["IPF"]}
  #PQM-3_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15678: API Documentation Tab for <ProductType> application for unHold service
    When user clicks on Documentation tab
    Then "<API Name>" is visible as per contract from API Portal
    Examples:
      | API Name     | ProductType   |
      | CAS_Appl_137 | <ProductType> |

   # ${ProductType:["IPF"]}
   # PQM-5_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15679: <Description> of <Fields> should be present in <APIName> request details for <ProductType> application as per contract
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in share API "<Request>" details
    Examples:
      | Request | APIName      | ProductType   | Fields            | Description                                                                                                                                                                            |
      | request | CAS_Appl_137 | <ProductType> | productProcessor  | This field signifies the module from which the request has been raised. The valid value will be from Dtype:ProductProcessor. The length of the field is 255.                           |
      | request | CAS_Appl_137 | <ProductType> | applicationNumber | This field signifies the system generated Application Number tagged with an application in database. The length of the field is 100.                                                   |
      | request | CAS_Appl_137 | <ProductType> | holdStage         | This field signifies the stage on which application is on hold.The length of the field is 255.                                                                                         |
      | request | CAS_Appl_137 | <ProductType> | referenceNumber   | This field signifies the unique reference number of the request. This number would be generated by FinnOne Neo CAS and shared with third party system. The length of the field is 255. |

   # ${ProductType:["IPF"]}
   # PQM-5_CAS-201335
  #FeatureID-ACAUTOCAS-15334
Scenario Outline: ACAUTOCAS-15680: <Description> of <Fields> should be present in <APIName> response details for <ProductType> application as per contract
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" should be present in share API "<Response>" details
    Examples:
      | Response | APIName      | ProductType   | Fields          | Description                                                                                                                                |
      | response | CAS_Appl_137 | <ProductType> | status          | This field signifies the status of the request that whether the application unHold is a Success or Error. The length of this field is 100. |
      | response | CAS_Appl_137 | <ProductType> | errorCode       | This field signifies the error code in case of failure. The length of the field is 255.                                                    |
      | response | CAS_Appl_137 | <ProductType> | errorDesc       | This field signifies the error message description in case of failure. The length of the field is 255.                                     |
      | response | CAS_Appl_137 | <ProductType> | referenceNumber | This field signifies the same reference number passed in request of the API. The length of the field is 255.                               |

