@Epic-Loan_Application_Details
@AuthoredBy-anshika.gupta
@ReviewedBy-sajja.ravikumar
@TechReviewedBy-harshprit.kumar
 @Conventional
Feature: Personal Discussion Screen Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["HL","IHF","MHL","LAP"]}
  # ${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-14234
  @Sanity
    @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14383: Save personal discussion details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_pdDetails>" and row <PersonalDiscussion_pdDetails_rowNum>
    When user fills the personal discussion details
    And user saves the personal discussion details
    Then personal discussion details should be saved successfully
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_pdDetails | PersonalDiscussion_pdDetails_rowNum | applicantType | ApplicationStage   | ProductType   |
      | personal_discussion.xlsx | pd_details                   | 0                                   | indiv         | <ApplicationStage> | <ProductType> |
      | personal_discussion.xlsx | pd_details                   | 1                                   | indiv         | <ApplicationStage> | <ProductType> |
      | personal_discussion.xlsx | pd_details                   | 4                                   | indiv         | <ApplicationStage> | <ProductType> |



# ${ProductType:["HL","IHF","MHL","LAP"]}
# ${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-14234
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14384: Validating fields on Personal Discussion Tab at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    When user opens personal discussion tab
    Then user should be able to see personal details fields with labels as:
      | Name of Applicant/Organization                                                  |
      | Person Met                                                                      |
      | Designation                                                                     |
      | Brief Nature of Business                                                        |
      | No. of Yrs in Business                                                          |
      | Total Family Members                                                            |
      | Educational Background of Applicants                                            |
      | No. of Employees as per Applicant                                               |
      | Comment on Business Model                                                       |
      | Existing Wealth Details as disclosed by Applicant during PD (MV of Assets etc.) |
      | End use of Proposed Loan                                                        |
      | In case of BT (Purpose of Loan taken for)                                       |
      | EMI Comfortable with                                                            |
      | Any Other Observation / Remarks (Business Profile)                              |
      | Name                                                                            |
      | Phone Number                                                                    |
      | LandLine                                                                        |
      | Relation                                                                        |
      | Comments on Financials                                                          |
      | Comments on Banking                                                             |
      | Mitigants/Strengths                                                             |
      | Any Other Observation / Remarks (PD)                                            |
      | Date of Visit                                                                   |
      | Location                                                                        |
      | Loan Recommended                                                                |
      | PD Done by                                                                      |
      | Signature                                                                       |
    Examples:
      | ProductType   | ApplicationStage   | applicantType |
      | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["HL","IHF","MHL","LAP"]}
# ${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-14234
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14385: Field data validation after clicking on cancel at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_pdDetails>" and row <PersonalDiscussion_pdDetails_rowNum>
    And user fills the personal discussion details
    When user clicks on the Cancel
    Then all the filled data should be cleared from the fields
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_pdDetails | PersonalDiscussion_pdDetails_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |


# ${ProductType:["HL","IHF","MHL","LAP"]}
# ${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-14234
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14386:  Display print format after filling details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_pdDetails>" and row <PersonalDiscussion_pdDetails_rowNum>
    And user fills the personal discussion details
    When user clicks on print on personal discussion page
    Then the print format document page should be displayed
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_pdDetails | PersonalDiscussion_pdDetails_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | pd_details                   | 0                                   | <ProductType> | <ApplicationStage> | indiv         |


# ${ProductType:["HL","IHF","MHL","LAP"]}
# ${ApplicationStage:["DDE"]}
   #FeatureID-ACAUTOCAS-14234
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14387:  Validating print button of print format document page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_pdDetails>" and row <PersonalDiscussion_pdDetails_rowNum>
    And user fills the personal discussion details
    And user clicks on print on personal discussion page
    When the user clicks on the print option on the document page
    Then printing page for personal discussion details should be displayed
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_pdDetails | PersonalDiscussion_pdDetails_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | pd_details                   | 0                                   | HL            | DDE                | indiv         |


