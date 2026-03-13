@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-tushar.chauhan
@ReviewedByDEV
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-157

Feature: Education Detail Field Validation Without Save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-4009: Education Detail Board University field with <var> validation without save at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_education>" and row <PersonalInfo_education_rowNum>
    When user enters Board and University with <var>
    Then board and university with <var> should be entered

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release1
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var                        | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | both digits and characters | personal_information.xlsx | education              | 2                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | negative number            | personal_information.xlsx | education              | 3                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | special char               | personal_information.xlsx | education              | 4                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | space                      | personal_information.xlsx | education              | 5                             |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var                        | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | both digits and characters | personal_information.xlsx | education              | 2                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | negative number            | personal_information.xlsx | education              | 3                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | special char               | personal_information.xlsx | education              | 4                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | space                      | personal_information.xlsx | education              | 5                             |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var                        | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | both digits and characters | personal_information.xlsx | education              | 2                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | negative number            | personal_information.xlsx | education              | 3                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | special char               | personal_information.xlsx | education              | 4                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | space                      | personal_information.xlsx | education              | 5                             | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var                        | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | both digits and characters | personal_information.xlsx | education              | 2                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | negative number            | personal_information.xlsx | education              | 3                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | special char               | personal_information.xlsx | education              | 4                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | space                      | personal_information.xlsx | education              | 5                             |          |     |

  Scenario Outline: ACAUTOCAS-4010: Education Detail <validity> Year Of Passing field <var> validation without save at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_education>" and row <PersonalInfo_education_rowNum>
    When user enters <validity> year of passing <var>
    Then year of passing "<var>" should <var2> be entered

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release1
    @Release @Part-2
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var2 | validity | var                    | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |      | valid    |                        | personal_information.xlsx | education              | 7                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | more than current year | personal_information.xlsx | education              | 8                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | less than dob          | personal_information.xlsx | education              | 9                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with special character | personal_information.xlsx | education              | 10                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with space             | personal_information.xlsx | education              | 11                            |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var2 | validity | var                    | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |      | valid    |                        | personal_information.xlsx | education              | 7                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | more than current year | personal_information.xlsx | education              | 8                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | less than dob          | personal_information.xlsx | education              | 9                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with special character | personal_information.xlsx | education              | 10                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with space             | personal_information.xlsx | education              | 11                            |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var2 | validity | var                    | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |      | valid    |                        | personal_information.xlsx | education              | 7                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | more than current year | personal_information.xlsx | education              | 8                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | less than dob          | personal_information.xlsx | education              | 9                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with special character | personal_information.xlsx | education              | 10                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with space             | personal_information.xlsx | education              | 11                            | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | var2 | validity | var                    | PersonalInfoWB            | PersonalInfo_education | PersonalInfo_education_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |      | valid    |                        | personal_information.xlsx | education              | 7                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | more than current year | personal_information.xlsx | education              | 8                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | less than dob          | personal_information.xlsx | education              | 9                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with special character | personal_information.xlsx | education              | 10                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | not  | invalid  | with space             | personal_information.xlsx | education              | 11                            |          |     |
