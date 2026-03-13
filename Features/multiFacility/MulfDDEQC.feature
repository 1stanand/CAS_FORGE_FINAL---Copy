@AuthoredBy-shruti.srivastava1
@ReviewedBy-
@TechReviewedBy-
@UIChange
@ImplementedBy-Gaurav.Agarwal
#EpicID- CAS-253108
#StoryID- CAS-255876
@CAS-255876
@DevTrack
@GA-9.0


Feature: Introduction of DDEQC stage in multi facility workflow

    Background:   Given user is on the CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


# Pre-Requisites
# Lob configured - Yes
# This is applicable for product type  - Multi Facility

#${ApplicantType:["Individual , Non-Individual]}
#${ProductType:["MULF"]
#${ApplicationStage : ["DDE"]}
  Scenario Outline: A new mandatory stage 'DDEQC' is added in workflow of "MULF" for < ApplicantType >
    And user opens an application of "MULF" product type as "<ApplicantType>" applicant at "DDE" for "" with "" from application grid
    When user clicks on move to next stage
    Then Application should move to "<FinalStage>" Stage using "Search" service
    Examples:
      | ApplicantType  | FinalStage |
      | Individual     | DDE_QC     |
      | Non-Individual | DDE_QC     |

#${ApplicantType:["Individual , Non-Individual]}
#${ProductType:["MULF"]
#${ApplicationStage : ["DDE QC"]}

  Scenario Outline: View mode screen new mandatory stage 'DDEQC' is added in workflow of "MULF" for < ApplicantType >
    And user opens an application of "MULF" product type as "<ApplicantType>" applicant at "DDE_QC" for "" with "" from application grid
    Then Field should be visible as view mode at provided tabs

      | Applicant Information    |
      | Loan details             |
      | Deals & Facility details |
      | Documents                |
      | GST                      |
      | Personal discussion      |
      | Uploads                  |
      | References               |
      | Summary Analysis         |
      | Checklist                |
      | Video KYC                |

    Examples:
      | ApplicantType  |
      | Individual     |
      | Non-Individual |


#${ApplicantType:["Individual , Non-Individual]}
#${ProductType:["MULF"]
#${ApplicationStage : ["DDE QC"]}

  Scenario Outline: Verify mandatory fields are visible on "DDE_QC" in "MULF"
    And user opens an application of "MULF" product type as "<ApplicantType>" applicant at "DDE_QC" for "" with "" from application grid
    And user navigate to DDE QC stage decision tab
    Then  Field should be visible as mandatory at stage decision tab
      | Compliance decision | Yes |
      | Reason              | Yes |
      | Description         | Yes |
      | Decision Comments   | No  |
    Examples:
      | ApplicantType  |
      | Individual     |
      | Non-Individual |


#${ApplicantType:["Individual , Non-Individual]}
#${ProductType:["MULF"]#${ApplicationStage : ["DDE QC"]}
  Scenario Outline:  Validate rejection of record at "DDE_QC"
    And user opens an application of "MULF" product type as "<ApplicantType>" applicant at "DDE_QC" for "" with "" from application grid
    And user navigate to DDE QC stage decision tab
    And user mark the decision as "<ComplaintStatus>" in stage decision tab
    And user saves stage decision
    Then Application should move to "<FinalStage>" Stage

    Examples:
      | ApplicantType  | ComplaintStatus | FinalStage      |
      | Non-Individual | Reject          | DDE             |
      | Non-Individual | SendBack        | DDE             |
      | Non-Individual | Approve         | Credit Approval |


#${ApplicantType:["Individual , Non-Individual]}
#${ProductType:["MULF"]
#${ApplicationStage : ["DDE QC"]}
  Scenario Outline: validate cancellation of data entered in stage decision tab
    And user opens an application of "MULF" product type as "<ApplicantType>" applicant at "DDE_QC" for "" with "" from application grid
    And user navigate to DDE QC stage decision tab
    And user mark the decision as "Approve" in stage decision tab
    When user clicks on cancel button of stage Decision
    Then verify data gets removed from stage decision

    Examples:
      | ApplicantType  |
      | Individual     |
      | Non-Individual |


#${ApplicantType:["Individual , Non-Individual]}
#${ProductType:["MULF"]
#${ApplicationStage : ["DDE QC"]}

  Scenario Outline: Field validation on DDE_QC in MULF
    And user opens an application of "MULF" product type as "<ApplicantType>" applicant at "DDE_QC" for "" with "" from application grid
    When user fills all fields except "<FieldName>" field in stage Decision
    And user saves stage decision
    Then an error occurred to fill "<FieldName>" field in stage decision

    Examples:
      | ApplicantType | FieldName           |
      | Non-Individual    | Reason              |
      | Non-Individual    | Compliance decision |