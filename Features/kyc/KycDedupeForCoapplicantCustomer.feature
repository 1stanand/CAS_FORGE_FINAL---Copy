@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-
@TechReviewedBy-
@Reconciled
@ReviewedByDEV
@Conventional
@Islamic

 # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
 # ${ApplicationStage:["KYC"]}

Feature: Kyc Dedupe Details for Coapplicant in <ApplicationStage> Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9553: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    Then Dedupe Match Screen should be displayed for Coapplicant
    Examples:
      | ApplicationStage   | applicantType | ProductType   | key   | Field_Name        |
      | <ApplicationStage> | nonindiv      | <ProductType> | coapp | Application Match |
      | <ApplicationStage> | nonindiv      | <ProductType> | coapp | Customer Match    |


   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9554: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    Then Dedupe Match Screen should be displayed for Coapplicant
    Examples:
      | ApplicationStage   | applicantType | ProductType   | key   | Field_Name        |
      | <ApplicationStage> | indiv         | <ProductType> | coapp | Application Match |
      | <ApplicationStage> | indiv         | <ProductType> | coapp | Customer Match    |


#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9556: Application Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | Dedupe_Field_Name | ApplicationStage   | applicantType | ProductType   | key   |
      | Current Stage     | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group ID          | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group Name        | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Exposure Detail   | <ApplicationStage> | indiv         | <ProductType> | coapp |

     #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9557: Customer Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | Dedupe_Field_Name | ApplicationStage   | applicantType | ProductType   | key   |
      | Current Stage     | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group ID          | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group Name        | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Exposure Detail   | <ApplicationStage> | indiv         | <ProductType> | coapp |


    #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9558: Customer Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | Dedupe_Field_Name | ApplicationStage   | applicantType | ProductType   | key   |
      | Current Stage     | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group ID          | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group Name        | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Exposure Detail   | <ApplicationStage> | indiv         | <ProductType> | coapp |

     #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9559: Application Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen

    Examples:
      | Dedupe_Field_Name | ApplicationStage   | applicantType | ProductType   | key   |
      | Current Stage     | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group ID          | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Group Name        | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Exposure Detail   | <ApplicationStage> | indiv         | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9560: <Field_Name> Dedupe Match Screen open Application Id hyperlink Screen must be displayed for  Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed
    Examples:
      | Field_Name        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Match    | <ApplicationStage> | indiv         | <ProductType> | coapp |
  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9561: <Field_Name> Dedupe Match Screen open Application Id hyperlink Screen must be displayed for  Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed
    Examples:
      | Field_Name        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | nonindiv         | <ProductType> | coapp |
      | Customer Match    | <ApplicationStage> | nonindiv         | <ProductType> | coapp |
  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9562: Application Match field of Dedupe Match Screen with <Action> should work properly for  Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Action       | Field_Name        | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Minimize     | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cross        | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cancel       | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Done         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Expand All   | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Collapse All | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9563: Customer Match field of Dedupe Match Screen with <Action> should work properly for  Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Action       | Field_Name     | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Minimize     | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cross        | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cancel       | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Done         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Expand All   | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Collapse All | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9564: Application Match field of Dedupe Match Screen with <Action> should work properly for  Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Action       | Field_Name        | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Minimize     | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cross        | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cancel       | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Done         | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Expand All   | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Collapse All | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-pallavi.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9565: Customer Match field of Dedupe Match Screen with <Action> should work properly for Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Action       | Field_Name     | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Minimize     | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cross        | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cancel       | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Done         | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Expand All   | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Collapse All | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9566: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Field_Name                 | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Matched Application ID     | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Stage of application       | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Application Status         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Sourcing branch            | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Application present in CAS | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9567: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Field_Name                 | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Matched Application ID     | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Stage of application       | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Application Status         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Sourcing branch            | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Application present in CAS | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9568: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for  Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Field_Name                 | Match_Type        | ApplicationStage | applicantType | ProductType | key   |
      | Matched Application ID     | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Stage of application       | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Application Status         | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Sourcing branch            | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Application present in CAS | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |


  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9569: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for  Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Field_Name                 | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Matched Application ID     | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Stage of application       | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Application Status         | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Sourcing branch            | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Application present in CAS | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9570: Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Action       | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Minimize     | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cross        | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cancel       | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Expand All   | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Collapse All | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9571: Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Coapplicant with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Action       | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Minimize     | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cross        | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Cancel       | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Expand All   | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Collapse All | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9572: Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Action       | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Minimize     | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cross        | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cancel       | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Expand All   | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Collapse All | Application Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |

   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9573: Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for Coapplicant with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Action       | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Maximize     | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Minimize     | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cross        | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Cancel       | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Expand All   | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |
      | Collapse All | Customer Match | <ApplicationStage> | nonindiv      | <ProductType> | coapp |


        #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9581: Pagination of Application Match in Dedupe Match Screen of Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | first | paginate_button previous | disable        | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | first | paginate_button next     | enable         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | next  | paginate_button previous | enable         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | last  | paginate_button first    | enable         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | last  | paginate_button previous | enable         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | last  | paginate_button next     | disable        | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

     #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9582: Pagination of Customer Match in Dedupe Match Screen of Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | first | paginate_button previous | disable        | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | first | paginate_button next     | enable         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | next  | paginate_button previous | enable         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | last  | paginate_button first    | enable         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | last  | paginate_button previous | enable         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | last  | paginate_button next     | disable        | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

     #sort the details in ascending order
   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9577: Application Match sorting in Dedupe Match Screen with ascending order by <Field> column for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field             | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application ID    | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Strength Of Match | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Neo Cust ID       | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Name     | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Unique ID         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Applicant Type    | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

    #sort the details in ascending order
   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9578: Customer Match sorting in Dedupe Match Screen with ascending order by <Field> column for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field             | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Application ID    | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Strength Of Match | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Neo Cust ID       | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Name     | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Unique ID         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Applicant Type    | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

     #sort the details in descending order