# ${ProductType:["HL","IHF","MHL","LAP"]}
# ${ApplicationStage:["DDE"]}
   #FeatureID-ACAUTOCAS-14234
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14388:  Validating fields data on printing personal discussion details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_pdDetails>" and row <PersonalDiscussion_pdDetails_rowNum>
    And user fills the personal discussion details
    When user clicks on print on personal discussion page
    Then fields data should come as per filled personal discussion details
      | Name of Applicant/Organization                                                  |
      | Person Met                                                                      |
      | Designation                                                                     |
      | Brief Nature of Business                                                        |
      | No. of Yrs in Business                                                          |
      | Total Family Members                                                            |
      | Educational Background of Applicants                                            |
      | No. of Employees as per Applicant                                               |
      | Comment on Business Model                                                       |
      | Existing Wealth Details as disclosed by Applicant during PD (MV of Assets etc.) |
      | End use of Proposed Loan                                                        |
      | In case of BT (Purpose of Loan taken for)                                       |
      | EMI Comfortable with                                                            |
      | Any Other Observation / Remarks (Business Profile)                              |
      | Name                                                                            |
      | Phone Number                                                                    |
      | LandLine                                                                        |
      | Relation                                                                        |
      | Comments on Financials                                                          |
      | Comments on Banking                                                             |
      | Mitigants/Strengths                                                             |
      | Any Other Observation / Remarks (PD)                                            |
      | Date of Visit                                                                   |
      | Location                                                                        |
      | Loan Recommended                                                                |
      | PD Done by                                                                      |
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_pdDetails | PersonalDiscussion_pdDetails_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["HL","IHF","MHL","LAP"]}
# ${ApplicationStage:["DDE"]}
   #FeatureID-ACAUTOCAS-14234
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14389:  Character limit validation of details in personal discussion screen at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_pdDetails>" and row <PersonalDiscussion_pdDetails_rowNum>
    When user fills "<Field_Name>" field with <Characters> characters
    Then <Left_Characters> characters should be remaining to fill in "<Field_Name>" fields
    Examples:
      | Field_Name                                                                      | Characters | Left_Characters | PersonalDiscussionWB     | PersonalDiscussion_pdDetails | PersonalDiscussion_pdDetails_rowNum | ProductType   | ApplicationStage   | applicantType |
      | Brief Nature of Business                                                        | 0          | 4000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Brief Nature of Business                                                        | 2000       | 2000            | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Brief Nature of Business                                                        | 4000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comment on Business Model                                                       | 0          | 4000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comment on Business Model                                                       | 2000       | 2000            | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comment on Business Model                                                       | 4000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Existing Wealth Details as disclosed by Applicant during PD (MV of Assets etc.) | 0          | 4000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Existing Wealth Details as disclosed by Applicant during PD (MV of Assets etc.) | 2000       | 2000            | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Existing Wealth Details as disclosed by Applicant during PD (MV of Assets etc.) | 4000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comments on Financials                                                          | 0          | 1000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comments on Financials                                                          | 500        | 500             | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comments on Financials                                                          | 1000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comments on Banking                                                             | 0          | 4000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comments on Banking                                                             | 2000       | 2000            | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Comments on Banking                                                             | 4000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Mitigants/Strengths                                                             | 0          | 1000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Mitigants/Strengths                                                             | 500        | 500             | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Mitigants/Strengths                                                             | 1000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observation / Remarks (Business Profile)                              | 0          | 1000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observation / Remarks (Business Profile)                              | 500        | 500             | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observation / Remarks (Business Profile)                              | 1000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observation / Remarks (PD)                                            | 0          | 1000            | personal_discussion.xlsx | pd_details                   | 2                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observation / Remarks (PD)                                            | 500        | 500             | personal_discussion.xlsx | pd_details                   | 3                                   | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observation / Remarks (PD)                                            | 1000       | 0               | personal_discussion.xlsx | pd_details                   | 4                                   | <ProductType> | <ApplicationStage> | indiv         |

 # ${ProductType:["HL","IHF","MHL","LAP"]}
# ${ApplicationStage:["DDE"]}
   #FeatureID-ACAUTOCAS-14234
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: ACAUTOCAS-14390: Validation of Move to Next Stage event on personal discussion screen at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_pdDetails>" and row <PersonalDiscussion_pdDetails_rowNum>
    And user fills the personal discussion details
    And user saves the personal discussion details
    When user clicks on Move to Next stage
    Then application should move to Recommendation stage from "<ApplicationStage>" of "<ProductType>"
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_pdDetails | PersonalDiscussion_pdDetails_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | pd_details                   | 0                                   | <ProductType> | <ApplicationStage> | indiv         |
