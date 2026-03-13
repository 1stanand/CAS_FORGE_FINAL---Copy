@Epic-Loan_Application_Details
@AuthoredBy-anshika.gupta
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
@Conventional
@Islamic

  #Prerequisite: Need analysis checklist for applicant level should be maintained in Masters
Feature: Need Analysis Applicant Level Screen Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


 # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details"]}
  ###Squash:02_CAS-76703
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of <CustomerDetails> in need analysis section after filling personal information details at "<ApplicationStage>" of "<ProductType>"
    And user create new application for "<ProductType>"
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "home" and row 0
    And user enters personal information details
    And user clicks on proceed
    When user click on need analysis tab for "<ProductType>" at "<ApplicationStage>"
    Then user should be able to validate "<CustomerDetails>" in need analysis section
    Examples:
      | ProductType   | CustomerDetails | ApplicationStage   |
      | <ProductType> | Customer Name   | <ApplicationStage> |
      | <ProductType> | Customer ID     | <ApplicationStage> |


 # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
  ###Squash:09_CAS-67507
  ###Bug:CAS-135641
  #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of application number generation after saving need analysis details for applicant level at "<ApplicationStage>" of "<ProductType>"
    Given user is on CAS Login Page
    And user create new application for "<ProductType>"
    And user click on need analysis tab for "<ProductType>" at "<ApplicationStage>"
    When user clicks on save button
    Then application number should be generated
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  @Sanity
  Scenario Outline: Save need analysis details for applicant level at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user clicks on save button
    Then need analysis details should be saved successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Verify all captured data is refreshed on re-execution of need analysis checklist for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user re-executes the need analysis checklist
    Then the checklist should display in its default unfilled state with all captured data cleared
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

#Prerequisite: Update the Need analysis checklist in Masters before re-execution
   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Verify updated need analysis checklist on re-execution of need analysis checklist for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    When user re-executes the need analysis checklist
    Then the updated need analysis checklist should be displayed on the need analysis screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of creation timestamp in need analysis history section after re-executing need analysis checklist for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user re-execute need analysis checklist
    When user navigates to need analysis history section
    Then User should be able to see the creation timestamp of execution of need analysis checklist
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of need analysis details in need analysis history section after re-executing need analysis checklist for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    When user re-execute need analysis checklist
    And user navigates to need analysis history section
    And user clicks on the view details of the most recent creation timestamp entry
    Then details should match exactly with the data filled before re-execution
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validate if need analysis details can be cancelled for applicant level at "<ApplicationStage>" of "<ProductType>"
    And user create new application for "<ProductType>"
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "home" and row 0
    And user enters personal information details
    And user clicks on proceed
    And user click on need analysis tab for "<ProductType>" at "<ApplicationStage>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user performs the cancel action
    Then all captured data should be cleared from the fields
    Examples:
      | ProductType   | ApplicationStage   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | activity.xlsx | need_analysis                | 0                                   |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   ###Squash:10_CAS-74864
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validate if need analysis details can be printed for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user print need analysis checklist
    Then print format pdf document page should be displayed

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   ###Squash:11_CAS-74864
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Send email after filling details on the need analysis page for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user performs the email action
    And user enter the email id
    And user clicks on submit button
    Then email should be sent successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

# ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   ###Squash:11_CAS-74864
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of cancel button in email address modal on the need analysis page for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user performs the email action
    And user enter the email id
    When user clicks on cancel button
    Then email address modal should be cancelled on the need analysis page
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   ###Squash:03_CAS-72391,04_CAS-72391
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Save need analysis details as draft for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user clicks on the Save as Draft button
    Then need analysis details should be saved as draft successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Show error message when saving an unfilled need analysis checklist as draft for applicant level <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And checklist questions are not filled in
    When user clicks on the Save as Draft button without filling checklist
    Then an error message should be displayed stating "<message>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | message        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | No data filled |


   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   ###Squash:09_CAS-74864
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of Save as PDF action on need analysis page for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user performs save as PDF action
    Then need analysis details should be saved as pdf
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
   ###Squash:02_CAS-76703,20_CAS-67507,17_CAS-67507
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of need analysis tab for applicant level at <ApplicationStage> of <ProductType>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    Then user should be able to open the need analysis tab at <ApplicationStage> of <ProductType>
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |

