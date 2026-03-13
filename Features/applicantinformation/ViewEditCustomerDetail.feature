@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@AppInfoAdoption
@Perishable
#FeatureID-ACAUTOCAS-129,ACAUTOCAS-142, ACAUTOCAS-143

    # ${ApplicantType:["indiv","nonindiv"]}
Feature:View Edit Customer Detail


  Scenario Outline: ACAUTOCAS-936: View Edit Primary or Another detail of <ProductType> application which is at <ApplicationStage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_leadDetails>" and row <PersonalLoanPunch_leadDetails_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When user adds another new existing individual applicant with applicant type as "<Applicant_Type>" and application id at "<ApplicationStage>"
    Then user primary applicant details should be editable
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Applicant_Type | PersonalLoanPunchWB      | PersonalLoanPunch_leadDetails | PersonalLoanPunch_leadDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Applicant_Type | PersonalLoanPunchWB      | PersonalLoanPunch_leadDetails | PersonalLoanPunch_leadDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |

    @Conventional
    @Part-1
    @Release
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Applicant_Type | PersonalLoanPunchWB      | PersonalLoanPunch_leadDetails | PersonalLoanPunch_leadDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Applicant_Type | PersonalLoanPunchWB      | PersonalLoanPunch_leadDetails | PersonalLoanPunch_leadDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Co-applicant   | personal_loan_punch.xlsx | lead_details                  | 0                                    |
