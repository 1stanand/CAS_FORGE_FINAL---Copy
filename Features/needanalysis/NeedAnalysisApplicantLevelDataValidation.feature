@Epic-Loan_Application_Details
@AuthoredBy-anshika.gupta
@ImplementedBy-anshika.gupta
@ReviewedBy-sajja.ravikumar
@TechReviewedBy-
@Conventional
@Islamic
  #Prerequisite:
  # 1) Need analysis checklist for applicant level should be maintained in Masters
  # 2 Questions for every question type should be maintained in Masters.
  # 3) Need analysis page must have the 9 questions of following question types available:
#           -Amount
#           -Calculation
#           -Custom LOV
#           -Date
#           -Numeric Value
#           -Reference
#           -Score
#           -Text Value
#           -Yes/No
   #4) Ensure that in the master data , reference-CITY should be mapped for Question with question type 'Reference'.

Feature: Field Data Validation of all questions of applicant level form in need analysis section

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Prerequisite: Questions of questionType amount , date , numeric and Yes/No should be set to mandatory in Masters
   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Show error when saving need analysis details without filling <Mandatory_Question> of <QuestionType> in applicant level need analysis checklist at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    When user fills the need analysis checklist except "<Mandatory_Question>" of "<QuestionType>"
    And user saves the need analysis details
    Then the form should not be saved, displaying an error message
    Examples:
      | ProductType   | Mandatory_Question          | QuestionType  | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | age of customer             | Numeric Value | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | Loan Amount                 | Amount        | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | Application Submission date | Date          | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | Is co-applicant included?   | Yes/No        | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

# Prerequisite: Questions of questionType amount , date , numeric and Yes/No should be set to mandatory in Masters
    # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
    @Sanity
    #FeatureID-ACAUTOCAS-120
  Scenario Outline: Saving need analysis details after filling <Question> questions in applicant level need analysis checklist at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis checklist with "<Question>" questions
    When user saves the need analysis details
    Then need analysis details should be saved successfully
    Examples:
      | ProductType   | Question  | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | mandatory | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | all       | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

    # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: "<QuestionType>" type validation of applicant level need analysis checklist <Question_Name> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user clicks on need analysis tab
    Then "<Question_Name>" question should be of "<QuestionType>" type in need analysis checklist
    Examples:
      | ProductType   | Question_Name               | QuestionType  | ApplicationStage   | ApplicantType   |
      | <ProductType> | age of customer             | Numeric Value | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Loan Amount                 | Amount        | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Application Submission date | Date          | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Is co-applicant included?   | Dropdown      | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Preferred Loan Term         | Dropdown      | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Credit Score check          | Dropdown      | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Interest Rate calculation   | Non-editable  | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Location                    | Reference     | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | customer occupation details | Text value    | <ApplicationStage> | <ApplicantType> |


    # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Email ID field validation with <Validity> data on the applicant level need analysis page at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user performs the email action
    When user enters "<Validity>" email ID with "<var>" on the need analysis page
    Then email id field should "<Throws_notThrows>" error with "<var>"
    Examples:
      | ProductType   | Validity | var                             | Throws_notThrows | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | valid    | valid format                    | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | invalid  | missing .com                    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 46                                  |
      | <ProductType> | invalid  | missing @                       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 47                                  |
      | <ProductType> | valid    | maximum characters              | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 48                                  |
      | <ProductType> | invalid  | more than 50 characters         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 49                                  |
      | <ProductType> | valid    | 25 characters                   | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 50                                  |
      | <ProductType> | valid    | dot in local part and subdomain | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 51                                  |
      | <ProductType> | valid    | underscore in local part        | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 52                                  |
      | <ProductType> | invalid  | underscore in domain            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 53                                  |
      | <ProductType> | valid    | plus sign in local part         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 54                                  |
      | <ProductType> | invalid  | plus sign in domain part        | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 55                                  |
      | <ProductType> | valid    | hyphen in local part            | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 56                                  |
      | <ProductType> | invalid  | hyphen in domain part           | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 57                                  |
      | <ProductType> | invalid  | missing domain part             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 58                                  |
      | <ProductType> | invalid  | missing domain name             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 59                                  |
      | <ProductType> | invalid  | missing local part              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 60                                  |
      | <ProductType> | invalid  | domain starts with hyphen       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 61                                  |
      | <ProductType> | invalid  | consecutive dots in domain      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 62                                  |
      | <ProductType> | valid    | consecutive dots in local part  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 63                                  |
      | <ProductType> | invalid  | trailing dot                    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 64                                  |
      | <ProductType> | invalid  | quotation marks in local part   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 65                                  |
      | <ProductType> | invalid  | special character in domain     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 66                                  |
      | <ProductType> | invalid  | spaces in local part            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 67                                  |
      | <ProductType> | invalid  | spaces in domain part           | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 68                                  |
      | <ProductType> | invalid  | leading spaces                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 69                                  |
      | <ProductType> | invalid  | trailing spaces                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 70                                  |
      | <ProductType> | valid    | alphanumeric characters         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 71                                  |
      | <ProductType> | invalid  | character with apostrophe       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 72                                  |
      | <ProductType> | invalid  | comment in email                | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 73                                  |


 #Prerequisite:1) Ensure that in the master data , Question with question type 'Date' is maintained  with the "Allow future date" setting enabled.
