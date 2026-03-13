@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Field validation with Self Employed Non Professional in Employment Detail

  @FixedExp
  Scenario Outline: ACAUTOCAS-3836:  Entering <Validity> <Field_Name> <Validity_Reason> in Self Employed Non Professional
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
#    And user add Single "Self Employed Non Professional" Occupation in Employment Details
#    And user changes major occupation to "Self Employed Non Professional"
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" for self employed non professional in Employment Details
    Then application "<Throws_notThrows>" error
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Field_Name               | Validity_Reason         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Throws_notThrows   | With_Error_Message        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | years_in_business_years  |                         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 53                            | does_not_throw_any |                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_years  | with_characters         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 61                            | throws             | Please enter only Digits. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_years  | with_special_characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 62                            | throws             | Please enter only Digits. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | years_in_business_months |                         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 53                            | does_not_throw_any |                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_months | with_characters         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 63                            | throws             | Please enter only Digits. |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_months | with_special_characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 64                            | throws             | Please enter only Digits. |
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    @LoggedBug
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Field_Name | Validity_Reason                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Throws_notThrows                   | With_Error_Message                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | end_date   | with_date_less_than_start_date | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 59                            | throws an error with error message | End date must be greater than or equal to Start date. |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Field_Name               | Validity_Reason                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Throws_notThrows   | With_Error_Message                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | years_in_business_years  |                                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 139                           | does_not_throw_any |                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_years  | with_characters                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 163                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_years  | with_special_characters        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 164                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | years_in_business_months |                                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 139                           | does_not_throw_any |                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_months | with_characters                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 165                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_months | with_special_characters        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 166                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | end_date                 | with_date_less_than_start_date | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 140                           | throws             | End date must be greater than or equal to Start date. |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Field_Name               | Validity_Reason                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Throws_notThrows   | With_Error_Message                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | years_in_business_years  |                                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 139                           | does_not_throw_any |                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | years_in_business_years  | with_characters                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 163                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | years_in_business_years  | with_special_characters        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 164                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | years_in_business_months |                                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 139                           | does_not_throw_any |                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | years_in_business_months | with_characters                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 165                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | years_in_business_months | with_special_characters        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 166                           | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | end_date                 | with_date_less_than_start_date | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 140                           | throws             | End date must be greater than or equal to Start date. |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Field_Name               | Validity_Reason                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Throws_notThrows   | With_Error_Message                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | years_in_business_years  |                                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 53                            | does_not_throw_any |                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_years  | with_characters                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 61                            | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_years  | with_special_characters        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 62                            | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | years_in_business_months |                                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 53                            | does_not_throw_any |                                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_months | with_characters                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 63                            | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | years_in_business_months | with_special_characters        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 64                            | throws             | Please enter only Digits.                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | end_date                 | with_date_less_than_start_date | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 59                            | throws             | End date must be greater than or equal to Start date. |