#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9579: Application Match sorting in Dedupe Match Screen with descending order by <Field> column for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field             | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application ID    | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Strength Of Match | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Neo Cust ID       | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Name     | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Unique ID         | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Applicant Type    | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9580: Customer Match sorting in Dedupe Match Screen with descending order by <Field> column for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field             | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Application ID    | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Strength Of Match | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Neo Cust ID       | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Name     | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Unique ID         | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Applicant Type    | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9583: Verify result which is displaying in search results is correct for Dedupe Match Screen of Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Match    | <ApplicationStage> | indiv         | <ProductType> | coapp |

#prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9584: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user check results of strength of Match
    Then strength of Match dedupe weightage should be validate correctly
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Match    | <ApplicationStage> | indiv         | <ProductType> | coapp |

 #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9585: Validating strength of Match data in Dedupe Match Screen should be same for Matches found in Strength of Match in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user check results of strength of Match
    Then Match found in Strength of Match should be same as dedupe strength of match
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Match    | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9586: While opening Application Id hyperlink in Dedupe Match Screen the correct details of the application should be visible in view mode for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | Customer Match    | <ApplicationStage> | indiv         | <ProductType> | coapp |

     #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9589: In Application Match By default all application should be ticked to consider for exposure in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    Then by default all application should be ticked to consider for exposure
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |


#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9590: In Customer Match By default all application should be ticked to consider for exposure in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    Then by default all application should be ticked to consider for exposure
    Examples:
      | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9591: In Customer Match System should allow to <action> consider for exposure in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"
    Examples:
      | action | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | tick   | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | untick | Customer Match    | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9592: In Application Match System should allow to <action> consider for exposure in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"
    Examples:
      | action | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | tick   | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |
      | untick | Customer Match    | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9593: In Application Match Once it is linked for exposure after that exposure calculation should happen accordingly in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |


#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9594: In Customer Match Once it is linked for exposure after that exposure calculation should happen accordingly in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9595: In Customer Match the linking should be allowed for every application in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9596: In Application Match the linking should be allowed for every application in Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9597: In Application Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Customer with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type        | ApplicationStage   | applicantType | ProductType   | key   |
      | Application Match | <ApplicationStage> | indiv         | <ProductType> | coapp |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9598: In Customer Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Customer with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "<Match_Type>" No of Dedupe Match hyperlink on kyc check
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type     | ApplicationStage   | applicantType | ProductType   | key   |
      | Customer Match | <ApplicationStage> | indiv         | <ProductType> | coapp |


#Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9587: Matches Records Pages should be displayed on Negative checklist Matches for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "lead details" from application grid
    And user opens applicant information page of "lead details"
    And user views and edit applicant details for "indiv" "coapp" applicant type
    And user clicks on the identification section
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 121
    And user fill identification details
    And user click on check for Duplicates
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    When user click on Negative checklist Matched record
    Then Negative Checklist Matched Records should be displayed
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


#Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9588: Added negative checklist data is master should display in negative checklist Matches for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "lead details" from application grid
    And user opens applicant information page of "lead details"
    And user views and edit applicant details for "indiv" "coapp" applicant type
    And user clicks on the identification section
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 121
    And user fill identification details
    And user click on check for Duplicates
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    Then master data should displayed for negative checklist Matches
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-9576: Show the <NumberOfRows> rows in Application Match of Dedupe Match Screen for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows of "Application Match" "<Display>" in case total enteries are "<More_Less>" than selected number
    @Release
    Examples:
      | NumberOfRows | Display                                 | More_Less | ProductType   | ApplicationStage   |
      | 10           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 25           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 50           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 100          | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
    @NotImplemented
    Examples:
      | NumberOfRows | Display | More_Less | ProductType   | ApplicationStage   |
      | 10           | display | more      | <ProductType> | <ApplicationStage> |
      | 25           | display | more      | <ProductType> | <ApplicationStage> |
      | 50           | display | more      | <ProductType> | <ApplicationStage> |
      | 100          | display | more      | <ProductType> | <ApplicationStage> |


    #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh

  Scenario Outline: ACAUTOCAS-9575: Show the <NumberOfRows> rows in Negative Checklist of Dedupe Match Screen for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "lead details" from application grid
    And user opens applicant information page of "lead details"
    And user views and edit applicant details for "indiv" "coapp" applicant type
    And user clicks on the identification section
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 121
    And user fill identification details
    And user click on check for Duplicates
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    When user selects "<NumberOfRows>" number of rows to show for negative checklist in Dedupe Match Screen
    Then selected <NumberOfRows> rows of "Negative Checklist" "<Display>" in case total enteries are "<More_Less>" than selected number
    @Release
    Examples:
      | NumberOfRows | Display                                 | More_Less | ProductType   | ApplicationStage   |
      | 10           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 25           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 50           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 100          | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
    @NotImplemented
    Examples:
      | NumberOfRows | Display                                 | More_Less | ProductType   | ApplicationStage   |
      | 10           | display                                 | more      | <ProductType> | <ApplicationStage> |
      | 25           | display                                 | more      | <ProductType> | <ApplicationStage> |
      | 50           | display                                 | more      | <ProductType> | <ApplicationStage> |
      | 100          | display                                 | more      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh

  Scenario Outline: ACAUTOCAS-9574: Show the <NumberOfRows> rows in Customer Match of Dedupe Match Screen for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows of "Customer Match" "<Display>" in case total enteries are "<More_Less>" than selected number
    @Release
    Examples:
      | NumberOfRows | Display                                 | More_Less | ProductType   | ApplicationStage   |
      | 10           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 25           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 50           | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
      | 100          | not display only available rows display | less      | <ProductType> | <ApplicationStage> |
    @NotImplemented
    Examples:
      | NumberOfRows | Display | More_Less | ProductType   | ApplicationStage   |
      | 10           | display | more      | <ProductType> | <ApplicationStage> |
      | 25           | display | more      | <ProductType> | <ApplicationStage> |
      | 50           | display | more      | <ProductType> | <ApplicationStage> |
      | 100          | display | more      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9555: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Coapplicant with <ProductType> in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "lead details" from application grid
    And user opens applicant information page of "lead details"
    And user views and edit applicant details for "indiv" "coapp" applicant type
    And user clicks on the identification section
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 121
    And user fill identification details
    And user click on check for Duplicates
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    Then Negative Checklist Matches should be displayed for Coapplicant
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


    #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9552: <No of Matches> for Kyc Dedupe Coapplicant must be same for Applicant Details with <ProductType> Non Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "lead details" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "lead details" from application grid
    And user opens applicant information page of "lead details"
    And user views and edit applicant details for "nonindiv" "coapp" applicant type
    And save dedupe in context
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user check the "<No of Matches>" for Kyc Dedupe Customer
    Then "<No of Matches>" Kyc Dedupe CoApplicant must be same for Applicant Details
    Examples:
      | No of Matches      | ProductType   | ApplicationStage   |
      | Application Match  | <ProductType> | <ApplicationStage> |
      | Customer Match     | <ProductType> | <ApplicationStage> |
      | Negative Checklist | <ProductType> | <ApplicationStage> |


#FeatureID-ACAUTOCAS-808
  @ImplementedBy-richa.singh
  @Release
    
  Scenario Outline: ACAUTOCAS-9551: <No of Matches> for Kyc Dedupe Coapplicant must be same for Applicant Details with <ProductType> Individual in <ApplicationStage> Stage
    And user creates an dedupe application of "<ProductType>" product type as "indiv" applicant at "lead details" for "" with "coapp" from web service
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "lead details" from application grid
    And user opens applicant information page of "lead details"
    And user views and edit applicant details for "indiv" "coapp" applicant type
    And save dedupe in context
    And user moves application from "lead details" stage to application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" stage without opening it
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user Re-initiate Applicant Information with rerun
    When user check the "<No of Matches>" for Kyc Dedupe Customer
    Then "<No of Matches>" Kyc Dedupe CoApplicant must be same for Applicant Details
    Examples:
      | No of Matches      | ProductType   | ApplicationStage   |
      | Application Match  | <ProductType> | <ApplicationStage> |
      | Customer Match     | <ProductType> | <ApplicationStage> |
      | Negative Checklist | <ProductType> | <ApplicationStage> |
