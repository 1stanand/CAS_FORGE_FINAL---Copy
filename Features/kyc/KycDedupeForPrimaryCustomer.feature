@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-
@Release3
@ReviewedByDEV
Feature: Kyc Dedupe Details for Customer in Kyc Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9691: <No of Matches> for Kyc Dedupe Customer must be same for Applicant Details with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user store all dedupe count in context
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user check the "<No of Matches>" for Kyc Dedupe Customer
    Then "<No of Matches>" Kyc Dedupe Customer must be same for Applicant Details
    Examples:
      | No of Matches      | Loan_Type | Var_Stage     | ApplicantType |
      | Application Match  | hl        | kyc_indiv_hl  | indiv         |
      | Customer Match     | hl        | kyc_indiv_hl  | indiv         |
      | Negative Checklist | hl        | kyc_indiv_hl  | indiv         |
      | Application Match  | pl        | kyc_indiv_pl  | indiv         |
      | Customer Match     | pl        | kyc_indiv_pl  | indiv         |
      | Negative Checklist | pl        | kyc_indiv_pl  | indiv         |
      | Application Match  | al        | kyc_indiv_mal | indiv         |
      | Customer Match     | al        | kyc_indiv_mal | indiv         |
      | Negative Checklist | al        | kyc_indiv_mal | indiv         |

#Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
# FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9692: <No of Matches> for Kyc Dedupe Customer must be same for Applicant Details with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user store all dedupe count in context
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user check the "<No of Matches>" for Kyc Dedupe Customer
    Then "<No of Matches>" Kyc Dedupe Customer must be same for Applicant Details
    Examples:
      | No of Matches      | Loan_Type | Var_Stage        | ApplicantType |
      | Application Match  | hl        | kyc_nonindiv_hl  | nonindiv      |
      | Customer Match     | hl        | kyc_nonindiv_hl  | nonindiv      |
      | Negative Checklist | hl        | kyc_nonindiv_hl  | nonindiv      |
      | Application Match  | pl        | kyc_nonindiv_pl  | nonindiv      |
      | Customer Match     | pl        | kyc_nonindiv_pl  | nonindiv      |
      | Negative Checklist | pl        | kyc_nonindiv_pl  | nonindiv      |
      | Application Match  | al        | kyc_nonindiv_mal | nonindiv      |
      | Customer Match     | al        | kyc_nonindiv_mal | nonindiv      |
      | Negative Checklist | al        | kyc_nonindiv_mal | nonindiv      |

  @ImplementedBy-aniket.tripathi
    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9693: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "hl" product type as "nonindiv" applicant at "kyc" for "" with "pd" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    Then Dedupe Match Screen should be displayed for Customer
    Examples:
      | Field_Name        | Loan_Type | Var_Stage     |
      | Application Match | hl        | kyc_indiv_hl  |
      | Customer Match    | hl        | kyc_indiv_hl  |
      | Application Match | pl        | kyc_indiv_pl  |
      | Customer Match    | pl        | kyc_indiv_pl  |
      | Application Match | mal       | kyc_indiv_mal |
      | Customer Match    | mal       | kyc_indiv_mal |

  @ImplementedBy-aniket.tripathi
   #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9694: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    Then Dedupe Match Screen should be displayed for Customer
    Examples:
      | Field_Name        | Loan_Type | Var_Stage     |
      | Application Match | hl        | kyc_indiv_hl  |
      | Customer Match    | hl        | kyc_indiv_hl  |
      | Application Match | pl        | kyc_indiv_pl  |
      | Customer Match    | pl        | kyc_indiv_pl  |
      | Application Match | mal       | kyc_indiv_mal |
      | Customer Match    | mal       | kyc_indiv_mal |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9695: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then Negative Checklist Matched Records should be displayed
    Examples:
      | Match_Type         | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Negative Checklist | hl        | kyc_indiv_hl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9696: When Application Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application
    Examples:
      | Loan_Type | Dedupe_Field_Name | Var_Stage     | Field_Name        |
      | hl        | Current Stage     | kyc_indiv_hl  | Application Match |
      | hl        | Group ID          | kyc_indiv_hl  | Application Match |
      | hl        | Group Name        | kyc_indiv_hl  | Application Match |
      | hl        | Exposure Detail   | kyc_indiv_hl  | Application Match |
      | pl        | Current Stage     | kyc_indiv_pl  | Application Match |
      | pl        | Group ID          | kyc_indiv_pl  | Application Match |
      | pl        | Group Name        | kyc_indiv_pl  | Application Match |
      | pl        | Exposure Detail   | kyc_indiv_pl  | Application Match |
      | mal       | Current Stage     | kyc_indiv_mal | Application Match |
      | mal       | Group ID          | kyc_indiv_mal | Application Match |
      | mal       | Group Name        | kyc_indiv_mal | Application Match |
      | mal       | Exposure Detail   | kyc_indiv_mal | Application Match |

   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-9697: When Customer Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application
    Examples:
      | Loan_Type | Dedupe_Field_Name | Var_Stage     | Field_Name     |
      | hl        | Current Stage     | kyc_indiv_hl  | Customer Match |
      | hl        | Group ID          | kyc_indiv_hl  | Customer Match |
      | hl        | Group Name        | kyc_indiv_hl  | Customer Match |
      | hl        | Exposure Detail   | kyc_indiv_hl  | Customer Match |
      | pl        | Current Stage     | kyc_indiv_pl  | Customer Match |
      | pl        | Group ID          | kyc_indiv_pl  | Customer Match |
      | pl        | Group Name        | kyc_indiv_pl  | Customer Match |
      | pl        | Exposure Detail   | kyc_indiv_pl  | Customer Match |
      | mal       | Current Stage     | kyc_indiv_mal | Customer Match |
      | mal       | Group ID          | kyc_indiv_mal | Customer Match |
      | mal       | Group Name        | kyc_indiv_mal | Customer Match |
      | mal       | Exposure Detail   | kyc_indiv_mal | Customer Match |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9698: When Customer Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | Loan_Type | Dedupe_Field_Name | Var_Stage     | Field_Name     |
      | hl        | Current Stage     | kyc_indiv_hl  | Customer Match |
      | hl        | Group ID          | kyc_indiv_hl  | Customer Match |
      | hl        | Group Name        | kyc_indiv_hl  | Customer Match |
      | hl        | Exposure Detail   | kyc_indiv_hl  | Customer Match |
      | pl        | Current Stage     | kyc_indiv_pl  | Customer Match |
      | pl        | Group ID          | kyc_indiv_pl  | Customer Match |
      | pl        | Group Name        | kyc_indiv_pl  | Customer Match |
      | pl        | Exposure Detail   | kyc_indiv_pl  | Customer Match |
      | mal       | Current Stage     | kyc_indiv_mal | Customer Match |
      | mal       | Group ID          | kyc_indiv_mal | Customer Match |
      | mal       | Group Name        | kyc_indiv_mal | Customer Match |
      | mal       | Exposure Detail   | kyc_indiv_mal | Customer Match |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-9699: When Application Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen
    Examples:
      | Loan_Type | Dedupe_Field_Name | Var_Stage     | Field_Name        |
      | hl        | Current Stage     | kyc_indiv_hl  | Application Match |
      | hl        | Group ID          | kyc_indiv_hl  | Application Match |
      | hl        | Group Name        | kyc_indiv_hl  | Application Match |
      | hl        | Exposure Detail   | kyc_indiv_hl  | Application Match |
      | pl        | Current Stage     | kyc_indiv_pl  | Application Match |
      | pl        | Group ID          | kyc_indiv_pl  | Application Match |
      | pl        | Group Name        | kyc_indiv_pl  | Application Match |
      | pl        | Exposure Detail   | kyc_indiv_pl  | Application Match |
      | mal       | Current Stage     | kyc_indiv_mal | Application Match |
      | mal       | Group ID          | kyc_indiv_mal | Application Match |
      | mal       | Group Name        | kyc_indiv_mal | Application Match |
      | mal       | Exposure Detail   | kyc_indiv_mal | Application Match |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9702: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Loan_Type | Action       | Field_Name        | Var_Stage     |
      | hl        | Maximize     | Application Match | kyc_indiv_hl  |
      | hl        | Minimize     | Application Match | kyc_indiv_hl  |
      | hl        | Cross        | Application Match | kyc_indiv_hl  |
      | hl        | Cancel       | Application Match | kyc_indiv_hl  |
      | hl        | Done         | Application Match | kyc_indiv_hl  |
      | hl        | Expand All   | Application Match | kyc_indiv_hl  |
      | hl        | Collapse All | Application Match | kyc_indiv_hl  |
      | pl        | Maximize     | Application Match | kyc_indiv_pl  |
      | pl        | Minimize     | Application Match | kyc_indiv_pl  |
      | pl        | Cross        | Application Match | kyc_indiv_pl  |
      | pl        | Cancel       | Application Match | kyc_indiv_pl  |
      | pl        | Done         | Application Match | kyc_indiv_pl  |
      | pl        | Expand All   | Application Match | kyc_indiv_pl  |
      | pl        | Collapse All | Application Match | kyc_indiv_pl  |
      | mal       | Maximize     | Application Match | kyc_indiv_mal |
      | mal       | Minimize     | Application Match | kyc_indiv_mal |
      | mal       | Cross        | Application Match | kyc_indiv_mal |
      | mal       | Cancel       | Application Match | kyc_indiv_mal |
      | mal       | Done         | Application Match | kyc_indiv_mal |
      | mal       | Expand All   | Application Match | kyc_indiv_mal |
      | mal       | Collapse All | Application Match | kyc_indiv_mal |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-9703: When Customer Match field of Dedupe Match Screen with <Action> should work properly for  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Loan_Type | Action       | Field_Name     | Var_Stage     |
      | hl        | Maximize     | Customer Match | kyc_indiv_hl  |
      | hl        | Minimize     | Customer Match | kyc_indiv_hl  |
      | hl        | Cross        | Customer Match | kyc_indiv_hl  |
      | hl        | Cancel       | Customer Match | kyc_indiv_hl  |
      | hl        | Done         | Customer Match | kyc_indiv_hl  |
      | hl        | Expand All   | Customer Match | kyc_indiv_hl  |
      | hl        | Collapse All | Customer Match | kyc_indiv_hl  |
      | pl        | Maximize     | Customer Match | kyc_indiv_pl  |
      | pl        | Minimize     | Customer Match | kyc_indiv_pl  |
      | pl        | Cross        | Customer Match | kyc_indiv_pl  |
      | pl        | Cancel       | Customer Match | kyc_indiv_pl  |
      | pl        | Done         | Customer Match | kyc_indiv_pl  |
      | pl        | Expand All   | Customer Match | kyc_indiv_pl  |
      | pl        | Collapse All | Customer Match | kyc_indiv_pl  |
      | mal       | Maximize     | Customer Match | kyc_indiv_mal |
      | mal       | Minimize     | Customer Match | kyc_indiv_mal |
      | mal       | Cross        | Customer Match | kyc_indiv_mal |
      | mal       | Cancel       | Customer Match | kyc_indiv_mal |
      | mal       | Done         | Customer Match | kyc_indiv_mal |
      | mal       | Expand All   | Customer Match | kyc_indiv_mal |
      | mal       | Collapse All | Customer Match | kyc_indiv_mal |

  #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9704: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "nonindiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Loan_Type | Action       | Field_Name        | Var_Stage        |
      | hl        | Maximize     | Application Match | kyc_nonindiv_hl  |
      | hl        | Minimize     | Application Match | kyc_nonindiv_hl  |
      | hl        | Cross        | Application Match | kyc_nonindiv_hl  |
      | hl        | Cancel       | Application Match | kyc_nonindiv_hl  |
      | hl        | Done         | Application Match | kyc_nonindiv_hl  |
      | hl        | Expand All   | Application Match | kyc_nonindiv_hl  |
      | hl        | Collapse All | Application Match | kyc_nonindiv_hl  |
      | pl        | Maximize     | Application Match | kyc_nonindiv_pl  |
      | pl        | Minimize     | Application Match | kyc_nonindiv_pl  |
      | pl        | Cross        | Application Match | kyc_nonindiv_pl  |
      | pl        | Cancel       | Application Match | kyc_nonindiv_pl  |
      | pl        | Done         | Application Match | kyc_nonindiv_pl  |
      | pl        | Expand All   | Application Match | kyc_nonindiv_pl  |
      | pl        | Collapse All | Application Match | kyc_nonindiv_pl  |
      | mal       | Maximize     | Application Match | kyc_nonindiv_mal |
      | mal       | Minimize     | Application Match | kyc_nonindiv_mal |
      | mal       | Cross        | Application Match | kyc_nonindiv_mal |
      | mal       | Cancel       | Application Match | kyc_nonindiv_mal |
      | mal       | Done         | Application Match | kyc_nonindiv_mal |
      | mal       | Expand All   | Application Match | kyc_nonindiv_mal |
      | mal       | Collapse All | Application Match | kyc_nonindiv_mal |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-9705: When Customer Match field of Dedupe Match Screen with <Action> should work properly for Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "nonindiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen
    Examples:
      | Loan_Type | Action       | Field_Name     | Var_Stage        |
      | hl        | Maximize     | Customer Match | kyc_nonindiv_hl  |
      | hl        | Minimize     | Customer Match | kyc_nonindiv_hl  |
      | hl        | Cross        | Customer Match | kyc_nonindiv_hl  |
      | hl        | Cancel       | Customer Match | kyc_nonindiv_hl  |
      | hl        | Done         | Customer Match | kyc_nonindiv_hl  |
      | hl        | Expand All   | Customer Match | kyc_nonindiv_hl  |
      | hl        | Collapse All | Customer Match | kyc_nonindiv_hl  |
      | pl        | Maximize     | Customer Match | kyc_nonindiv_pl  |
      | pl        | Minimize     | Customer Match | kyc_nonindiv_pl  |
      | pl        | Cross        | Customer Match | kyc_nonindiv_pl  |
      | pl        | Cancel       | Customer Match | kyc_nonindiv_pl  |
      | pl        | Done         | Customer Match | kyc_nonindiv_pl  |
      | pl        | Expand All   | Customer Match | kyc_nonindiv_pl  |
      | pl        | Collapse All | Customer Match | kyc_nonindiv_pl  |
      | mal       | Maximize     | Customer Match | kyc_nonindiv_mal |
      | mal       | Minimize     | Customer Match | kyc_nonindiv_mal |
      | mal       | Cross        | Customer Match | kyc_nonindiv_mal |
      | mal       | Cancel       | Customer Match | kyc_nonindiv_mal |
      | mal       | Done         | Customer Match | kyc_nonindiv_mal |
      | mal       | Expand All   | Customer Match | kyc_nonindiv_mal |
      | mal       | Collapse All | Customer Match | kyc_nonindiv_mal |

  @ImplementedBy-aniket.tripathi
     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9700: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed
    Examples:
      | Field_Name        | Screen                                          | Var_Stage     | Loan_Type |
      | Application Match | KYC Internal Dedupe Matched Application Details | kyc_indiv_hl  | hl        |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | kyc_indiv_hl  | hl        |
      | Application Match | KYC Internal Dedupe Matched Application Details | kyc_indiv_pl  | pl        |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | kyc_indiv_pl  | pl        |
      | Application Match | KYC Internal Dedupe Matched Application Details | kyc_indiv_mal | mal       |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | kyc_indiv_mal | mal       |

  @ImplementedBy-aniket.tripathi
    #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9701: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed

    Examples:
      | Field_Name        | Screen                                          | Var_Stage     | Loan_Type |
      | Application Match | KYC Internal Dedupe Matched Application Details | kyc_indiv_hl  | hl        |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | kyc_indiv_hl  | hl        |
      | Application Match | KYC Internal Dedupe Matched Application Details | kyc_indiv_pl  | pl        |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | kyc_indiv_pl  | pl        |
      | Application Match | KYC Internal Dedupe Matched Application Details | kyc_indiv_mal | mal       |
      | Customer Match    | KYC Internal Dedupe Matched Application Details | kyc_indiv_mal | mal       |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9706: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Loan_Type | Field_Name                 | Var_Stage     |
      | hl        | Matched Application ID     | kyc_indiv_hl  |
      | hl        | Stage of application       | kyc_indiv_hl  |
      | hl        | Application Status         | kyc_indiv_hl  |
      | hl        | Sourcing branch            | kyc_indiv_hl  |
      | hl        | Application present in CAS | kyc_indiv_hl  |
      | pl        | Matched Application ID     | kyc_indiv_pl  |
      | pl        | Stage of application       | kyc_indiv_pl  |
      | pl        | Application Status         | kyc_indiv_pl  |
      | pl        | Sourcing branch            | kyc_indiv_pl  |
      | pl        | Application present in CAS | kyc_indiv_pl  |
      | mal       | Matched Application ID     | kyc_indiv_mal |
      | mal       | Stage of application       | kyc_indiv_mal |
      | mal       | Application Status         | kyc_indiv_mal |
      | mal       | Sourcing branch            | kyc_indiv_mal |
      | mal       | Application present in CAS | kyc_indiv_mal |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9707: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Loan_Type | Field_Name                 | Var_Stage     |
      | hl        | Matched Application ID     | kyc_indiv_hl  |
      | hl        | Stage of application       | kyc_indiv_hl  |
      | hl        | Application Status         | kyc_indiv_hl  |
      | hl        | Sourcing branch            | kyc_indiv_hl  |
      | hl        | Application present in CAS | kyc_indiv_hl  |
      | pl        | Matched Application ID     | kyc_indiv_pl  |
      | pl        | Stage of application       | kyc_indiv_pl  |
      | pl        | Application Status         | kyc_indiv_pl  |
      | pl        | Sourcing branch            | kyc_indiv_pl  |
      | pl        | Application present in CAS | kyc_indiv_pl  |
      | mal       | Matched Application ID     | kyc_indiv_mal |
      | mal       | Stage of application       | kyc_indiv_mal |
      | mal       | Application Status         | kyc_indiv_mal |
      | mal       | Sourcing branch            | kyc_indiv_mal |
      | mal       | Application present in CAS | kyc_indiv_mal |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9708: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for  Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "nonindiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Loan_Type | Field_Name                 | Var_Stage        |
      | hl        | Matched Application ID     | kyc_nonindiv_hl  |
      | hl        | Stage of application       | kyc_nonindiv_hl  |
      | hl        | Application Status         | kyc_nonindiv_hl  |
      | hl        | Sourcing branch            | kyc_nonindiv_hl  |
      | hl        | Application present in CAS | kyc_nonindiv_hl  |
      | pl        | Matched Application ID     | kyc_nonindiv_pl  |
      | pl        | Stage of application       | kyc_nonindiv_pl  |
      | pl        | Application Status         | kyc_nonindiv_pl  |
      | pl        | Sourcing branch            | kyc_nonindiv_pl  |
      | pl        | Application present in CAS | kyc_nonindiv_pl  |
      | mal       | Matched Application ID     | kyc_nonindiv_mal |
      | mal       | Stage of application       | kyc_nonindiv_mal |
      | mal       | Application Status         | kyc_nonindiv_mal |
      | mal       | Sourcing branch            | kyc_nonindiv_mal |
      | mal       | Application present in CAS | kyc_nonindiv_mal |

  @ImplementedBy-piyush.agnihotri
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9709: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for  Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "nonindiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details
    Examples:
      | Loan_Type | Field_Name                 | Var_Stage        |
      | hl        | Matched Application ID     | kyc_nonindiv_hl  |
      | hl        | Stage of application       | kyc_nonindiv_hl  |
      | hl        | Application Status         | kyc_nonindiv_hl  |
      | hl        | Sourcing branch            | kyc_nonindiv_hl  |
      | hl        | Application present in CAS | kyc_nonindiv_hl  |
      | pl        | Matched Application ID     | kyc_nonindiv_pl  |
      | pl        | Stage of application       | kyc_nonindiv_pl  |
      | pl        | Application Status         | kyc_nonindiv_pl  |
      | pl        | Sourcing branch            | kyc_nonindiv_pl  |
      | pl        | Application present in CAS | kyc_nonindiv_pl  |
      | mal       | Matched Application ID     | kyc_nonindiv_mal |
      | mal       | Stage of application       | kyc_nonindiv_mal |
      | mal       | Application Status         | kyc_nonindiv_mal |
      | mal       | Sourcing branch            | kyc_nonindiv_mal |
      | mal       | Application present in CAS | kyc_nonindiv_mal |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9710: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type | Action       | Var_Stage     |
      | hl        | Maximize     | kyc_indiv_hl  |
      | hl        | Minimize     | kyc_indiv_hl  |
      | hl        | Cross        | kyc_indiv_hl  |
      | hl        | Cancel       | kyc_indiv_hl  |
      | pl        | Maximize     | kyc_indiv_pl  |
      | pl        | Minimize     | kyc_indiv_pl  |
      | pl        | Cross        | kyc_indiv_pl  |
      | pl        | Cancel       | kyc_indiv_pl  |
      | mal       | Maximize     | kyc_indiv_mal |
      | mal       | Minimize     | kyc_indiv_mal |
      | mal       | Cross        | kyc_indiv_mal |
      | mal       | Cancel       | kyc_indiv_mal |
      | mal       | Expand All   | kyc_indiv_mal |
      | hl        | Expand All   | kyc_indiv_hl  |
      | pl        | Expand All   | kyc_indiv_pl  |
      | mal       | Collapse All | kyc_indiv_mal |
      | hl        | Collapse All | kyc_indiv_hl  |
      | pl        | Collapse All | kyc_indiv_pl  |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9711: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Customer with <Loan_Type> Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type | Action       | Var_Stage     |
      | hl        | Maximize     | kyc_indiv_hl  |
      | hl        | Minimize     | kyc_indiv_hl  |
      | hl        | Cross        | kyc_indiv_hl  |
      | hl        | Cancel       | kyc_indiv_hl  |
      | pl        | Maximize     | kyc_indiv_pl  |
      | pl        | Minimize     | kyc_indiv_pl  |
      | pl        | Cross        | kyc_indiv_pl  |
      | pl        | Cancel       | kyc_indiv_pl  |
      | mal       | Maximize     | kyc_indiv_mal |
      | mal       | Minimize     | kyc_indiv_mal |
      | mal       | Cross        | kyc_indiv_mal |
      | mal       | Cancel       | kyc_indiv_mal |
      | mal       | Expand All   | kyc_indiv_mal |
      | hl        | Expand All   | kyc_indiv_hl  |
      | pl        | Expand All   | kyc_indiv_pl  |
      | mal       | Collapse All | kyc_indiv_mal |
      | hl        | Collapse All | kyc_indiv_hl  |
      | pl        | Collapse All | kyc_indiv_pl  |

  @ImplementedBy-piyush.agnihotri
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9712: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "nonindiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type | Action       | Var_Stage        |
      | hl        | Maximize     | kyc_nonindiv_hl  |
      | hl        | Minimize     | kyc_nonindiv_hl  |
      | hl        | Cross        | kyc_nonindiv_hl  |
      | hl        | Cancel       | kyc_nonindiv_hl  |
      | pl        | Maximize     | kyc_nonindiv_pl  |
      | pl        | Minimize     | kyc_nonindiv_pl  |
      | pl        | Cross        | kyc_nonindiv_pl  |
      | pl        | Cancel       | kyc_nonindiv_pl  |
      | mal       | Maximize     | kyc_nonindiv_mal |
      | mal       | Minimize     | kyc_nonindiv_mal |
      | mal       | Cross        | kyc_nonindiv_mal |
      | mal       | Cancel       | kyc_nonindiv_mal |
      | mal       | Expand All   | kyc_nonindiv_mal |
      | hl        | Expand All   | kyc_nonindiv_hl  |
      | pl        | Expand All   | kyc_nonindiv_pl  |
      | mal       | Collapse All | kyc_nonindiv_mal |
      | hl        | Collapse All | kyc_nonindiv_hl  |
      | pl        | Collapse All | kyc_nonindiv_pl  |

  @ImplementedBy-piyush.agnihotri
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9713: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for Customer with <Loan_Type> Non Individual in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "nonindiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen
    Examples:
      | Loan_Type | Action       | Var_Stage        |
      | hl        | Maximize     | kyc_nonindiv_hl  |
      | hl        | Minimize     | kyc_nonindiv_hl  |
      | hl        | Cross        | kyc_nonindiv_hl  |
      | hl        | Cancel       | kyc_nonindiv_hl  |
      | pl        | Maximize     | kyc_nonindiv_pl  |
      | pl        | Minimize     | kyc_nonindiv_pl  |
      | pl        | Cross        | kyc_nonindiv_pl  |
      | pl        | Cancel       | kyc_nonindiv_pl  |
      | mal       | Maximize     | kyc_nonindiv_mal |
      | mal       | Minimize     | kyc_nonindiv_mal |
      | mal       | Cross        | kyc_nonindiv_mal |
      | mal       | Cancel       | kyc_nonindiv_mal |
      | mal       | Expand All   | kyc_nonindiv_mal |
      | hl        | Expand All   | kyc_nonindiv_hl  |
      | pl        | Expand All   | kyc_nonindiv_pl  |
      | mal       | Collapse All | kyc_nonindiv_mal |
      | hl        | Collapse All | kyc_nonindiv_hl  |
      | pl        | Collapse All | kyc_nonindiv_pl  |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9714: Show the "<NumberOfRows>" rows in Customer Match of Dedupe Match Screen for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Loan_Type | Var_Stage    |
      | 10           | display                                 | more      | pl        | kyc_indiv_pl |
      | 25           | display                                 | more      | pl        | kyc_indiv_pl |
      | 50           | display                                 | more      | pl        | kyc_indiv_pl |
      | 100          | display                                 | more      | pl        | kyc_indiv_pl |
      | 10           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 25           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 50           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 100          | not display only available rows display | less      | pl        | kyc_indiv_pl |

  @ImplementedBy-piyush.agnihotri
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9715: Show the "<NumberOfRows>" rows in Negative Checklist of Dedupe Match Screen for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Negative Checklist" No of Dedupe Match hyperlink of "Primary Applicant"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Loan_Type | Var_Stage    |
      | 10           | display                                 | more      | pl        | kyc_indiv_pl |
      | 25           | display                                 | more      | pl        | kyc_indiv_pl |
      | 50           | display                                 | more      | pl        | kyc_indiv_pl |
      | 100          | display                                 | more      | pl        | kyc_indiv_pl |
      | 10           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 25           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 50           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 100          | not display only available rows display | less      | pl        | kyc_indiv_pl |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9716: Show the "<NumberOfRows>" rows in Application Match of Dedupe Match Screen for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | Loan_Type | Var_Stage    |
      | 10           | display                                 | more      | pl        | kyc_indiv_pl |
      | 25           | display                                 | more      | pl        | kyc_indiv_pl |
      | 50           | display                                 | more      | pl        | kyc_indiv_pl |
      | 100          | display                                 | more      | pl        | kyc_indiv_pl |
      | 10           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 25           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 50           | not display only available rows display | less      | pl        | kyc_indiv_pl |
      | 100          | not display only available rows display | less      | pl        | kyc_indiv_pl |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9717: Application Match sorting in Dedupe Match Screen with ascending order by <Field> column for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field                 | Loan_Type | Var_Stage    |
      | Application Id        | pl        | kyc_indiv_pl |
      | Strength Of Match     | pl        | kyc_indiv_pl |
      | Neo Cust Id           | pl        | kyc_indiv_pl |
      | Customer Name         | pl        | kyc_indiv_pl |
      | Date Of Birth         | pl        | kyc_indiv_pl |
      | Neo CIF Number        | pl        | kyc_indiv_pl |
      | Identification Number | pl        | kyc_indiv_pl |
      | Unique Id             | pl        | kyc_indiv_pl |
      | Applicant Type        | pl        | kyc_indiv_pl |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9718: Customer Match sorting in Dedupe Match Screen with ascending order by <Field> column for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"
    Examples:
      | Field                 | Loan_Type | Var_Stage    |
      | Application Id        | pl        | kyc_indiv_pl |
      | Strength Of Match     | pl        | kyc_indiv_pl |
      | Neo Cust Id           | pl        | kyc_indiv_pl |
      | Customer Name         | pl        | kyc_indiv_pl |
      | Date Of Birth         | pl        | kyc_indiv_pl |
      | Neo CIF Number        | pl        | kyc_indiv_pl |
      | Identification Number | pl        | kyc_indiv_pl |
      | Unique Id             | pl        | kyc_indiv_pl |
      | Applicant Type        | pl        | kyc_indiv_pl |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9719: Application Match sorting in Dedupe Match Screen with descending order by <Field> column for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field                 | Loan_Type | Var_Stage    |
      | Application Id        | pl        | kyc_indiv_pl |
      | Strength Of Match     | pl        | kyc_indiv_pl |
      | Neo Cust Id           | pl        | kyc_indiv_pl |
      | Customer Name         | pl        | kyc_indiv_pl |
      | Date Of Birth         | pl        | kyc_indiv_pl |
      | Neo CIF Number        | pl        | kyc_indiv_pl |
      | Identification Number | pl        | kyc_indiv_pl |
      | Unique Id             | pl        | kyc_indiv_pl |
      | Applicant Type        | pl        | kyc_indiv_pl |

  @ImplementedBy-aryan.jain
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9720: Customer Match sorting in Dedupe Match Screen with descending order by <Field> column for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"
    Examples:
      | Field                 | Loan_Type | Var_Stage    |
      | Application Id        | pl        | kyc_indiv_pl |
      | Strength Of Match     | pl        | kyc_indiv_pl |
      | Neo Cust Id           | pl        | kyc_indiv_pl |
      | Customer Name         | pl        | kyc_indiv_pl |
      | Date Of Birth         | pl        | kyc_indiv_pl |
      | Neo CIF Number        | pl        | kyc_indiv_pl |
      | Identification Number | pl        | kyc_indiv_pl |
      | Unique Id             | pl        | kyc_indiv_pl |
      | Applicant Type        | pl        | kyc_indiv_pl |

  @ImplementedBy-piyush.agnihotri
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9721: Pagination of Application Match in Dedupe Match Screen of Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Application Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page

    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Loan_Type | Var_Stage    |
      | first | paginate_button previous | disable        | pl        | kyc_indiv_pl |
      | first | paginate_button next     | enable         | pl        | kyc_indiv_pl |
      | next  | paginate_button previous | enable         | pl        | kyc_indiv_pl |
      | last  | paginate_button first    | enable         | pl        | kyc_indiv_pl |
      | last  | paginate_button previous | enable         | pl        | kyc_indiv_pl |
      | last  | paginate_button next     | disable        | pl        | kyc_indiv_pl |

  @ImplementedBy-piyush.agnihotri
  #FeatureID-ACAUTOCAS-298
  Scenario Outline: ACAUTOCAS-9722: Pagination of Customer Match in Dedupe Match Screen of Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "indiv" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "Customer Match" No of Dedupe Match hyperlink of "Primary Applicant"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Loan_Type | Var_Stage    |
      | first | paginate_button previous | disable        | pl        | kyc_indiv_pl |
      | first | paginate_button next     | enable         | pl        | kyc_indiv_pl |
      | next  | paginate_button previous | enable         | pl        | kyc_indiv_pl |
      | last  | paginate_button first    | enable         | pl        | kyc_indiv_pl |
      | last  | paginate_button previous | enable         | pl        | kyc_indiv_pl |
      | last  | paginate_button next     | disable        | pl        | kyc_indiv_pl |

 #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9723: Verify result which is displaying in search results is correct for Dedupe Match Screen of Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         |
      | Customer Match    | pl        | kyc_indiv_pl | indiv         |

#prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9724: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user check results of strength of Match
    Then strength of Match dedupe weightage should be validate correctly
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         |
      | Customer Match    | pl        | kyc_indiv_pl | indiv         |

 #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9725: Validating strength of Match data in Dedupe Match Screen should be same for Matches found in Strength of Match in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user check results of strength of Match
    Then Match found in Strength of Match should be same as dedupe strength of match
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         |
      | Customer Match    | pl        | kyc_indiv_pl | indiv         |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9726: While opening Application Id hyperlink in Dedupe Match Screen the correct details of the application should be visible in view mode for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Primary Applicant"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode
    Examples:
      | Field_Name        | Loan_Type | Var_Stage    | ApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         |
      | Customer Match    | pl        | kyc_indiv_pl | indiv         |

  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
 #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9727: Matches Records Pages should be displayed on Negative checklist Matches for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    When user click on Negative checklist Matched record
    Then Negative Checklist Matched Records should be displayed
    Examples:
      | Match_Type         | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Negative Checklist | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
   #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9728: Akycd negative checklist data is master should display in negative checklist Matches for Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then master data should displayed for negative checklist Matches
    Examples:
      | Match_Type         | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Negative Checklist | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

    #FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9729: In Application Match By default all application should be ticked to consider for exposure in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then by default all application should be ticked to consider for exposure
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9730: In Customer Match By default all application should be ticked to consider for exposure in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then by default all application should be ticked to consider for exposure
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9731: In Customer Match System should allow to <action> consider for exposure in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"
    Examples:
      | action | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Tick   | Customer Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |
      | Untick | Customer Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9732: In Application Match System should allow to <action> consider for exposure in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"
    Examples:
      | action | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Tick   | Application Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |
      | Untick | Application Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9733: In Application Match Once it is linked for exposure after that exposure calculation should happen accordingly in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9734: In Customer Match Once it is linked for exposure after that exposure calculation should happen accordingly in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once linked the exposure
    Then exposure calculation should happen accordingly
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9735: In Customer Match the linking should be allowed for every application in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9736: In Application Match the linking should be allowed for every application in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user once tick on link
    Then linking should work properly for every application
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9737: In Application Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type        | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Application Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |

#FeatureID-ACAUTOCAS-808
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-9738: In Customer Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Customer with all Lob's in Kyc Stage
    And user creates an dedupe application of "<Loan_Type>" product type as "<ApplicantType>" applicant at "kyc" for "" with "" from web service
    And user opens an application of "<Var_Stage>" stage variant from "APPLICATION" grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row 116
    And user perform prerequisites for negative checkList
    And user is on kyc check in Kyc Details
    And user Re-initiate applicant information at kyc stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "<DedupeApplicantType>"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type     | Loan_Type | Var_Stage    | ApplicantType | DedupeApplicantType |
      | Customer Match | pl        | kyc_indiv_pl | indiv         | Primary Applicant   |