#Prerequisite: Lead Detail Stage should be configured in cancelled applications from workflow configuration
  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
    #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: View need analysis data in cancelled applications grid after cancelling application for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    And user cancels the application at <ApplicationStage>
    When user searches the same application with application number in cancelled applications grid
    And user reviews the cancelled application
    And user opens the "<ApplicationStage>"  of that application from review cancelled application screen
    Then need analysis data should be in view only mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

#Prerequisite: Lead Detail Stage should be configured in cancelled applications from workflow configuration
   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details"]}
  #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of need analysis details in cancelled applications grid after cancelling application for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    And user cancels the application at "<ApplicationStage>"
    When user searches the same application with application number in cancelled applications grid
    And user reviews the cancelled application
    And user opens the "<ApplicationStage>" of that application from review cancelled application screen
    Then user should be able to validate need analysis details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

#Prerequisite: Lead Detail Stage should be configured in rejected applications from workflow configuration
  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-120
  Scenario Outline: View need analysis data in rejected applications grid after rejecting application for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    And user rejects the application at <ApplicationStage>
    When user searches the same application with application number in rejected applications grid
    And user reviews the rejected application
    And user opens the "<ApplicationStage>" of that application from review rejected application screen
    Then need analysis data should be in view only mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


#Prerequisite: Lead Detail Stage should be configured in rejected applications from workflow configuration
   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details"]}
  #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of need analysis details in rejected applications grid after rejecting application for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    And user rejects the application at <ApplicationStage>
    When user searches the same application with application number in rejected applications grid
    And user reviews the rejected application
    And user opens the "<ApplicationStage>" of that application from review rejected application screen
    Then user should be able to validate need analysis details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
  #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of need analysis details in hold applications grid after putting the application on hold for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    And user holds the application at <ApplicationStage>
    When user opens the same application with application number in hold applications from application grid
    Then user should be able to validate need analysis details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |


  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details"]}
  #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: View need analysis data in hold applications grid after putting the application on hold for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    And user holds the application at <ApplicationStage>
    When user opens the same application with application number in hold applications from application grid
    Then need analysis data should be in view only mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details"]}
  #${ApplicantType:["indiv","nonindiv"]}
  # FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of need analysis details in application enquiry screen of an application for applicant level at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    When user opens the application from Enquiry
    And user opens need analysis section of "<ApplicationStage>"
    Then user should be able to validate need analysis details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details"]}
  #${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: View need analysis data for applicant level in application enquiry screen of an application  at "<ApplicationStage>" of "<ProductType>" on application enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user clicks on save button
    When user opens the application from Enquiry
    And user opens need analysis section of "<ApplicationStage>"
    Then need analysis data should be in view only mode
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

#Prerequisite: Need analysis is set to Mandatory
  # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    ###Squash:11_CAS-67507
  #FeatureID-ACAUTOCAS-120
  Scenario Outline: Verify tabs should be in disabled mode except need analysis tab for applicant level at Lead Details stage after punching an application of "<ProductType>"
    When user create new application for "<ProductType>"
    Then all tabs should come in disabled mode except need analysis tab at Lead Details stage

    Examples:
      | ProductType   |
      | <ProductType> |


#Prerequisite: Need analysis is set to Mandatory
 # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  ###Squash:11_CAS-67507
  #FeatureID-ACAUTOCAS-120
  Scenario Outline: Verify need analysis tab for applicant level should be in enabled mode at Lead Details stage after punching an application of "<ProductType>"
    When user create new application for "<ProductType>"
    Then need analysis tab should come be in enabled mode at Lead Details stage
    Examples:
      | ProductType   |
      | <ProductType> |


   #Prerequisite: Need analysis is set to Mandatory
   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
   ###Squash:07_CAS-72391
  #FeatureID-ACAUTOCAS-120
  Scenario Outline: Verify if all tabs should get activated at Lead Details stage after saving need analysis details for applicant level of "<ProductType>"
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    When user clicks on save button
    Then all tabs should get activated at Lead Details stage
    Examples:
      | ProductType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | activity.xlsx | need_analysis                | 0                                   |



