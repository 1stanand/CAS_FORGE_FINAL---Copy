#@Epic-Applicant_Information
#@AuthoredBy-aman.nagarkoti
#@ReviewedBy-None
#@Release1
#@ImplementedBy-aman.nagarkoti
#@AppInfoAdoption
#Feature: Identification type validation without save
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-4026:  Entering <Validity> <Field_Name> <Validity_Reason> without saving the application
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 2
#    And user create new application of personal loan for individual
#    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
#    And user fills home page of personal information
#    When user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
#    And user enters "<Validity>" "<Field_Name>" "<Validity_Reason>"
#    Then application "<Throws_notThrows>" in identification type in personal information
#
#    Examples:
#      | Validity | Field_Name | Validity_Reason           | PersonalInfo_identification_rowNum | Throws_notThrows                   |
#      | valid    | aadhaar    |                           | 2                                  | does_not_throw_any_error           |
#      | invalid  | aadhaar    | with less digit           | 4                                  | throws an error with error message |
#      | valid    | PAN        |                           | 7                                  | does_not_throw_any_error           |
#      | invalid  | PAN        | with less digit           | 9                                  | throws an error with error message |
#      | valid    | passport   |                           | 12                                 | does_not_throw_any_error           |
#      | invalid  | passport   | with less digit           | 14                                 | throws an error with error message |
#      | valid    | passport   | with characters and digit | 15                                 | does_not_throw_any_error           |
#      | valid    | KYC        |                           | 17                                 | does_not_throw_any_error           |
#      | invalid  | KYC        | with less digit           | 19                                 | throws an error with error message |
#      | valid    | KYC        | with characters and digit | 20                                 | does_not_throw_any_error           |
#      | valid    | UID token  |                           | 22                                 | does_not_throw_any_error           |
#      | invalid  | UID token  | with less digit           | 24                                 | throws an error with error message |
#      | valid    | UID token  | with characters and digit | 25                                 | does_not_throw_any_error           |
#
#    @FixedBug
#    Examples:
#      | Validity | Field_Name | Validity_Reason           | PersonalInfo_identification_rowNum | Throws_notThrows                   |
#      | valid    | aadhaar    | with more digit           | 3                                  | does_not_throw_any_error           |
#      | invalid  | aadhaar    | with characters and digit | 5                                  | throws an error with error message |
#      | invalid  | aadhaar    | with only characters      | 6                                  | throws an error with error message |
#      | valid    | PAN        | with more digit           | 8                                  | does_not_throw_any_error           |
#      | invalid  | PAN        | with characters and digit | 10                                 | throws an error with error message |
#      | invalid  | PAN        | with only characters      | 11                                 | throws an error with error message |
#      | valid    | passport   | with more digit           | 13                                 | does_not_throw_any_error           |
#      | valid    | passport   | with only characters      | 16                                 | does_not_throw_any_error           |
#      | valid    | KYC        | with more digit           | 18                                 | does_not_throw_any_error           |
#      | valid    | KYC        | with only characters      | 21                                 | does_not_throw_any_error           |
#      | valid    | UID token  | with more digit           | 23                                 | does_not_throw_any_error           |
#      | valid    | UID token  | with only characters      | 26                                 | does_not_throw_any_error           |