#               2) Ensure that in the master data , values(city) should be mapped for Question with question type 'Reference'.

   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of "<QuestionType>" type field  with <Validity> <InputType> in applicant level need analysis detail at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    When user fills "<Validity>" data in "<QuestionType>" type field with "<InputType>" in need analysis detail
    Then "<QuestionType>" type field in need analysis detail should "<Throws_notThrows>" error
    Examples:
      | ProductType   | QuestionType | Validity | InputType                                                     | Throws_notThrows | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | Amount       | invalid  | Positive Numeric - more than 18 digits                        | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 1                                   |
      | <ProductType> | Amount       | valid    | Positive Numeric - less than 18 digits                        | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 2                                   |
      | <ProductType> | Amount       | valid    | Positive Numeric - max limit                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 3                                   |
      | <ProductType> | Amount       | valid    | Positive Numeric - mid value                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 4                                   |
      | <ProductType> | Amount       | invalid  | Negative Numeric                                              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 5                                   |
      | <ProductType> | Amount       | valid    | Leading zeroes                                                | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 6                                   |
      | <ProductType> | Amount       | valid    | Zero                                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 7                                   |
      | <ProductType> | Amount       | valid    | Decimal                                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 8                                   |
      | <ProductType> | Amount       | valid    | positive values and upto 18 digits more than 2 decimal places | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 9                                   |
      | <ProductType> | Amount       | valid    | positive values and upto 18 digits upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 10                                  |
      | <ProductType> | Amount       | invalid  | Leading Space in digits                                       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 11                                  |
      | <ProductType> | Amount       | invalid  | Trailing Space in digits                                      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 12                                  |
      | <ProductType> | Amount       | invalid  | Spaces within digits                                          | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 13                                  |
      | <ProductType> | Amount       | invalid  | character                                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | Amount       | invalid  | special character                                             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Amount       | invalid  | alphanumeric                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Amount       | invalid  | character with dot                                            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 17                                  |
      | <ProductType> | Amount       | invalid  | character with apostrophe                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 18                                  |
      | <ProductType> | Amount       | invalid  | character with underscore                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 19                                  |
      | <ProductType> | Amount       | invalid  | character with hyphen                                         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 20                                  |
      | <ProductType> | Amount       | invalid  | character with trailing space                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Amount       | invalid  | character with leading space                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Amount       | invalid  | character with spaces in between                              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 23                                  |
      | <ProductType> | Numeric      | valid    | Positive Numeric - less than 250 digits                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 25                                  |
      | <ProductType> | Numeric      | valid    | Positive Numeric - max limit                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 26                                  |
      | <ProductType> | Numeric      | valid    | Positive Numeric - mid value                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 27                                  |
      | <ProductType> | Numeric      | valid    | Negative Numeric                                              | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 5                                   |
      | <ProductType> | Numeric      | valid    | Leading zeroes                                                | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 6                                   |
      | <ProductType> | Numeric      | valid    | Zero                                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 7                                   |
      | <ProductType> | Numeric      | valid    | Decimal                                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 8                                   |
      | <ProductType> | Numeric      | valid    | positive value and upto 250 digits more than 2 decimal places | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 28                                  |
      | <ProductType> | Numeric      | valid    | positive value and upto 250 digits upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 29                                  |
      | <ProductType> | Numeric      | invalid  | Leading Space in digits                                       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 11                                  |
      | <ProductType> | Numeric      | invalid  | Trailing Space in digits                                      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 12                                  |
      | <ProductType> | Numeric      | invalid  | Spaces within digits                                          | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 13                                  |
      | <ProductType> | Numeric      | invalid  | character                                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | Numeric      | invalid  | special character                                             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Numeric      | invalid  | alphanumeric                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Numeric      | invalid  | character with dot                                            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 17                                  |
      | <ProductType> | Numeric      | invalid  | character with apostrophe                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 18                                  |
      | <ProductType> | Numeric      | invalid  | character with underscore                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 19                                  |
      | <ProductType> | Numeric      | invalid  | character with hyphen                                         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 20                                  |
      | <ProductType> | Numeric      | invalid  | character with trailing space                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Numeric      | invalid  | character with leading space                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Numeric      | invalid  | character with spaces in between                              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 23                                  |
      | <ProductType> | Date         | valid    | correct date format                                           | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 30                                  |
      | <ProductType> | Date         | invalid  | incorrect date format                                         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 31                                  |
      | <ProductType> | Date         | valid    | less than current date                                        | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 32                                  |
      | <ProductType> | Date         | valid    | greater than current date                                     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 33                                  |
      | <ProductType> | Date         | invalid  | Year of date less than 1942                                   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 34                                  |
      | <ProductType> | Date         | valid    | Year of date greater than 1942                                | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 35                                  |
      | <ProductType> | Date         | valid    | Year of date equal to 1942                                    | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 36                                  |
      | <ProductType> | Date         | invalid  | only numbers                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 37                                  |
      | <ProductType> | Date         | invalid  | characters                                                    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | Date         | invalid  | leading space                                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Date         | invalid  | trailing space                                                | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Date         | invalid  | special characters                                            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Date         | invalid  | alphanumeric                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Text Value   | valid    | character with maximum length                                 | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 38                                  |
      | <ProductType> | Text Value   | valid    | less than 250 characters                                      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 39                                  |
      | <ProductType> | Text Value   | valid    | characters with mid value of max length                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 41                                  |
      | <ProductType> | Text Value   | valid    | Positive numbers only                                         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 42                                  |
      | <ProductType> | Text Value   | valid    | Negative numbers only                                         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 43                                  |
      | <ProductType> | Text Value   | valid    | Zero                                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 7                                   |
      | <ProductType> | Text Value   | valid    | Decimal                                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 8                                   |
      | <ProductType> | Text Value   | valid    | Leading Space in digits                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 11                                  |
      | <ProductType> | Text Value   | valid    | Trailing Space in digits                                      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 12                                  |
      | <ProductType> | Text Value   | valid    | Spaces within digits                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 13                                  |
      | <ProductType> | Text Value   | valid    | special character                                             | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Text Value   | valid    | alphanumeric                                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Text Value   | valid    | character with dot                                            | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 17                                  |
      | <ProductType> | Text Value   | valid    | character with apostrophe                                     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 18                                  |
      | <ProductType> | Text Value   | valid    | character with underscore                                     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 19                                  |
      | <ProductType> | Text Value   | valid    | character with hyphen                                         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 20                                  |
      | <ProductType> | Text Value   | valid    | character with trailing space                                 | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Text Value   | valid    | character with leading space                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Text Value   | valid    | character with spaces in between                              | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 23                                  |
      | <ProductType> | Reference    | valid    | mapped data                                                   | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 44                                  |
      | <ProductType> | Reference    | invalid  | unmapped data                                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 45                                  |

 #Prerequisite:1) Ensure that in the master data ,Question with question type 'Date' is maintained  with the "Allow future date" setting disabled.
   # ${ProductType:["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of Date Question Type field with <Validity> <InputType> in applicant level need analysis detail that allows future dates at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    When user fills "<Validity>" data in "Date" type field with "<InputType>" in need analysis detail
    Then "Date" type field in need analysis detail should "<Throws_notThrows>" error
    Examples:
      | ProductType   | Validity | InputType                      | Throws_notThrows | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | valid    | correct date format            | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 30                                  |
      | <ProductType> | invalid  | incorrect date format          | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 31                                  |
      | <ProductType> | valid    | less than current date         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 32                                  |
      | <ProductType> | invalid  | greater than current date      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 33                                  |
      | <ProductType> | valid    | Year of date greater than 1942 | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 34                                  |
      | <ProductType> | invalid  | Year of date less than 1942    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 35                                  |
      | <ProductType> | valid    | Year of date equal to 1942     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 36                                  |
      | <ProductType> | invalid  | only numbers                   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 37                                  |
      | <ProductType> | invalid  | characters                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | invalid  | special characters             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | invalid  | alphanumeric                   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |

