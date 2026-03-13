@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-
@TechReviewedBy-
@Release3
@Perishable
@ReviewedByDEV
@Reconciled
@Conventional
@Islamic

Feature: Kyc Dedupe Details for Guarantor in Kyc Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9599: <No of Matches> for Kyc Dedupe Guarantor must be same for Applicant Details with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user check the "<No of Matches>" for Kyc Dedupe Guarantor
    Then "<No of Matches>" Kyc Dedupe Guarantor must be same for Applicant Details

    Examples:
      | No of Matches      | Loan_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match  | Home Loan     | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match     | Home Loan     | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Negative Checklist | Home Loan     | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Application Match  | Personal Loan | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match     | Personal Loan | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Negative Checklist | Personal Loan | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Application Match  | Auto Loan     | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match     | Auto Loan     | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Negative Checklist | Auto Loan     | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template.
  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9600: <No of Matches> for Kyc Dedupe Guarantor must be same for Applicant Details with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user check the "<No of Matches>" for Kyc Dedupe Guarantor
    Then "<No of Matches>" Kyc Dedupe Guarantor must be same for Applicant Details

    Examples:
      | No of Matches      | Loan_Type     | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match  | Home Loan     | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match     | Home Loan     | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Negative Checklist | Home Loan     | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Application Match  | Personal Loan | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match     | Personal Loan | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Negative Checklist | Personal Loan | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Application Match  | Auto Loan     | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match     | Auto Loan     | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Negative Checklist | Auto Loan     | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9601: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    Then Dedupe Match Screen should be displayed for Guarantor

    Examples:
      | Field_Name        | Loan_Type     | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | Home Loan     | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match    | Home Loan     | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Application Match | Personal Loan | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match    | Personal Loan | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Application Match | Auto Loan     | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match    | Auto Loan     | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9602: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    Then Dedupe Match Screen should be displayed for Guarantor

    Examples:
      | Field_Name        | Loan_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | Home Loan     | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match    | Home Loan     | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Application Match | Personal Loan | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match    | Personal Loan | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Application Match | Auto Loan     | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match    | Auto Loan     | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9603: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then Negative Checklist Matched Records should be displayed

    Examples:
      | Match_Type         | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Negative Checklist | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9604: When Application Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Loan_Type     | Dedupe_Field_Name | Field_Name        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Current Stage     | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group ID          | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group Name        | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Exposure Detail   | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Current Stage     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group ID          | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group Name        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Exposure Detail   | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Current Stage     | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group ID          | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group Name        | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Exposure Detail   | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9605: When Customer Match field of Dedupe Match Screen with Expand All hyperlink <Dedupe_Field_Name> should be visible for every application Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user Expand All hyperlink in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible for every application

    Examples:
      | Loan_Type     | Dedupe_Field_Name | Field_Name     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Current Stage     | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group ID          | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group Name        | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Exposure Detail   | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Current Stage     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group ID          | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group Name        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Exposure Detail   | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Current Stage     | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group ID          | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group Name        | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Exposure Detail   | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9606: When Customer Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen

    Examples:
      | Loan_Type     | Dedupe_Field_Name | Field_Name     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Current Stage     | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group ID          | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group Name        | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Exposure Detail   | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Current Stage     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group ID          | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group Name        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Exposure Detail   | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Current Stage     | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group ID          | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group Name        | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Exposure Detail   | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9607: When Application Match field of Dedupe Match Screen with Application Id plus icon <Dedupe_Field_Name> should be visible  Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id plus icon in Dedupe Match Screen
    Then "<Dedupe_Field_Name>" should be visible in Dedupe Match Screen

    Examples:
      | Loan_Type     | Dedupe_Field_Name | Field_Name        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Current Stage     | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group ID          | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Group Name        | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Exposure Detail   | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Current Stage     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group ID          | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Group Name        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Exposure Detail   | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Current Stage     | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group ID          | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Group Name        | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Exposure Detail   | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9608: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed

    Examples:
      | Field_Name        | Loan_Type     | Screen                                          | Field_Name        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | Home Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match    | Home Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Application Match | Personal Loan | KYC Internal Dedupe Matched Application Details | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match    | Personal Loan | KYC Internal Dedupe Matched Application Details | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Application Match | Auto Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match    | Auto Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-yash.sharma
     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9609: When <Field_Name> Dedupe Match Screen open Application Id hyperlink <Screen> must be displayed for  Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user on Dedupe Match Screen open Application Id hyperlink
    Then KYC Internal Dedupe Matched Application Details must be displayed

    Examples:
      | Field_Name        | Loan_Type     | Screen                                          | Field_Name        | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | Home Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Customer Match    | Home Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Application Match | Personal Loan | KYC Internal Dedupe Matched Application Details | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match    | Personal Loan | KYC Internal Dedupe Matched Application Details | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Application Match | Auto Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match    | Auto Loan     | KYC Internal Dedupe Matched Application Details | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9610: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Field_Name        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Done         | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Done         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Done         | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9611: When Customer Match field of Dedupe Match Screen with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Field_Name     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Done         | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Done         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Done         | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9612: When Application Match field of Dedupe Match Screen with <Action> should work properly for  Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Field_Name        | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Done         | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Done         | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Done         | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9613: When Customer Match field of Dedupe Match Screen with <Action> should work properly for Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Field_Name>" No of Dedupe Match hyperlink of "Guarantor"
    When user take "<Action>" in Dedupe Match Screen
    Then "<Action>" should work properly on Dedupe Match Screen

    Examples:
      | Loan_Type     | Action       | Field_Name     | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Done         | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Done         | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Done         | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9614: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Matched Application ID     | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Stage of application       | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application Status         | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Sourcing branch            | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application present in CAS | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Matched Application ID     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Stage of application       | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application Status         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Sourcing branch            | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application present in CAS | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Matched Application ID     | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Stage of application       | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application Status         | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Sourcing branch            | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application present in CAS | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9615: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Matched Application ID     | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Stage of application       | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application Status         | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Sourcing branch            | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application present in CAS | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Matched Application ID     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Stage of application       | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application Status         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Sourcing branch            | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application present in CAS | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Matched Application ID     | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Stage of application       | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application Status         | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Sourcing branch            | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application present in CAS | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9616: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Application Match for  Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | Match_Type        | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Matched Application ID     | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Stage of application       | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application Status         | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Sourcing branch            | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application present in CAS | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Matched Application ID     | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Stage of application       | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application Status         | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Sourcing branch            | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application present in CAS | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Matched Application ID     | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Stage of application       | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application Status         | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Sourcing branch            | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application present in CAS | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9617: Validating the <Field_Name> present in KYC Internal Dedupe Matched Application Details of Customer Match for  Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name>" present in KYC Internal Dedupe Matched Application Details

    Examples:
      | Loan_Type     | Field_Name                 | Match_Type     | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Matched Application ID     | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Stage of application       | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application Status         | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Sourcing branch            | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Application present in CAS | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Matched Application ID     | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Stage of application       | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application Status         | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Sourcing branch            | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Application present in CAS | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Matched Application ID     | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Stage of application       | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application Status         | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Sourcing branch            | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Application present in CAS | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |


  @ImplementedBy-yash.sharma
     #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9618: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Application Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9618: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Guarantor with <Loan_Type> Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Customer Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Customer Match | lead details_indiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9620: When Application Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for  Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | Match_Type        | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Application Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Application Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Application Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9621: When Customer Match field of KYC Internal Dedupe Matched Application Details with <Action> should work properly for Guarantor with <Loan_Type> Non Individual in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user click Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in KYC Internal Dedupe Matched Screen
    Then "<Action>" should work properly on KYC Internal Dedupe Matched Screen

    Examples:
      | Loan_Type     | Action       | Match_Type     | Var_Stage1               | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan     | Maximize     | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Minimize     | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cross        | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Home Loan     | Cancel       | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Maximize     | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Minimize     | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cross        | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Personal Loan | Cancel       | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Maximize     | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Minimize     | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cross        | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Cancel       | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Auto Loan     | Expand All   | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Expand All   | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Expand All   | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Auto Loan     | Collapse All | Customer Match | lead details_nonindiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Home Loan     | Collapse All | Customer Match | lead details_nonindiv_hl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 264                         |
      | Personal Loan | Collapse All | Customer Match | lead details_nonindiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-ayush.garg
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9622: Show the "<NumberOfRows>" rows in Customer Match of Dedupe Match Screen for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number

    Examples:
      | NumberOfRows | Display                                 | More_Less | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | 10           | display                                 | more      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 25           | display                                 | more      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 50           | display                                 | more      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 100          | display                                 | more      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 10           | not display only available rows display | less      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 25           | not display only available rows display | less      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 50           | not display only available rows display | less      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 100          | not display only available rows display | less      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-ayush.garg
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9623: Show the "<NumberOfRows>" rows in Negative Checklist of Dedupe Match Screen for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number

    Examples:
      | NumberOfRows | Display                                 | More_Less | Match_Type               | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | 10           | display                                 | more      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 25           | display                                 | more      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 50           | display                                 | more      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 100          | display                                 | more      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 10           | not display only available rows display | less      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 25           | not display only available rows display | less      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 50           | not display only available rows display | less      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 100          | not display only available rows display | less      | Negative Checklist Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-ayush.garg
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9624: Show the "<NumberOfRows>" rows in Application Match of Dedupe Match Screen for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen
    Then selected <NumberOfRows> rows "<Display>" in case total enteries are "<More_Less>" than selected number

    Examples:
      | NumberOfRows | Display                                 | More_Less | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | 10           | display                                 | more      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 25           | display                                 | more      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 50           | display                                 | more      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 100          | display                                 | more      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 10           | not display only available rows display | less      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 25           | not display only available rows display | less      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 50           | not display only available rows display | less      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | 100          | not display only available rows display | less      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9625: Application Match sorting in Dedupe Match Screen with ascending order by <Field> column for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"

    Examples:
      | Field                 | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Id        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Strength Of Match     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo Cust Id           | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Name         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Date Of Birth         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo CIF Number        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Identification Number | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Unique Id             | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Applicant Type        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9626: Customer Match sorting in Dedupe Match Screen with ascending order by <Field> column for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Ascending" order
    Then Dedupe Match Screen should be sort in "Ascending" order basis of "<Field>"

    Examples:
      | Field                 | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Id        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Strength Of Match     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo Cust Id           | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Name         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Date Of Birth         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo CIF Number        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Identification Number | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Unique Id             | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Applicant Type        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9627: Application Match sorting in Dedupe Match Screen with descending order by <Field> column for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"

    Examples:
      | Field                 | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Id        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Strength Of Match     | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo Cust Id           | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Name         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Date Of Birth         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo CIF Number        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Identification Number | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Unique Id             | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Applicant Type        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9628: Customer Match sorting in Dedupe Match Screen with descending order by <Field> column for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user sort the Dedupe Match Screen by "<Field>" column in "Descending" order
    Then Dedupe Match Screen should be sort in "Descending" order basis of "<Field>"

    Examples:
      | Field                 | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Id        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Strength Of Match     | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo Cust Id           | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Name         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Date Of Birth         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Neo CIF Number        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Identification Number | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Unique Id             | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Applicant Type        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9629: Pagination of Application Match in Dedupe Match Screen of Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page

    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | first | paginate_button previous | disable        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | first | paginate_button next     | enable         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | next  | paginate_button previous | enable         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | last  | paginate_button first    | enable         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | last  | paginate_button previous | enable         | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | last  | paginate_button next     | disable        | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9630: Pagination of Customer Match in Dedupe Match Screen of Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user select "<Page>" page in Dedupe Match Screen
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for dedupe match screen on kyc check page

    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | first | paginate_button previous | disable        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | first | paginate_button next     | enable         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | next  | paginate_button previous | enable         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | last  | paginate_button first    | enable         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | last  | paginate_button previous | enable         | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | last  | paginate_button next     | disable        | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9631: Verify result which is displaying in search results is correct for Dedupe Match Screen of Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Customer Match    | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  #prerequisite: dedupe weightage should be correct as per the definition of dedupe in master.
  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9632: The strength of Match dedupe weightage should be correct as per the definition of dedupe in master in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user check results of strength of Match
    Then strength of Match dedupe weightage should be validate correctly

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match    | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9633: Validating strength of Match data in Dedupe Match Screen should be same for Matches found in Strength of Match in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user check results of strength of Match
    Then Match found in Strength of Match should be same as dedupe strength of match

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match    | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9634: While opening Application Id hyperlink in Dedupe Match Screen the correct details of the application should be visible in view mode for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click Application Id hyperlink in Dedupe Match Screen
    Then correct details of the application should be visible in view mode

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |
      | Customer Match    | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 263                         |

  @ImplementedBy-manish.yadav2
  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9635: Matches Records Pages should be displayed on Negative checklist Matches for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    And user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    When user click on Negative checklist Matched record
    Then Negative Checklist Matched Records should be displayed

    Examples:
      | Match_Type         | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Negative Checklist | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #Pre-requisites to add negative checklist data is master - Negative Checklist and Negative checklist template
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9636: Added negative checklist data is master should display in negative checklist Matches for Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then master data should displayed for negative checklist Matches

    Examples:
      | Match_Type         | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Negative Checklist | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9637: In Application Match By default all application should be ticked to consider for exposure in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then by default all application should be ticked to consider for exposure

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_mal | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9638: In Customer Match By default all application should be ticked to consider for exposure in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then by default all application should be ticked to consider for exposure

    Examples:
      | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9639: In Customer Match System should allow to <action> consider for exposure in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"

    Examples:
      | action | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Tick   | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Untick | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9640: In Application Match System should allow to <action> consider for exposure in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    Then System should allow to "<action>" consider for exposure for "<Match_Type>"

    Examples:
      | action | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Tick   | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |
      | Untick | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9641: In Application Match Once it is linked for exposure after that exposure calculation should happen accordingly in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once linked the exposure
    Then exposure calculation should happen accordingly

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9642: In Customer Match Once it is linked for exposure after that exposure calculation should happen accordingly in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once linked the exposure
    Then exposure calculation should happen accordingly

    Examples:
      | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-manish.yadav2
#FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9643: In Customer Match the link should be allowed for every application in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once tick on link
    Then linking should work properly for every application

    Examples:
      | Match_Type     | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Customer Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
#FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9644: In Application Match the link should be allowed for every application in Guarantor with all Lob's in Kyc Stage <Var_Stage1>
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user once tick on link
    Then linking should work properly for every application

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-manish.yadav2
#FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9645: In Application Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Guarantor with all Lob's in Kyc Stage
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications

    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |

  @ImplementedBy-yash.sharma
#FeatureID-ACAUTOCAS-808
  Scenario Outline: ACAUTOCAS-9646: In Customer Match once the application is linked after that in GCD the global customer ID will be same for linked applications in Guarantor with all Lob's in Kyc Stage
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user reads and save Application Number in Context
    And user opens an application of "<Var_Stage1>" stage variant from "<GridName>" grid
    And user add Guarantor in that Application
    And user open that same application at "<Var_Stage>" stage
    When user click on "<Match_Type>" No of Dedupe Match hyperlink of "Guarantor"
    And user link the application id with Done
    Then in GCD the global customer ID will be same for linked applications
    Examples:
      | Match_Type        | Var_Stage1            | Var_Stage | GridName    | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Application Match | lead details_indiv_pl | kyc       | APPLICATION | sourcing_details.xlsx | home                 | 262                         |