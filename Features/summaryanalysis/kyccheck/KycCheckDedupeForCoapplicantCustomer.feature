@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-
@TechReviewedBy-
@Release3
@ReviewedByDEV

Feature: Kyc Check Dedupe Details for Coapplicant in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10178: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Coapplicant with <ProductType> Non Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    Then Dedupe Match Screen should be displayed for Coapplicant
    Examples:
      | Field_Name        | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | HL          | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | Customer Match    | HL          | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | Application Match | PF          | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | Customer Match    | PF          | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | Application Match | MAL         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | Customer Match    | MAL         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10179: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Coapplicant with <ProductType> Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    Then Dedupe Match Screen should be displayed for Coapplicant
    Examples:
      | Field_Name        | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | HL          | indiv         | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | Customer Match    | HL          | indiv         | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | Application Match | PF          | indiv         | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | Customer Match    | PF          | indiv         | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | Application Match | MAL         | indiv         | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | Customer Match    | MAL         | indiv         | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10183: When Customer Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Coapplicant with <ProductType> Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | indiv         | DDE              |          |     | Current Stage     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | indiv         | DDE              |          |     | Group ID          | sourcing_details.xlsx | home                 | 268                         |
      | HL          | indiv         | DDE              |          |     | Group Name        | sourcing_details.xlsx | home                 | 268                         |
      | HL          | indiv         | DDE              |          |     | Exposure Detail   | sourcing_details.xlsx | home                 | 268                         |
      | PF          | indiv         | DDE              |          |     | Current Stage     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | indiv         | DDE              |          |     | Group ID          | sourcing_details.xlsx | home                 | 269                         |
      | PF          | indiv         | DDE              |          |     | Group Name        | sourcing_details.xlsx | home                 | 269                         |
      | PF          | indiv         | DDE              |          |     | Exposure Detail   | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | indiv         | DDE              |          |     | Current Stage     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | indiv         | DDE              |          |     | Group ID          | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | indiv         | DDE              |          |     | Group Name        | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | indiv         | DDE              |          |     | Exposure Detail   | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10184: When Application Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Coapplicant with <ProductType> Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | indiv         | DDE              |          |     | Current Stage     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | indiv         | DDE              |          |     | Group ID          | sourcing_details.xlsx | home                 | 268                         |
      | HL          | indiv         | DDE              |          |     | Group Name        | sourcing_details.xlsx | home                 | 268                         |
      | HL          | indiv         | DDE              |          |     | Exposure Detail   | sourcing_details.xlsx | home                 | 268                         |
      | PF          | indiv         | DDE              |          |     | Current Stage     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | indiv         | DDE              |          |     | Group ID          | sourcing_details.xlsx | home                 | 269                         |
      | PF          | indiv         | DDE              |          |     | Group Name        | sourcing_details.xlsx | home                 | 269                         |
      | PF          | indiv         | DDE              |          |     | Exposure Detail   | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | indiv         | DDE              |          |     | Current Stage     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | indiv         | DDE              |          |     | Group ID          | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | indiv         | DDE              |          |     | Group Name        | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | indiv         | DDE              |          |     | Exposure Detail   | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  Scenario Outline: ACAUTOCAS-10185: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Coapplicant with <ProductType> Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed
    Examples:
      | Field_Name        | ProductType | ApplicantType | ApplicationStage | Category | Key | Screen                                          | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | HL          | indiv         | DDE              |          |     | KYC Internal Dedupe Matched Application Details | sourcing_details.xlsx | home                 | 268                         |
      | Customer Match    | HL          | indiv         | DDE              |          |     | KYC Internal Dedupe Matched Application Details | sourcing_details.xlsx | home                 | 268                         |
      | Application Match | PF          | indiv         | DDE              |          |     | KYC Internal Dedupe Matched Application Details | sourcing_details.xlsx | home                 | 269                         |
      | Customer Match    | PF          | indiv         | DDE              |          |     | KYC Internal Dedupe Matched Application Details | sourcing_details.xlsx | home                 | 269                         |
      | Application Match | MAL         | indiv         | DDE              |          |     | KYC Internal Dedupe Matched Application Details | sourcing_details.xlsx | home                 | 270                         |
      | Customer Match    | MAL         | indiv         | DDE              |          |     | KYC Internal Dedupe Matched Application Details | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10189: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Coapplicant with <ProductType> Non Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | ProductType | Action       | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Done         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | PF          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Done         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Done         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10190: When Customer Match field of Dedupe Match Screen with <Action> should work properly for Coapplicant with <ProductType> Non Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | ProductType | Action       | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Done         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | PF          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Done         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Done         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10193: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for  Coapplicant with <ProductType> Non Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | ProductType | Field_Name                 | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | Matched Application ID     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Stage of application       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Application Status         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Sourcing branch            | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Application present in CAS | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | PF          | Matched Application ID     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Stage of application       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Application Status         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Sourcing branch            | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Application present in CAS | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | Matched Application ID     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Stage of application       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Application Status         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Sourcing branch            | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Application present in CAS | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10194: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for  Coapplicant with <ProductType> Non Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | ProductType | Field_Name                 | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | Matched Application ID     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Stage of application       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Application Status         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Sourcing branch            | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Application present in CAS | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | PF          | Matched Application ID     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Stage of application       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Application Status         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Sourcing branch            | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Application present in CAS | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | Matched Application ID     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Stage of application       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Application Status         | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Sourcing branch            | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Application present in CAS | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10197: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Coapplicant with <ProductType> Non Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    And user on Dedupe Match Screen open Application Id hyperlink
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | ProductType | Action       | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | PF          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10198: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for Coapplicant with <ProductType> Non Individual in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    And user on Dedupe Match Screen open Application Id hyperlink
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | ProductType | Action       | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | HL          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | HL          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 268                         |
      | PF          | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | PF          | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 269                         |
      | MAL         | Maximize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Minimize     | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cross        | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Cancel       | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Expand All   | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |
      | MAL         | Collapse All | nonIndiv      | DDE              |          |     | sourcing_details.xlsx | home                 | 270                         |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10201: Show the <NumberOfRows> rows in Application Match of Dedupe Match Screen for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | 10           | display                                 | more      | <ProductType> | indiv         | DDE              |          |     |
      | 25           | display                                 | more      | <ProductType> | indiv         | DDE              |          |     |
      | 50           | display                                 | more      | <ProductType> | indiv         | DDE              |          |     |
      | 100          | display                                 | more      | <ProductType> | indiv         | DDE              |          |     |
      | 10           | not display only available rows display | less      | <ProductType> | indiv         | DDE              |          |     |
      | 25           | not display only available rows display | less      | <ProductType> | indiv         | DDE              |          |     |
      | 50           | not display only available rows display | less      | <ProductType> | indiv         | DDE              |          |     |
      | 100          | not display only available rows display | less      | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #sort the details in ascending order
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10203: Customer Match sorting in Dedupe Match Screen with ascending order by <Field> column for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field                 | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | Application ID        | <ProductType> | indiv         | DDE              |          |     |
      | Strength Of Match     | <ProductType> | indiv         | DDE              |          |     |
      | Neo Cust ID           | <ProductType> | indiv         | DDE              |          |     |
      | Customer Name         | <ProductType> | indiv         | DDE              |          |     |
      | Channel, Channel Name | <ProductType> | indiv         | DDE              |          |     |
      | Dealer/DSA/RM Name    | <ProductType> | indiv         | DDE              |          |     |
      | Application Status    | <ProductType> | indiv         | DDE              |          |     |
      | Unique ID             | <ProductType> | indiv         | DDE              |          |     |
      | Applicant Type        | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #sort the details in descending order
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10204: Application Match sorting in Dedupe Match Screen with descending order by <Field> column for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field                 | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | Application ID        | <ProductType> | indiv         | DDE              |          |     |
      | Strength Of Match     | <ProductType> | indiv         | DDE              |          |     |
      | Neo Cust ID           | <ProductType> | indiv         | DDE              |          |     |
      | Customer Name         | <ProductType> | indiv         | DDE              |          |     |
      | Channel, Channel Name | <ProductType> | indiv         | DDE              |          |     |
      | Dealer/DSA/RM Name    | <ProductType> | indiv         | DDE              |          |     |
      | Application Status    | <ProductType> | indiv         | DDE              |          |     |
      | Unique ID             | <ProductType> | indiv         | DDE              |          |     |
      | Applicant Type        | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10205: Customer Match sorting in Dedupe Match Screen with descending order by <Field> column for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field                 | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | Application ID        | <ProductType> | indiv         | DDE              |          |     |
      | Strength Of Match     | <ProductType> | indiv         | DDE              |          |     |
      | Neo Cust ID           | <ProductType> | indiv         | DDE              |          |     |
      | Customer Name         | <ProductType> | indiv         | DDE              |          |     |
      | Channel, Channel Name | <ProductType> | indiv         | DDE              |          |     |
      | Dealer/DSA/RM Name    | <ProductType> | indiv         | DDE              |          |     |
      | Application Status    | <ProductType> | indiv         | DDE              |          |     |
      | Unique ID             | <ProductType> | indiv         | DDE              |          |     |
      | Applicant Type        | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10211: While opening Application Id hyperlink in Dedupe Match Screen the correct details of the application should be visible in view mode for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then correct details of the application should be visible in view mode
    Examples:
      | Field_Name        | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | Application Match | <ProductType> | indiv         | DDE              |          |     |
      | Customer Match    | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline:ACAUTOCAS-10218: In Application Match Once it is linked for exposure after that exposure calculation should happen accordingly in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10180: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    When user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    Then Negative Checklist Matches should be displayed for Coapplicant
    Examples:
      | ProductType   | ApplicantType | ApplicationStage | Category | Key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | indiv         | DDE              |          |     | personal_information.xlsx | identification              | 116                                |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10207: Pagination of Customer Match in Dedupe Match Screen of Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add "coapplicant" at "DDE" stage
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Co-Applicant"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Match_Type     | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | first | paginate_button previous | disable        | Customer Match | <ProductType> | indiv         | DDE              |          |     |
      | first | paginate_button next     | enable         | Customer Match | <ProductType> | indiv         | DDE              |          |     |
      | next  | paginate_button previous | enable         | Customer Match | <ProductType> | indiv         | DDE              |          |     |
      | last  | paginate_button first    | enable         | Customer Match | <ProductType> | indiv         | DDE              |          |     |
      | last  | paginate_button previous | enable         | Customer Match | <ProductType> | indiv         | DDE              |          |     |
      | last  | paginate_button next     | disable        | Customer Match | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline:ACAUTOCAS-10212: Matches Records Pages should be displayed on Negative checklist Matches for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    When user click on Negative checklist Matched record
    Then Negative Checklist Matched Records should be displayed
    Examples:
      | ProductType   | ApplicantType | ApplicationStage | Category | Key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | indiv         | DDE              |          |     | personal_information.xlsx | identification              | 116                                |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline:ACAUTOCAS-10213: Added negative checklist data is master should display in negative checklist Matches for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    When user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    Then master data should displayed for negative checklist Matches
    Examples:
      | ProductType   | ApplicantType | ApplicationStage | Category | Key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ProductType> | indiv         | DDE              |          |     | personal_information.xlsx | identification              | 116                                |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline:ACAUTOCAS-10214: In Application Match By default all application should be ticked to consider for exposure in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    When user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    Then by default all application should be ticked to consider for exposure
    Examples:
      | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10215: In Customer Match By default all application should be ticked to consider for exposure in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    When user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    Then by default all application should be ticked to consider for exposure
    Examples:
      | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | <ProductType> | indiv         | DDE              |          |     |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  Scenario Outline: ACAUTOCAS-10216: In Customer Match System should allow to <action> consider for exposure in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    When user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    Then System should allow to "<action>" consider for exposure for "Customer Match"
    Examples:
      | action | ProductType   | ApplicantType | ApplicationStage | Category | Key |
      | tick   | <ProductType> | indiv         | DDE              |          |     |
      | untick | <ProductType> | indiv         | DDE              |          |     |


    #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10181: When Application Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | Loan_Type     | Var_Stage    | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | dde_indiv_hl | Current Stage     | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | dde_indiv_hl | Group ID          | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | dde_indiv_hl | Group Name        | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | dde_indiv_hl | Exposure Detail   | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | dde_indiv_pl | Current Stage     | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | dde_indiv_pl | Group ID          | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | dde_indiv_pl | Group Name        | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | dde_indiv_pl | Exposure Detail   | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | dde_indiv_al | Current Stage     | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | dde_indiv_al | Group ID          | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | dde_indiv_al | Group Name        | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | dde_indiv_al | Exposure Detail   | sourcing_details.xlsx | home                 | 270                         |

  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10182: When Customer Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | Loan_Type     | Var_Stage    | Dedupe_Field_Name | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | dde_indiv_hl | Current Stage     | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | dde_indiv_hl | Group ID          | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | dde_indiv_hl | Group Name        | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | dde_indiv_hl | Exposure Detail   | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | dde_indiv_pl | Current Stage     | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | dde_indiv_pl | Group ID          | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | dde_indiv_pl | Group Name        | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | dde_indiv_pl | Exposure Detail   | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | dde_indiv_al | Current Stage     | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | dde_indiv_al | Group ID          | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | dde_indiv_al | Group Name        | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | dde_indiv_al | Exposure Detail   | sourcing_details.xlsx | home                 | 270                         |

  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10186: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Coapplicant with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed
    Examples:
      | Field_Name        | Var_Stage       | Screen                                          | Loan_Type     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | dde_nonindiv_hl | KYC Internal Dedupe Matched Application Details | Home Loan     | sourcing_details.xlsx | home                 | 268                         |
      | Customer Match    | dde_nonindiv_hl | KYC Internal Dedupe Matched Application Details | Home Loan     | sourcing_details.xlsx | home                 | 268                         |
      | Application Match | dde_nonindiv_pl | KYC Internal Dedupe Matched Application Details | Personal Loan | sourcing_details.xlsx | home                 | 269                         |
      | Customer Match    | dde_nonindiv_pl | KYC Internal Dedupe Matched Application Details | Personal Loan | sourcing_details.xlsx | home                 | 269                         |
      | Application Match | dde_nonindiv_al | KYC Internal Dedupe Matched Application Details | Auto Loan     | sourcing_details.xlsx | home                 | 270                         |
      | Customer Match    | dde_nonindiv_al | KYC Internal Dedupe Matched Application Details | Auto Loan     | sourcing_details.xlsx | home                 | 270                         |

 #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10187: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    And user on Dedupe Match Screen open Application Id hyperlink
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type     | Action       | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Minimize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cross        | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cancel       | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Expand All   | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Collapse All | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | Maximize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Minimize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cross        | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cancel       | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Expand All   | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Collapse All | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | Maximize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Minimize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cross        | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cancel       | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Expand All   | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Collapse All | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |

     #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10188: When Customer Match field of Dedupe Match Screen with <Action> should work properly for  Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    And user on Dedupe Match Screen open Application Id hyperlink
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type     | Action       | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Minimize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cross        | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cancel       | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Expand All   | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Collapse All | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | Maximize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Minimize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cross        | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cancel       | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Expand All   | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Collapse All | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | Maximize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Minimize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cross        | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cancel       | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Expand All   | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Collapse All | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |

    #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10191: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Loan_Type     | Field_Name                 | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Matched Application ID     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Stage of application       | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Application Status         | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Sourcing branch            | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Application present in CAS | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | Matched Application ID     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Stage of application       | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Application Status         | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Sourcing branch            | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Application present in CAS | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | Matched Application ID     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Stage of application       | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Application Status         | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Sourcing branch            | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Application present in CAS | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |

  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10192: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user on Dedupe Match Screen open Application Id hyperlink
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Loan_Type     | Field_Name                 | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Matched Application ID     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Stage of application       | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Application Status         | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Sourcing branch            | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Application present in CAS | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | Matched Application ID     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Stage of application       | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Application Status         | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Sourcing branch            | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Application present in CAS | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | Matched Application ID     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Stage of application       | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Application Status         | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Sourcing branch            | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Application present in CAS | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |

      #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10195: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    And user on Dedupe Match Screen open Application Id hyperlink
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type     | Action       | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Minimize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cross        | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cancel       | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Expand All   | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Collapse All | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | Maximize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Minimize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cross        | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cancel       | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Expand All   | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Collapse All | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | Maximize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Minimize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cross        | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cancel       | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Expand All   | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Collapse All | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |

    #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10196: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Coapplicant with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    And user on Dedupe Match Screen open Application Id hyperlink
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type     | Action       | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Minimize     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cross        | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Cancel       | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Expand All   | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Home Loan     | Collapse All | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Personal Loan | Maximize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Minimize     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cross        | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Cancel       | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Expand All   | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Personal Loan | Collapse All | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Auto Loan     | Maximize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Minimize     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cross        | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Cancel       | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Expand All   | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Auto Loan     | Collapse All | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |

     #FeatureID-ACAUTOCAS-6509
    #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10199: Show the "<NumberOfRows>" rows in Customer Match of Dedupe Match Screen for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Customer Match" No of Dedupe Match hyperlink on kyc check
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ProductType   |
      | 10           | display                                 | more      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 25           | display                                 | more      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 50           | display                                 | more      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 100          | display                                 | more      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 10           | not display only available rows display | less      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 25           | not display only available rows display | less      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 50           | not display only available rows display | less      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 100          | not display only available rows display | less      | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |

      #FeatureID-ACAUTOCAS-6509
    #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10200: Show the "<NumberOfRows>" rows in Negative Checklist of Dedupe Match Screen for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user perform prerequisites for negative checkList
    And user is on kyc check in summary Analysis
    And user click on "Negative Checklist" No of Dedupe Match hyperlink on kyc check
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ProductType   |
      | 10           | display                                 | more      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 25           | display                                 | more      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 50           | display                                 | more      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 100          | display                                 | more      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 10           | not display only available rows display | less      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 25           | not display only available rows display | less      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 50           | not display only available rows display | less      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | 100          | not display only available rows display | less      | personal_information.xlsx | identification              | 116                                | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |

     #sort the details in ascending order
   #FeatureID-ACAUTOCAS-6509
    #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10202: Application Match sorting in Dedupe Match Screen with ascending order by <Field> column for Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field                 | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ProductType   |
      | Application ID        | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Strength Of Match     | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Neo Cust ID           | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Customer Name         | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Channel, Channel Name | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Dealer/DSA/RM Name    | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Application Status    | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Unique ID             | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Applicant Type        | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |

    #FeatureID-ACAUTOCAS-6509
    #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10208: Verify result which is displaying in search results is correct for Dedupe Match Screen of Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "CoApplicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Match_Type        | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ProductType   |
      | Application Match | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | Customer Match    | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |

    #prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
   #FeatureID-ACAUTOCAS-6509
    #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10209: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "CoApplicant"
    When user check results of strength of Match
    Then strength of Match dedupe weightage should be validate correctly
    Examples:
      | Match_Type        | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ProductType   |
      | Application Match | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         | <ProductType> |
      | Customer Match    | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         | <ProductType> |