#==========================================================Lobs which start from DDE=============================================================================================================================================================================================================================

# Prerequisite: Questions of questionType amount , date , numeric and Yes/No should be set to mandatory in Masters
     # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Show error when saving need analysis details without filling "<Mandatory_Question>" of <QuestionType> in applicant level need analysis checklist at "<ApplicationStage>" of "<ProductType>" which starts from DDE stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    When user fills the need analysis checklist except "<Mandatory_Question>" of "<QuestionType>"
    And user saves the need analysis details
    Then the form should not be saved, displaying an error message
    Examples:
      | ProductType   | Mandatory_Question          | QuestionType  | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | age of customer             | Numeric Value | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | Loan Amount                 | Amount        | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | Application Submission date | Date          | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | Is co-applicant included?   | Yes/No        | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

# Prerequisite: Questions of questionType amount , date , numeric and Yes/No should be set to mandatory in Masters
     # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
    @Sanity
    #FeatureID-ACAUTOCAS-120
  Scenario Outline: Saving need analysis details after filling <Question> questions in applicant level need analysis checklist at "<ApplicationStage>" of "<ProductType>" which starts from DDE stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis checklist with "<var>" questions
    When user saves the need analysis details
    Then need analysis details should be saved successfully
    Examples:
      | ProductType   | var       | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | mandatory | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | all       | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |

   # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: "<QuestionType>" type validation of applicant level need analysis checklist <Question_Name> at <ApplicationStage> for <ProductType> which starts from DDE stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    When user clicks on need analysis tab
    Then "<Question_Name>" question should be of "<QuestionType>" type in need analysis checklist
    Examples:
      | ProductType   | Question_Name               | QuestionType  | ApplicationStage   | ApplicantType   |
      | <ProductType> | age of customer             | Numeric Value | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Loan Amount                 | Amount        | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Application Submission date | Date          | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Is co-applicant included?   | Dropdown      | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Preferred Loan Term         | Dropdown      | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Credit Score check          | Dropdown      | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Interest Rate calculation   | Non-editable  | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | Location                    | Reference     | <ApplicationStage> | <ApplicantType> |
      | <ProductType> | customer occupation details | Text value    | <ApplicationStage> | <ApplicantType> |


    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
   #FeatureID-ACAUTOCAS-120
  Scenario Outline: Email ID field validation with <Validity> data on the applicant level need analysis page at <ApplicationStage> of <ProductType> which starts from DDE stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user click on need analysis tab for "<ProductType>"
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    And user fills the need analysis detail
    And user performs the email action
    When user enters "<Validity>" email ID with "<var>" on the need analysis page
    Then email id field should "<Throws_notThrows>" error with "<var>"
    Examples:
      | ProductType   | Validity | var                             | Throws_notThrows | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | valid    | valid format                    | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 0                                   |
      | <ProductType> | invalid  | missing .com                    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 46                                  |
      | <ProductType> | invalid  | missing @                       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 47                                  |
      | <ProductType> | valid    | maximum characters              | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 48                                  |
      | <ProductType> | invalid  | more than 50 characters         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 49                                  |
      | <ProductType> | valid    | 25 characters                   | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 50                                  |
      | <ProductType> | valid    | dot in local part and subdomain | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 51                                  |
      | <ProductType> | valid    | underscore in local part        | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 52                                  |
      | <ProductType> | invalid  | underscore in domain            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 53                                  |
      | <ProductType> | valid    | plus sign in local part         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 54                                  |
      | <ProductType> | invalid  | plus sign in domain part        | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 55                                  |
      | <ProductType> | valid    | hyphen in local part            | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 56                                  |
      | <ProductType> | invalid  | hyphen in domain part           | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 57                                  |
      | <ProductType> | invalid  | missing domain part             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 58                                  |
      | <ProductType> | invalid  | missing domain name             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 59                                  |
      | <ProductType> | invalid  | missing local part              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 60                                  |
      | <ProductType> | invalid  | domain starts with hyphen       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 61                                  |
      | <ProductType> | invalid  | consecutive dots in domain      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 62                                  |
      | <ProductType> | valid    | consecutive dots in local part  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 63                                  |
      | <ProductType> | invalid  | trailing dot                    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 64                                  |
      | <ProductType> | invalid  | quotation marks in local part   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 65                                  |
      | <ProductType> | invalid  | special character in domain     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 66                                  |
      | <ProductType> | invalid  | spaces in local part            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 67                                  |
      | <ProductType> | invalid  | spaces in domain part           | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 68                                  |
      | <ProductType> | invalid  | leading spaces                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 69                                  |
      | <ProductType> | invalid  | trailing spaces                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 70                                  |
      | <ProductType> | valid    | alphanumeric characters         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 71                                  |
      | <ProductType> | invalid  | character with apostrophe       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 72                                  |
      | <ProductType> | invalid  | comment in email                | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 73                                  |



 #Prerequisite:1) Ensure that in the master data , Question with question type 'Date' is maintained  with the "Allow future date" setting enabled.
