@Epic-Committee_Approval
@ReviewedBy-None
@AuthoredBy-vipin.kishor
@Perishable
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-861,ACAUTOCAS-867
Feature:Committee Approval validations

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-aniket.tripathi
    @Release3
  Scenario Outline: ACAUTOCAS-2736: Committee validation for initiate committee decision with condition "<Committee>" at credit approval stage for LoanType "<LoanType>"
    And user opens an application of "<Var_Stage>" stage variant from credit approval grid
    And user reads data from the excel file "<CommitteeApprovalGridWB>" under sheet "<CommitteeApprovalGrid_committeeApproval>" and row <CommitteeApprovalGrid_committeeApproval_rowNum>
    When user selects a committee to take decision
    Then "<Committee>" should display
    Examples:
      | LoanType           | Var_Stage           | Committee                                | CommitteeApprovalGridWB      | CommitteeApprovalGrid_committeeApproval | CommitteeApprovalGrid_committeeApproval_rowNum |
      | Personal Finance   | credit approval     | Committee Name with Committee Code       | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Personal Finance   | credit approval     | Deviation Level of the committee         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Personal Finance   | credit approval     | Role of the all members of the committee | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Personal Finance   | credit approval     | Name of the all members of the committee | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | Committee Name with Committee Code       | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | Deviation Level of the committee         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | Role of the all members of the committee | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | Name of the all members of the committee | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | Committee Name with Committee Code       | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | Deviation Level of the committee         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | Role of the all members of the committee | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | Name of the all members of the committee | committee_approval_grid.xlsx | committee_approval                      | 0                                              |

  @Release3
    @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-2738: Initiate Committee Approval at credit approval stage for LoanType "<LoanType>"
    And user opens an application of "<Var_Stage>" stage variant from credit approval grid
    And user reads data from the excel file "<CommitteeApprovalGridWB>" under sheet "<CommitteeApprovalGrid_committeeApproval>" and row <CommitteeApprovalGrid_committeeApproval_rowNum>
    And user selects a committee to take decision
    When user initiate committee approval
    Then committee approval initiated successfully
    Examples:
      | LoanType           | Var_Stage           | CommitteeApprovalGridWB      | CommitteeApprovalGrid_committeeApproval | CommitteeApprovalGrid_committeeApproval_rowNum |
      | Personal Finance   | credit approval     | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | committee_approval_grid.xlsx | committee_approval                      | 0                                              |

  @Release3
    @ImplementedBy-aniket.tripathi
  Scenario Outline:  ACAUTOCAS-2739: Terminate Committee Approval at credit approval stage for LoanType "<LoanType>"
    And user opens an application of "<Var_Stage>" stage variant from credit approval grid
    And user reads data from the excel file "<CommitteeApprovalGridWB>" under sheet "<CommitteeApprovalGrid_committeeApproval>" and row <CommitteeApprovalGrid_committeeApproval_rowNum>
    And user selects a committee to take decision
    When user initiate committee approval
    Then user can terminate that initiated committee approval
    Examples:
      | LoanType           | Var_Stage           | CommitteeApprovalGridWB      | CommitteeApprovalGrid_committeeApproval | CommitteeApprovalGrid_committeeApproval_rowNum |
      | Personal Finance   | credit approval     | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | committee_approval_grid.xlsx | committee_approval                      | 0                                              |

  @Release3
    @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-2740: Move to next button availability "<Availability>" validation at credit approval stage for LoanType "<LoanType>"
    And user opens an application of "<Var_Stage>" stage variant from credit approval grid
    And user reads data from the excel file "<CommitteeApprovalGridWB>" under sheet "<CommitteeApprovalGrid_committeeApproval>" and row <CommitteeApprovalGrid_committeeApproval_rowNum>
    And user selects a committee to take decision
    When user "<Actions>" committee approval
    Then move to next button should "<Availability>"
    Examples:
      | LoanType           | Var_Stage           | Actions                 | Availability     | CommitteeApprovalGridWB      | CommitteeApprovalGrid_committeeApproval | CommitteeApprovalGrid_committeeApproval_rowNum |
      | Personal Finance   | credit approval     | initiate                | be available     | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Personal Finance   | credit approval     | terminate the initiated | not be available | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | initiate                | be available     | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Home Loan          | credit approval_hl  | terminate the initiated | not be available | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | initiate                | be available     | committee_approval_grid.xlsx | committee_approval                      | 0                                              |
      | Commercial Vehicle | credit approval_mal | terminate the initiated | not be available | committee_approval_grid.xlsx | committee_approval                      | 0                                              |

  @ImplementedBy-akash.bansal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-2741: Checks the Committee Status for all the committee members
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<Var_Stage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CommitteeApprovalGridWB>" under sheet "<CommitteeApprovalGrid_committeeApproval>" and row <CommitteeApprovalGrid_committeeApproval_rowNum>
    And user selects a committee to take decision
    When user initiate committee approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 0
    And user open committee approval grid
    And search the initiated committee approval application
    Then committee decision status display pending for all the committee members
    Examples:
      | ProductType | Var_Stage       | ApplicantType | CommitteeApprovalGridWB      | CommitteeApprovalGrid_committeeApproval | CommitteeApprovalGrid_committeeApproval_rowNum | key | Category |
      | PL          | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | HL          | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | MAL         | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |

  @ImplementedBy-akash.bansal
    @ReleaseLoanAppM5
    @Release3
  Scenario Outline: ACAUTOCAS-2742: "<Decisions>" the decision with reasons
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<Var_Stage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CommitteeApprovalGridWB>" under sheet "<CommitteeApprovalGrid_committeeApproval>" and row <CommitteeApprovalGrid_committeeApproval_rowNum>
    And user selects a committee to take decision
    When user initiate committee approval
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and 0
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<Decisions>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    Examples:
      | ProductType | Decisions   | Reason       | Var_Stage       | ApplicantType | CommitteeApprovalGridWB      | CommitteeApprovalGrid_committeeApproval | CommitteeApprovalGrid_committeeApproval_rowNum | key | Category |
      | PL          | Approve     | Ok           | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | PL          | Reject      | Not Approved | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | PL          | Recommended | Recommended  | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | HL          | Approve     | Ok           | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | HL          | Reject      | Not Approved | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | HL          | Recommended | Recommended  | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | MAL         | Approve     | Ok           | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | MAL         | Reject      | Not Approved | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |
      | MAL         | Recommended | Recommended  | credit approval | indiv         | committee_approval_grid.xlsx | committee_approval                      | 0                                              |     |          |












