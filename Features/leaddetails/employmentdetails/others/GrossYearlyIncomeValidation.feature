@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@ReviewedByDEV
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Gross Yearly Income in Other Occupation in Employment Detail

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3827: Entering <Validity> gross yearly income with <Validity_Reason> in Other Occupation
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user enters "<Validity>" gross yearly income with "<Validity_Reason>"
    Then application "<Throws_notThrows>" "<With_Error_Message>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Validity | Validity_Reason            | Throws_notThrows                   | With_Error_Message                                                  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | more than 18 digits        | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. | employment_details.xlsx | home                   | 67                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters            | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 68                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters and digits | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 69                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with digits with space     | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 70                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with digits                | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 71                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with decimal digits        | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 72                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with 18 digits             | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 73                            |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Validity | Validity_Reason            | Throws_notThrows                   | With_Error_Message                                                  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | more than 18 digits        | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. | employment_details.xlsx | home                   | 67                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters            | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 68                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters and digits | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 69                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with digits with space     | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 70                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with digits                | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 71                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with decimal digits        | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 72                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with 18 digits             | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 73                            |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Validity | Validity_Reason            | Throws_notThrows                   | With_Error_Message                                                  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | more than 18 digits        | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. | employment_details.xlsx | home                   | 67                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters            | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 68                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters and digits | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 69                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with digits with space     | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 70                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with digits                | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 71                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with decimal digits        | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 72                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with 18 digits             | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 73                            | <Category> |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Validity | Validity_Reason            | Throws_notThrows                   | With_Error_Message                                                  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | more than 18 digits        | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. | employment_details.xlsx | home                   | 67                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters            | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 68                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with characters and digits | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 69                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | invalid  | with digits with space     | throws an error with error message | Invalid Amount.                                                     | employment_details.xlsx | home                   | 70                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with digits                | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 71                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with decimal digits        | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 72                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | valid    | with 18 digits             | does_not_throw_any_error           |                                                                     | employment_details.xlsx | home                   | 73                            |          |     |