#               2) Ensure that in the master data , values(city) should be mapped for Question with question type 'Reference'.

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
  #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of "<QuestionType>" type field  with <Validity> <InputType> in applicant level need analysis detail at <ApplicationStage> for <ProductType> which starts from DDE stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    When user fills "<Validity>" data in "<QuestionType>" type field with "<InputType>" in need analysis detail
    Then "<QuestionType>" type field in need analysis detail should "<Throws_notThrows>" error
    Examples:
      | ProductType   | QuestionType | Validity | InputType                                                     | Throws_notThrows | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | Amount       | invalid  | Positive Numeric - more than 18 digits                        | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 1                                   |
      | <ProductType> | Amount       | valid    | Positive Numeric - less than 18 digits                        | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 2                                   |
      | <ProductType> | Amount       | valid    | Positive Numeric - max limit                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 3                                   |
      | <ProductType> | Amount       | valid    | Positive Numeric - mid value                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 4                                   |
      | <ProductType> | Amount       | invalid  | Negative Numeric                                              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 5                                   |
      | <ProductType> | Amount       | valid    | Leading zeroes                                                | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 6                                   |
      | <ProductType> | Amount       | valid    | Zero                                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 7                                   |
      | <ProductType> | Amount       | valid    | Decimal                                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 8                                   |
      | <ProductType> | Amount       | valid    | positive values and upto 18 digits more than 2 decimal places | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 9                                   |
      | <ProductType> | Amount       | valid    | positive values and upto 18 digits upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 10                                  |
      | <ProductType> | Amount       | invalid  | Leading Space in digits                                       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 11                                  |
      | <ProductType> | Amount       | invalid  | Trailing Space in digits                                      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 12                                  |
      | <ProductType> | Amount       | invalid  | Spaces within digits                                          | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 13                                  |
      | <ProductType> | Amount       | invalid  | character                                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | Amount       | invalid  | special character                                             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Amount       | invalid  | alphanumeric                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Amount       | invalid  | character with dot                                            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 17                                  |
      | <ProductType> | Amount       | invalid  | character with apostrophe                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 18                                  |
      | <ProductType> | Amount       | invalid  | character with underscore                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 19                                  |
      | <ProductType> | Amount       | invalid  | character with hyphen                                         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 20                                  |
      | <ProductType> | Amount       | invalid  | character with trailing space                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Amount       | invalid  | character with leading space                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Amount       | invalid  | character with spaces in between                              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 23                                  |
      | <ProductType> | Numeric      | valid    | Positive Numeric - less than 250 digits                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 25                                  |
      | <ProductType> | Numeric      | valid    | Positive Numeric - max limit                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 26                                  |
      | <ProductType> | Numeric      | valid    | Positive Numeric - mid value                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 27                                  |
      | <ProductType> | Numeric      | valid    | Negative Numeric                                              | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 5                                   |
      | <ProductType> | Numeric      | valid    | Leading zeroes                                                | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 6                                   |
      | <ProductType> | Numeric      | valid    | Zero                                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 7                                   |
      | <ProductType> | Numeric      | valid    | Decimal                                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 8                                   |
      | <ProductType> | Numeric      | valid    | positive value and upto 250 digits more than 2 decimal places | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 28                                  |
      | <ProductType> | Numeric      | valid    | positive value and upto 250 digits upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 29                                  |
      | <ProductType> | Numeric      | invalid  | Leading Space in digits                                       | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 11                                  |
      | <ProductType> | Numeric      | invalid  | Trailing Space in digits                                      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 12                                  |
      | <ProductType> | Numeric      | invalid  | Spaces within digits                                          | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 13                                  |
      | <ProductType> | Numeric      | invalid  | character                                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | Numeric      | invalid  | special character                                             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Numeric      | invalid  | alphanumeric                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Numeric      | invalid  | character with dot                                            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 17                                  |
      | <ProductType> | Numeric      | invalid  | character with apostrophe                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 18                                  |
      | <ProductType> | Numeric      | invalid  | character with underscore                                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 19                                  |
      | <ProductType> | Numeric      | invalid  | character with hyphen                                         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 20                                  |
      | <ProductType> | Numeric      | invalid  | character with trailing space                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Numeric      | invalid  | character with leading space                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Numeric      | invalid  | character with spaces in between                              | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 23                                  |
      | <ProductType> | Date         | valid    | correct date format                                           | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 30                                  |
      | <ProductType> | Date         | invalid  | incorrect date format                                         | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 31                                  |
      | <ProductType> | Date         | valid    | less than current date                                        | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 32                                  |
      | <ProductType> | Date         | valid    | greater than current date                                     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 33                                  |
      | <ProductType> | Date         | invalid  | Year of date less than 1942                                   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 34                                  |
      | <ProductType> | Date         | valid    | Year of date greater than 1942                                | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 35                                  |
      | <ProductType> | Date         | valid    | Year of date equal to 1942                                    | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 36                                  |
      | <ProductType> | Date         | invalid  | only numbers                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 37                                  |
      | <ProductType> | Date         | invalid  | characters                                                    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | Date         | invalid  | leading space                                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Date         | invalid  | trailing space                                                | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Date         | invalid  | special characters                                            | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Date         | invalid  | alphanumeric                                                  | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Text Value   | valid    | character with maximum length                                 | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 38                                  |
      | <ProductType> | Text Value   | valid    | less than 250 characters                                      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 39                                  |
      | <ProductType> | Text Value   | valid    | characters with mid value of max length                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 41                                  |
      | <ProductType> | Text Value   | valid    | Positive numbers only                                         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 42                                  |
      | <ProductType> | Text Value   | valid    | Negative numbers only                                         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 43                                  |
      | <ProductType> | Text Value   | valid    | Zero                                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 7                                   |
      | <ProductType> | Text Value   | valid    | Decimal                                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 8                                   |
      | <ProductType> | Text Value   | valid    | Leading Space in digits                                       | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 11                                  |
      | <ProductType> | Text Value   | valid    | Trailing Space in digits                                      | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 12                                  |
      | <ProductType> | Text Value   | valid    | Spaces within digits                                          | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 13                                  |
      | <ProductType> | Text Value   | valid    | special character                                             | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | Text Value   | valid    | alphanumeric                                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |
      | <ProductType> | Text Value   | valid    | character with dot                                            | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 17                                  |
      | <ProductType> | Text Value   | valid    | character with apostrophe                                     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 18                                  |
      | <ProductType> | Text Value   | valid    | character with underscore                                     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 19                                  |
      | <ProductType> | Text Value   | valid    | character with hyphen                                         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 20                                  |
      | <ProductType> | Text Value   | valid    | character with trailing space                                 | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 21                                  |
      | <ProductType> | Text Value   | valid    | character with leading space                                  | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 22                                  |
      | <ProductType> | Text Value   | valid    | character with spaces in between                              | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 23                                  |
      | <ProductType> | Reference    | valid    | mapped data                                                   | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 44                                  |
      | <ProductType> | Reference    | invalid  | unmapped data                                                 | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 45                                  |

