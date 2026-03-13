@Epic-Loan_Application_Details
@AuthoredBy-anshika.gupta
@ReviewedBy-sajja.ravikumar
@ImplementedBy-anshika.gupta
@TechReviewedBy-
 @Conventional
Feature: Personal Discussion Credit Page of Personal Discussion Screen

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
# FeatureID-ACAUTOCAS-14235
  @Sanity
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: <Save> personal discussion credit details in the Personal Discussion Credit page at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    When user fills personal discussion credit details
    And user "<Save>" the personal discussion credit details
    Then personal discussion credit details should be saved successfully
    Examples:
      | Save          | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | Save          | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |
      | Save          | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Save          | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Save And Next | personal_discussion.xlsx | credit_details                   | 1                         | <ProductType> | <ApplicationStage> | indiv         |
      | Save And Next | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Save And Next | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Validation of Save & Next button in the Personal Discussion Credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    When user fills personal discussion credit details
    And user clicks on the save & next button
    Then personal discussion sales page should be displayed to the user
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Validating accordions on Personal Discussion Credit Page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    When user clicks on personal discussion credit tab
    Then following accordions should be present
      | Business Background                                                        |
      | Business Details                                                           |
      | CIBIL Related Remarks                                                      |
      | Any Other Observations                                                    |
      | Reviewer Comments                                                          |
      | Further specific Requirements to process the case-documents/clarifications |
    Examples:
      | ProductType   | ApplicationStage   | applicantType |
      | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Validating fields in Personal Discussion Credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    When user clicks on personal discussion credit tab
    Then user should be able to see following fields
      | Reviewer Name      |
      | Reviewer Signature |
      | Employer id        |
      | Date               |
    Examples:
      | ProductType   | ApplicationStage   | applicantType |
      | <ProductType> | <ApplicationStage> | indiv         |


# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Validating field labels in Personal Discussion Credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    When user clicks on personal discussion credit tab
    Then user should be able to see labels of following fields
      | Reviewer Name      |
      | Reviewer Signature |
      | Employer id        |
      | Date               |
    Examples:
      | ProductType   | ApplicationStage   | applicantType |
      | <ProductType> | <ApplicationStage> | indiv         |


  # ${ProductType:["CEQ","AGRL","FE","CV"]}
  # ${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Validating fields in business details accordion on Personal Discussion Credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    When user clicks on personal discussion credit tab
    Then user should be able to see following fields in business details accordion
      | Nature of Business (Plz provide full details)          |
      | In Business Since                                      |
      | Who started Business and how did it evolved over years |
      | Trends in Turnover for Last 2 years                    |
      | Trends in Profit for Last 2 years                      |
      | Trends of Capital/Networth                             |
      | Reason of Negative trends (if any)                     |
      | Why the Vehicle is needed?                             |
      | Existing Fleet (if any)                                |
      | How would this vehicle result in cost reduction        |
      | Constitution                                           |
      | Date of Incorporation                                  |
      | Flagship Institute under this group                    |
      | Commencement of First Institute                        |
      | Commencement of this Institute                         |
      | Affiliation with                                       |
      | Courses offered                                        |
      | No.of Students                                         |
      | Avg Fee/Student (Annual)                               |
      | Expected annual Increase in the Students               |
      | Self Owned                                             |
      | OutSourced                                             |
      | Bus Fee Expected                                       |
      | EMI Proposed                                           |
    Examples:
      | ProductType   | ApplicationStage   | applicantType |
      | <ProductType> | <ApplicationStage> | indiv         |

    # ${ProductType:["CEQ","AGRL","FE","CV"]}
  # ${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Validating field labels in Business Details on Personal Discussion Credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    When user clicks on personal discussion credit tab
    Then user should be able to see following fields labels in business details accordion
      | Nature of Business (Plz provide full details)          |
      | In Business Since                                      |
      | Who started Business and how did it evolved over years |
      | Trends in Turnover for Last 2 years                    |
      | Trends in Profit for Last 2 years                      |
      | Trends of Capital/Networth                             |
      | Reason of Negative trends (if any)                     |
      | Why the Vehicle is needed?                             |
      | Existing Fleet (if any)                                |
      | How would this vehicle result in cost reduction        |
      | Constitution                                           |
      | Date of Incorporation                                  |
      | Flagship Institute under this group                    |
      | Commencement of First Institute                        |
      | Commencement of this Institute                         |
      | Affiliation with                                       |
      | Courses offered                                        |
      | No.of Students                                         |
      | Avg Fee/Student (Annual)                               |
      | Expected annual Increase in the Students               |
      | Self Owned                                             |
      | OutSourced                                             |
      | Bus Fee Expected                                       |
      | EMI Proposed                                           |
    Examples:
      | ProductType   | ApplicationStage   | applicantType |
      | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: Validating print button of personal discussion credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    And  user fills personal discussion credit details
    When user print personal discussion credit details
    Then the print format pdf document page should be displayed
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Validating <Details> on printing personal discussion credit details at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    And  user fills personal discussion credit details
    When user print personal discussion credit details
    Then "<Details>" should come as per filled personal discussion credit details
    Examples:
      | Details                                                                    | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | Business Background                                                        | personal_discussion.xlsx | credit_details                   | 5                         | <ProductType> | <ApplicationStage> | indiv         |
      | Business Details                                                           | personal_discussion.xlsx | credit_details                   | 1                         | <ProductType> | <ApplicationStage> | indiv         |
      | CIBIL Related Remarks                                                      | personal_discussion.xlsx | credit_details                   | 6                         | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observations                                                     | personal_discussion.xlsx | credit_details                   | 7                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reviewer Comments                                                          | personal_discussion.xlsx | credit_details                   | 8                         | <ProductType> | <ApplicationStage> | indiv         |
      | Further specific Requirements to process the case-documents/clarifications | personal_discussion.xlsx | credit_details                   | 9                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reviewer Name                                                              | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reviewer Signature                                                         | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |
      | Employer id                                                                | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |
      | Date                                                                       | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: Field data validation after clicking on cancel at  "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    And user fills personal discussion credit details
    When user clicks on the Cancel on personal discussion credit page
    Then all the filled data should be cleared from the fields on personal discussion credit page
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | credit_details                   | 1                         | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline: Character limit validation of "<Accordion>" in personal discussion credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    When user fills "<Accordion>" field with "<Characters>" characters in personal discussion credit page
    Then <Left_Characters> characters should be remaining to fill in "<Accordion>" field
    Examples:
      | Accordion                                                                  | Characters | Left_Characters | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | Business Background                                                        | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Business Background                                                        | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Business Background                                                        | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | CIBIL Related Remarks                                                      | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | CIBIL Related Remarks                                                      | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | CIBIL Related Remarks                                                      | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observations                                                     | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observations                                                     | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Any Other Observations                                                     | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reviewer Comments                                                          | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reviewer Comments                                                          | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reviewer Comments                                                          | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Further specific Requirements to process the case-documents/clarifications | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Further specific Requirements to process the case-documents/clarifications | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Further specific Requirements to process the case-documents/clarifications | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |

# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
    @Release
  Scenario Outline: Character limit validation of fields in business details section on personal discussion credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    When user fills "<FieldName>" field with "<Characters>" characters
    Then <Left_Characters> characters should be remaining to fill in "<FieldName>" field of business details section
    Examples:
      | FieldName                                                                  | Characters | Left_Characters | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | Nature of Business (Plz provide full details)                              | 0          | 255             | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Nature of Business (Plz provide full details)                              | 128        | 127             | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Nature of Business (Plz provide full details)                              | 255        | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Who started Business and how did it evolved over years                     | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Who started Business and how did it evolved over years                     | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Who started Business and how did it evolved over years                     | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends in Turnover for Last 2 years                                        | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends in Turnover for Last 2 years                                        | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends in Turnover for Last 2 years                                        | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends in Profit for Last 2 years                                          | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends in Profit for Last 2 years                                          | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends in Profit for Last 2 years                                          | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends of Capital/Networth                                                 | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends of Capital/Networth                                                 | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Trends of Capital/Networth                                                 | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reason of Negative trends (if any)                                         | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reason of Negative trends (if any)                                         | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Reason of Negative trends (if any)                                         | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Why the Vehicle is needed?                                                 | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Why the Vehicle is needed?                                                 | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Why the Vehicle is needed?                                                 | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Courses offered                                                            | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Courses offered                                                            | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Courses offered                                                            | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | Existing Fleet (if any)                                                    | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | Existing Fleet (if any)                                                    | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | Existing Fleet (if any)                                                    | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |
      | How would this vehicle result in cost reduction                            | 0          | 3000            | personal_discussion.xlsx | credit_details                   | 4                         | <ProductType> | <ApplicationStage> | indiv         |
      | How would this vehicle result in cost reduction                            | 1500       | 1500            | personal_discussion.xlsx | credit_details                   | 2                         | <ProductType> | <ApplicationStage> | indiv         |
      | How would this vehicle result in cost reduction                            | 3000       | 0               | personal_discussion.xlsx | credit_details                   | 3                         | <ProductType> | <ApplicationStage> | indiv         |

# Prerequisite : At DDE stage, loan details and document details should be saved
# ${ProductType:["CEQ","AGRL","FE","CV"]}
# ${ApplicationStage:["DDE"]}
#FeatureID-ACAUTOCAS-14235
  @ImplementedBy-anshika.gupta
  @Release
  Scenario Outline:Validation of Move to Next Stage event on Personal Discussion Credit page at "<ApplicationStage>" of "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens personal discussion tab
    And user clicks on personal discussion credit tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_creditDetails>" and row <PersonalDiscussion_rowNum>
    And user fills personal discussion credit details
    And user saves the personal discussion credit details
    When user clicks on Move to Next stage
    Then application should move to Credit Approval Stage from "<ApplicationStage>" of "<ProductType>"
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_creditDetails | PersonalDiscussion_rowNum | ProductType   | ApplicationStage   | applicantType |
      | personal_discussion.xlsx | credit_details                   | 0                         | <ProductType> | <ApplicationStage> | indiv         |