#FeatureID-ACAUTOCAS-6509
    #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10210: Validating strength of Match data in Dedupe Match Screen should be same for Matches found in Strength of Match in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "CoApplicant"
    When user check results of strength of Match
    Then Match found in Strength of Match should be same as dedupe strength of match
    Examples:
      | Match_Type        | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ProductType   |
      | Application Match | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         | <ProductType> |
      | Customer Match    | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         | <ProductType> |

      #FeatureID-ACAUTOCAS-6509
    #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10206: Pagination of Application Match in Dedupe Match Screen of Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "CoApplicant"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Match_Type        | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | ProductType   |
      | first | paginate_button previous | disable        | Application Match | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | first | paginate_button next     | enable         | Application Match | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | next  | paginate_button previous | enable         | Application Match | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | last  | paginate_button first    | enable         | Application Match | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | last  | paginate_button previous | enable         | Application Match | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |
      | last  | paginate_button next     | disable        | Application Match | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         | <ProductType> |

    #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10176: <No of Matches> for Kyc Dedupe Coapplicant must be same for Applicant Details with <Loan_Type> Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    When user check the "<No of Matches>" for Kyc Dedupe CoApplicant
    Then "<No of Matches>" Kyc Dedupe CoApplicant must be same for Applicant Details
    Examples:
      | No of Matches      | Loan_Type     | Var_Stage    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match  | Home Loan     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Customer Match     | Home Loan     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Negative Checklist | Home Loan     | dde_indiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Application Match  | Personal Loan | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Customer Match     | Personal Loan | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Negative Checklist | Personal Loan | dde_indiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Application Match  | Auto Loan     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Customer Match     | Auto Loan     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Negative Checklist | Auto Loan     | dde_indiv_al | sourcing_details.xlsx | home                 | 270                         |

#Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
       #FeatureID-ACAUTOCAS-6509
  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-10177: <No of Matches> for Kyc Dedupe Coapplicant must be same for Applicant Details with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user saves the application number
    And user add Co Applicant in that Application
    And user is on kyc check in summary Analysis
    When user check the "<No of Matches>" for Kyc Dedupe CoApplicant
    Then "<No of Matches>" Kyc Dedupe CoApplicant must be same for Applicant Details
    Examples:
      | No of Matches      | Loan_Type     | Var_Stage       | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match  | Home Loan     | dde_nonindiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Customer Match     | Home Loan     | dde_nonindiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Negative Checklist | Home Loan     | dde_nonindiv_hl | sourcing_details.xlsx | home                 | 268                         |
      | Application Match  | Personal Loan | dde_nonindiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Customer Match     | Personal Loan | dde_nonindiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Negative Checklist | Personal Loan | dde_nonindiv_pl | sourcing_details.xlsx | home                 | 269                         |
      | Application Match  | Auto Loan     | dde_nonindiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Customer Match     | Auto Loan     | dde_nonindiv_al | sourcing_details.xlsx | home                 | 270                         |
      | Negative Checklist | Auto Loan     | dde_nonindiv_al | sourcing_details.xlsx | home                 | 270                         |

  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10219: In Customer Match Once it is linked for exposure after that exposure calculation should happen accordingly in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "DDE" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add "coapplicant" at "DDE" stage
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "Customer Match" No of Dedupe Match hyperlink of "Co-Applicant"
    And user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | ProductType   |
      | <ProductType> |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10220: In Customer Match the linking should be allowed for every application in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "DDE" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add "coapplicant" at "DDE" stage
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "Customer Match" No of Dedupe Match hyperlink of "Co-Applicant"
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | ProductType   |
      | <ProductType> |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10221: In Application Match the linking should be allowed for every application in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "DDE" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add "coapplicant" at "DDE" stage
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "Application Match" No of Dedupe Match hyperlink of "Co-Applicant"
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | ProductType   |
      | <ProductType> |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10222: In Application Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "DDE" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add "coapplicant" at "DDE" stage
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "Application Match" No of Dedupe Match hyperlink of "Co-Applicant"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | ProductType   |
      | <ProductType> |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10223: In Customer Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "DDE" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add "coapplicant" at "DDE" stage
    And user is on kyc check in summary Analysis
    And user Re-initiate Applicant Information with rerun
    When user click on "Customer Match" No of Dedupe Match hyperlink of "Co-Applicant"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | ProductType   |
      | <ProductType> |


  @ImplementedBy-rishabh.sachan
  #${ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
  #FeatureID-ACAUTOCAS-6509
  Scenario Outline: ACAUTOCAS-10217: In Application Match System should allow to <action> consider for exposure in Coapplicant with <ProductType> in Summary Analysis
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "DDE" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 269
    And user saves the application number
    And user add "coapplicant" at "DDE" stage
    And user is on kyc check in summary Analysis
    When user click on "Application Match" No of Dedupe Match hyperlink on kyc check
    Then System should allow to "<action>" consider for exposure for "Application Match"
    Examples:
      | action | ProductType   |
      | tick   | <ProductType> |
      | untick | <ProductType> |