#Prerequisite:1) Ensure that in the master data ,Question with question type 'Date' is maintained  with the "Allow future date" setting disabled.
     # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE"]}
   #${ApplicantType:["indiv","nonindiv"]}
  @ImplementedBy-anshika.gupta
    @Release
  #FeatureID-ACAUTOCAS-120
  Scenario Outline: Validation of Date Question Type field with <Validity> <InputType> in applicant level need analysis detail that allows future dates at <ApplicationStage> for <ProductType> which starts from DDE stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user clicks on need analysis tab
    And user reads data from the excel file "<ActivityWB>" under sheet "<Activity_needAnalysisDetails>" and row <Activity_needAnalysisDetails_rowNum>
    When user fills "<Validity>" data in "Date" type field with "<InputType>" in need analysis detail
    Then "Date" type field in need analysis detail should "<Throws_notThrows>" error
    Examples:
      | ProductType   | Validity | InputType                      | Throws_notThrows | ApplicationStage   | ApplicantType   | ActivityWB    | Activity_needAnalysisDetails | Activity_needAnalysisDetails_rowNum |
      | <ProductType> | valid    | correct date format            | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 30                                  |
      | <ProductType> | invalid  | incorrect date format          | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 31                                  |
      | <ProductType> | valid    | less than current date         | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 32                                  |
      | <ProductType> | invalid  | greater than current date      | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 33                                  |
      | <ProductType> | valid    | Year of date greater than 1942 | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 34                                  |
      | <ProductType> | invalid  | Year of date less than 1942    | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 35                                  |
      | <ProductType> | valid    | Year of date equal to 1942     | not throw any    | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 36                                  |
      | <ProductType> | invalid  | only numbers                   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 37                                  |
      | <ProductType> | invalid  | characters                     | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 14                                  |
      | <ProductType> | invalid  | special characters             | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 15                                  |
      | <ProductType> | invalid  | alphanumeric                   | throw an         | <ApplicationStage> | <ApplicantType> | activity.xlsx | need_analysis                | 16                                  |




