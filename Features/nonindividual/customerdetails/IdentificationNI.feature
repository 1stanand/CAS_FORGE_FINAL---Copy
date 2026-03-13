@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@Reconciled
  # ${ApplicantType:["nonindiv"]}
 # ${Mode:["Tabs","Expanded"]}
Feature: Identification validation for Non individual application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-8525
  Scenario Outline: ACAUTOCAS-13473: Validation of Identification Number of <IdentificationType> in identification with <InputType> in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    When user selects Identification Type for non individual customer as "<IdentificationType>"
    And user fills "Identification Number" with "<InputType>" in identification
    Then "Identification Number" field "<Throws_notThrows>" error in identification
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | IdentificationType           | InputType                                   | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | 11 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | <ApplicantType> |          |     |
      | ABN                          | less than 11 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 93                                    | <ApplicantType> |          |     |
      | ABN                          | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 94                                    | <ApplicantType> |          |     |
      | ABN                          | less than 11 characters                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 95                                    | <ApplicantType> |          |     |
      | ABN                          | alphaNumeric with 11 size                   | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 96                                    | <ApplicantType> |          |     |
      | ABN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 97                                    | <ApplicantType> |          |     |
      | ACN                          | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | <ApplicantType> |          |     |
      | ACN                          | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 99                                    | <ApplicantType> |          |     |
      | ACN                          | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 100                                   | <ApplicantType> |          |     |
      | ACN                          | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 101                                   | <ApplicantType> |          |     |
      | ACN                          | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 102                                   | <ApplicantType> |          |     |
      | ACN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 103                                   | <ApplicantType> |          |     |
      | ARBN                         | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | <ApplicantType> |          |     |
      | ARBN                         | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 105                                   | <ApplicantType> |          |     |
      | ARBN                         | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 106                                   | <ApplicantType> |          |     |
      | ARBN                         | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 107                                   | <ApplicantType> |          |     |
      | ARBN                         | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 108                                   | <ApplicantType> |          |     |
      | ARBN                         | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 109                                   | <ApplicantType> |          |     |
      | ARSN                         | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | <ApplicantType> |          |     |
      | ARSN                         | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 111                                   | <ApplicantType> |          |     |
      | ARSN                         | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 112                                   | <ApplicantType> |          |     |
      | ARSN                         | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 113                                   | <ApplicantType> |          |     |
      | ARSN                         | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 114                                   | <ApplicantType> |          |     |
      | ARSN                         | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 115                                   | <ApplicantType> |          |     |
      | CIN No                       | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 116                                   | <ApplicantType> |          |     |
      | CIN No                       | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 117                                   | <ApplicantType> |          |     |
      | CIN No                       | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 118                                   | <ApplicantType> |          |     |
      | CIN No                       | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 119                                   | <ApplicantType> |          |     |
      | CIN No                       | size less than 21                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 120                                   | <ApplicantType> |          |     |
      | CIN No                       | valid format (L/U)12345AA1234AAA123456      | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | <ApplicantType> |          |     |
      | PAN                          | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 122                                   | <ApplicantType> |          |     |
      | PAN                          | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 123                                   | <ApplicantType> |          |     |
      | PAN                          | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 124                                   | <ApplicantType> |          |     |
      | PAN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 125                                   | <ApplicantType> |          |     |
      | PAN                          | size less than 10                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 126                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 14 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 15 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 128                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | less than 14 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 129                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 14 characters                               | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 130                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 15 characters                               | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 131                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | less than 14 characters                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 132                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | alphaNumeric with 14 size                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 133                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | alphaNumeric with 15 size                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 134                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | alphaNumeric with less than 14 size         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 145                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 136                                   | <ApplicantType> |          |     |
      | Unique Identification Number | digits                                      | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | <ApplicantType> |          |     |
      | Unique Identification Number | alphaNumeric                                | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 138                                   | <ApplicantType> |          |     |
      | Unique Identification Number | characters                                  | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 139                                   | <ApplicantType> |          |     |
      | Unique Identification Number | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 140                                   | <ApplicantType> |          |     |
      | Service Tax No               | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 141                                   | <ApplicantType> |          |     |
      | Service Tax No               | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 142                                   | <ApplicantType> |          |     |
      | Service Tax No               | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 143                                   | <ApplicantType> |          |     |
      | Service Tax No               | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 144                                   | <ApplicantType> |          |     |
      | Service Tax No               | size less than 15                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 145                                   | <ApplicantType> |          |     |
      | Service Tax No               | valid format AAA(P/H)A1234A(ST/SD)(001/002) | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | <ApplicantType> |          |     |
      | TIN No                       | 10 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | <ApplicantType> |          |     |
      | TIN No                       | 11 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 148                                   | <ApplicantType> |          |     |
      | TIN No                       | less than 10 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 149                                   | <ApplicantType> |          |     |
      | TIN No                       | alphaNumeric                                | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 150                                   | <ApplicantType> |          |     |
      | TIN No                       | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 151                                   | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | IdentificationType           | InputType                                   | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | 11 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | <ApplicantType> |          |     |
      | ABN                          | less than 11 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 93                                    | <ApplicantType> |          |     |
      | ABN                          | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 94                                    | <ApplicantType> |          |     |
      | ABN                          | less than 11 characters                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 95                                    | <ApplicantType> |          |     |
      | ABN                          | alphaNumeric with 11 size                   | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 96                                    | <ApplicantType> |          |     |
      | ABN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 97                                    | <ApplicantType> |          |     |
      | ACN                          | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | <ApplicantType> |          |     |
      | ACN                          | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 99                                    | <ApplicantType> |          |     |
      | ACN                          | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 100                                   | <ApplicantType> |          |     |
      | ACN                          | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 101                                   | <ApplicantType> |          |     |
      | ACN                          | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 102                                   | <ApplicantType> |          |     |
      | ACN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 103                                   | <ApplicantType> |          |     |
      | ARBN                         | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | <ApplicantType> |          |     |
      | ARBN                         | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 105                                   | <ApplicantType> |          |     |
      | ARBN                         | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 106                                   | <ApplicantType> |          |     |
      | ARBN                         | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 107                                   | <ApplicantType> |          |     |
      | ARBN                         | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 108                                   | <ApplicantType> |          |     |
      | ARBN                         | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 109                                   | <ApplicantType> |          |     |
      | ARSN                         | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | <ApplicantType> |          |     |
      | ARSN                         | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 111                                   | <ApplicantType> |          |     |
      | ARSN                         | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 112                                   | <ApplicantType> |          |     |
      | ARSN                         | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 113                                   | <ApplicantType> |          |     |
      | ARSN                         | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 114                                   | <ApplicantType> |          |     |
      | ARSN                         | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 115                                   | <ApplicantType> |          |     |
      | CIN No                       | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 116                                   | <ApplicantType> |          |     |
      | CIN No                       | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 117                                   | <ApplicantType> |          |     |
      | CIN No                       | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 118                                   | <ApplicantType> |          |     |
      | CIN No                       | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 119                                   | <ApplicantType> |          |     |
      | CIN No                       | size less than 21                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 120                                   | <ApplicantType> |          |     |
      | CIN No                       | valid format (L/U)12345AA1234AAA123456      | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | <ApplicantType> |          |     |
      | PAN                          | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 122                                   | <ApplicantType> |          |     |
      | PAN                          | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 123                                   | <ApplicantType> |          |     |
      | PAN                          | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 124                                   | <ApplicantType> |          |     |
      | PAN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 125                                   | <ApplicantType> |          |     |
      | PAN                          | size less than 10                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 126                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 14 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 15 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 128                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | less than 14 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 129                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 14 characters                               | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 130                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | 15 characters                               | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 131                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | less than 14 characters                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 132                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | alphaNumeric with 14 size                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 133                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | alphaNumeric with 15 size                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 134                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | alphaNumeric with less than 14 size         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 145                                   | <ApplicantType> |          |     |
      | KYC Identification Number    | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 136                                   | <ApplicantType> |          |     |
      | Unique Identification Number | digits                                      | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | <ApplicantType> |          |     |
      | Unique Identification Number | alphaNumeric                                | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 138                                   | <ApplicantType> |          |     |
      | Unique Identification Number | characters                                  | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 139                                   | <ApplicantType> |          |     |
      | Unique Identification Number | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 140                                   | <ApplicantType> |          |     |
      | Service Tax No               | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 141                                   | <ApplicantType> |          |     |
      | Service Tax No               | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 142                                   | <ApplicantType> |          |     |
      | Service Tax No               | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 143                                   | <ApplicantType> |          |     |
      | Service Tax No               | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 144                                   | <ApplicantType> |          |     |
      | Service Tax No               | size less than 15                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 145                                   | <ApplicantType> |          |     |
      | Service Tax No               | valid format AAA(P/H)A1234A(ST/SD)(001/002) | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | <ApplicantType> |          |     |
      | TIN No                       | 10 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | <ApplicantType> |          |     |
      | TIN No                       | 11 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 148                                   | <ApplicantType> |          |     |
      | TIN No                       | less than 10 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 149                                   | <ApplicantType> |          |     |
      | TIN No                       | alphaNumeric                                | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 150                                   | <ApplicantType> |          |     |
      | TIN No                       | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 151                                   | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | IdentificationType           | InputType                                   | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | ABN                          | 11 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | <ApplicantType> | <Category> |     |
      | ABN                          | less than 11 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 93                                    | <ApplicantType> | <Category> |     |
      | ABN                          | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 94                                    | <ApplicantType> | <Category> |     |
      | ABN                          | less than 11 characters                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 95                                    | <ApplicantType> | <Category> |     |
      | ABN                          | alphaNumeric with 11 size                   | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 96                                    | <ApplicantType> | <Category> |     |
      | ABN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 97                                    | <ApplicantType> | <Category> |     |
      | ACN                          | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | <ApplicantType> | <Category> |     |
      | ACN                          | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 99                                    | <ApplicantType> | <Category> |     |
      | ACN                          | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 100                                   | <ApplicantType> | <Category> |     |
      | ACN                          | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 101                                   | <ApplicantType> | <Category> |     |
      | ACN                          | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 102                                   | <ApplicantType> | <Category> |     |
      | ACN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 103                                   | <ApplicantType> | <Category> |     |
      | ARBN                         | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | <ApplicantType> | <Category> |     |
      | ARBN                         | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 105                                   | <ApplicantType> | <Category> |     |
      | ARBN                         | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 106                                   | <ApplicantType> | <Category> |     |
      | ARBN                         | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 107                                   | <ApplicantType> | <Category> |     |
      | ARBN                         | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 108                                   | <ApplicantType> | <Category> |     |
      | ARBN                         | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 109                                   | <ApplicantType> | <Category> |     |
      | ARSN                         | 9 digits                                    | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | <ApplicantType> | <Category> |     |
      | ARSN                         | less than 9 digits                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 111                                   | <ApplicantType> | <Category> |     |
      | ARSN                         | characters                                  | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 112                                   | <ApplicantType> | <Category> |     |
      | ARSN                         | less than 9 characters                      | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 113                                   | <ApplicantType> | <Category> |     |
      | ARSN                         | alphaNumeric with 9 size                    | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 114                                   | <ApplicantType> | <Category> |     |
      | ARSN                         | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 115                                   | <ApplicantType> | <Category> |     |
      | CIN No                       | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 116                                   | <ApplicantType> | <Category> |     |
      | CIN No                       | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 117                                   | <ApplicantType> | <Category> |     |
      | CIN No                       | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 118                                   | <ApplicantType> | <Category> |     |
      | CIN No                       | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 119                                   | <ApplicantType> | <Category> |     |
      | CIN No                       | size less than 21                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 120                                   | <ApplicantType> | <Category> |     |
      | CIN No                       | valid format (L/U)12345AA1234AAA123456      | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | <ApplicantType> | <Category> |     |
      | PAN                          | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 122                                   | <ApplicantType> | <Category> |     |
      | PAN                          | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 123                                   | <ApplicantType> | <Category> |     |
      | PAN                          | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 124                                   | <ApplicantType> | <Category> |     |
      | PAN                          | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 125                                   | <ApplicantType> | <Category> |     |
      | PAN                          | size less than 10                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 126                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | 14 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | 15 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 128                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | less than 14 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 129                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | 14 characters                               | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 130                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | 15 characters                               | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 131                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | less than 14 characters                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 132                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | alphaNumeric with 14 size                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 133                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | alphaNumeric with 15 size                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 134                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | alphaNumeric with less than 14 size         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 145                                   | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 136                                   | <ApplicantType> | <Category> |     |
      | Unique Identification Number | digits                                      | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | <ApplicantType> | <Category> |     |
      | Unique Identification Number | alphaNumeric                                | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 138                                   | <ApplicantType> | <Category> |     |
      | Unique Identification Number | characters                                  | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 139                                   | <ApplicantType> | <Category> |     |
      | Unique Identification Number | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 140                                   | <ApplicantType> | <Category> |     |
      | Service Tax No               | numeric values                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 141                                   | <ApplicantType> | <Category> |     |
      | Service Tax No               | invalid format                              | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 142                                   | <ApplicantType> | <Category> |     |
      | Service Tax No               | alphaNumeric values                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 143                                   | <ApplicantType> | <Category> |     |
      | Service Tax No               | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 144                                   | <ApplicantType> | <Category> |     |
      | Service Tax No               | size less than 15                           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 145                                   | <ApplicantType> | <Category> |     |
      | Service Tax No               | valid format AAA(P/H)A1234A(ST/SD)(001/002) | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | <ApplicantType> | <Category> |     |
      | TIN No                       | 10 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | <ApplicantType> | <Category> |     |
      | TIN No                       | 11 digits                                   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 148                                   | <ApplicantType> | <Category> |     |
      | TIN No                       | less than 10 digits                         | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 149                                   | <ApplicantType> | <Category> |     |
      | TIN No                       | alphaNumeric                                | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 150                                   | <ApplicantType> | <Category> |     |
      | TIN No                       | special characters                          | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 151                                   | <ApplicantType> | <Category> |     |

    #FeatureID-ACAUTOCAS-8525
  Scenario Outline: ACAUTOCAS-13474: Validation of <Date> of <IdentificationType> identification with <InputType> in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    When user selects Identification Type for non individual customer as "<IdentificationType>"
    And user fills "<Date>" with "<InputType>" in identification
    Then "<Date>" field "<Throws_notThrows>" error in identification
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | IdentificationType           | Date        | InputType              | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 2                                     | <ApplicantType> |          |     |
      | ABN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 3                                     | <ApplicantType> |          |     |
      | ABN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 4                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 7                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 8                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 9                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 10                                    | <ApplicantType> |          |     |
      | ACN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 11                                    | <ApplicantType> |          |     |
      | ACN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 12                                    | <ApplicantType> |          |     |
      | ACN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 13                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 15                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 16                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 17                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 18                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 19                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 20                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 21                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 22                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 24                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 25                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 26                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 27                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 28                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 29                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 30                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 31                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 33                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 34                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 35                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 36                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 37                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 38                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 39                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 40                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 42                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 43                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 44                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 45                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 46                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 47                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 48                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 49                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 51                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 52                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 53                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 54                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 55                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 56                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 57                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 58                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 60                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 61                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 62                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 63                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 64                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 65                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 66                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 67                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 69                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 70                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 71                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 72                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 73                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 74                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 75                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 76                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 78                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 79                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 80                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 81                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 82                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 83                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 84                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 85                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 87                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 88                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 89                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 90                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 91                                    | <ApplicantType> |          |     |

    @LoggedBug
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | IdentificationType           | Date       | InputType   | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 5                                     | <ApplicantType> |          |     |
      | ACN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 14                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 23                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 32                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 41                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 50                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 59                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 68                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 77                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 86                                    | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | IdentificationType           | Date        | InputType              | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 2                                     | <ApplicantType> |          |     |
      | ABN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 3                                     | <ApplicantType> |          |     |
      | ABN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 4                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 7                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 8                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 9                                     | <ApplicantType> |          |     |
      | ABN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 10                                    | <ApplicantType> |          |     |
      | ACN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 11                                    | <ApplicantType> |          |     |
      | ACN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 12                                    | <ApplicantType> |          |     |
      | ACN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 13                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 15                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 16                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 17                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 18                                    | <ApplicantType> |          |     |
      | ACN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 19                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 20                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 21                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 22                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 24                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 25                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 26                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 27                                    | <ApplicantType> |          |     |
      | ARBN                         | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 28                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 29                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 30                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 31                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 33                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 34                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 35                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 36                                    | <ApplicantType> |          |     |
      | ARSN                         | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 37                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 38                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 39                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 40                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 42                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 43                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 44                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 45                                    | <ApplicantType> |          |     |
      | CIN No                       | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 46                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 47                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 48                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 49                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 51                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 52                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 53                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 54                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 55                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 56                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 57                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 58                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 60                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 61                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 62                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 63                                    | <ApplicantType> |          |     |
      | PAN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 64                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 65                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 66                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 67                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 69                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 70                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 71                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 72                                    | <ApplicantType> |          |     |
      | Service Tax No               | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 73                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 74                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 75                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 76                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 78                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 79                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 80                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 81                                    | <ApplicantType> |          |     |
      | TIN No                       | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 82                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 83                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 84                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 85                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 87                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 88                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 89                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 90                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 91                                    | <ApplicantType> |          |     |

    @LoggedBug
    Examples:
      | IdentificationType           | Date       | InputType   | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 5                                     | <ApplicantType> |          |     |
      | ACN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 14                                    | <ApplicantType> |          |     |
      | ARBN                         | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 23                                    | <ApplicantType> |          |     |
      | ARSN                         | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 32                                    | <ApplicantType> |          |     |
      | CIN No                       | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 41                                    | <ApplicantType> |          |     |
      | KYC Identification Number    | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 50                                    | <ApplicantType> |          |     |
      | PAN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 59                                    | <ApplicantType> |          |     |
      | Service Tax No               | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 68                                    | <ApplicantType> |          |     |
      | TIN No                       | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 77                                    | <ApplicantType> |          |     |
      | Unique Identification Number | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 86                                    | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | IdentificationType           | Date        | InputType              | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | ABN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 2                                     | <ApplicantType> | <Category> |     |
      | ABN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 3                                     | <ApplicantType> | <Category> |     |
      | ABN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 4                                     | <ApplicantType> | <Category> |     |
      | ABN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> | <Category> |     |
      | ABN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 7                                     | <ApplicantType> | <Category> |     |
      | ABN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 8                                     | <ApplicantType> | <Category> |     |
      | ABN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 9                                     | <ApplicantType> | <Category> |     |
      | ABN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 10                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 11                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 12                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 13                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 15                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 16                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 17                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 18                                    | <ApplicantType> | <Category> |     |
      | ACN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 19                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 20                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 21                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 22                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 24                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 25                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 26                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 27                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 28                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 29                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 30                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 31                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 33                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 34                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 35                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 36                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 37                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 38                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 39                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 40                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 42                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 43                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 44                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 45                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 46                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 47                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 48                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 49                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 51                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 52                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 53                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 54                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 55                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 56                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 57                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 58                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 60                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 61                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 62                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 63                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 64                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 65                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 66                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 67                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 69                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 70                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 71                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 72                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 73                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 74                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 75                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 76                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 78                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 79                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 80                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 81                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 82                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Issue Date  | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 83                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Issue Date  | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 84                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Issue Date  | more than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 85                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Expiry Date | valid date             | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 87                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Expiry Date | invalid date           | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 88                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Expiry Date | more than current date | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 89                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Expiry Date | less than current date | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 90                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Expiry Date | before 1942            | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 91                                    | <ApplicantType> | <Category> |     |

    @LoggedBug
    Examples:
      | IdentificationType           | Date       | InputType   | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | ABN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 5                                     | <ApplicantType> | <Category> |     |
      | ACN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 14                                    | <ApplicantType> | <Category> |     |
      | ARBN                         | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 23                                    | <ApplicantType> | <Category> |     |
      | ARSN                         | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 32                                    | <ApplicantType> | <Category> |     |
      | CIN No                       | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 41                                    | <ApplicantType> | <Category> |     |
      | KYC Identification Number    | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 50                                    | <ApplicantType> | <Category> |     |
      | PAN                          | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 59                                    | <ApplicantType> | <Category> |     |
      | Service Tax No               | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 68                                    | <ApplicantType> | <Category> |     |
      | TIN No                       | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 77                                    | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Issue Date | before 1942 | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 86                                    | <ApplicantType> | <Category> |     |

        #FeatureID-ACAUTOCAS-8525
  @Sanity
  Scenario Outline: ACAUTOCAS-13475: Add <Identification> identification details in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    When user fill identification details with "<Identification>" identification type
    And user clicks on check for Duplicates
    Then identification details should be added successfully
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Identification               | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | <ApplicantType> |          |     |
      | ACN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | <ApplicantType> |          |     |
      | ARBN                         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | <ApplicantType> |          |     |
      | ARSN                         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | <ApplicantType> |          |     |
      | CIN No                       | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | <ApplicantType> |          |     |
      | KYC Identification number    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | <ApplicantType> |          |     |
      | PAN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | <ApplicantType> |          |     |
      | Service Tax No               | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | <ApplicantType> |          |     |
      | TIN No                       | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | <ApplicantType> |          |     |
      | Unique Identification Number | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | ABN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | <ApplicantType> |          |     |
      | ACN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | <ApplicantType> |          |     |
      | ARBN                         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | <ApplicantType> |          |     |
      | ARSN                         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | <ApplicantType> |          |     |
      | CIN No                       | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | <ApplicantType> |          |     |
      | KYC Identification number    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | <ApplicantType> |          |     |
      | PAN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | <ApplicantType> |          |     |
      | Service Tax No               | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | <ApplicantType> |          |     |
      | TIN No                       | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | <ApplicantType> |          |     |
      | Unique Identification Number | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | ABN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | <ApplicantType> | <Category> |     |
      | ACN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | <ApplicantType> | <Category> |     |
      | ARBN                         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | <ApplicantType> | <Category> |     |
      | ARSN                         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | <ApplicantType> | <Category> |     |
      | CIN No                       | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | <ApplicantType> | <Category> |     |
      | KYC Identification number    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | <ApplicantType> | <Category> |     |
      | PAN                          | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | <ApplicantType> | <Category> |     |
      | Service Tax No               | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | <ApplicantType> | <Category> |     |
      | TIN No                       | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | <ApplicantType> | <Category> |     |
      | Unique Identification Number | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | <ApplicantType> | <Category> |     |


   #FeatureID-ACAUTOCAS-8525
  Scenario Outline: ACAUTOCAS-13476: <Edit_Delete> existing identification details record in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row 152
    And user fill identification details for non individual customer
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    When user "<Edit_Delete>" identification details for non individual customer
    And user clicks on check for Duplicates
    Then identification details "<Edit_Delete>" should be added
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Edit_Delete | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | Edit        | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | <ApplicantType> |          |     |
      | Delete      | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 162                                   | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Edit_Delete | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | Edit        | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | <ApplicantType> |          |     |
      | Delete      | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 162                                   | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Edit_Delete | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | Edit        | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | <ApplicantType> | <Category> |     |
      | Delete      | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 162                                   | <ApplicantType> | <Category> |     |


   #FeatureID-ACAUTOCAS-8525
  @Sanity
  Scenario Outline: ACAUTOCAS-13477: Add multiple identification details in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user add "<NoOfIdentification>" identification details in customer details
    When user clicks on check for Duplicates
    Then identification details should be added successfully
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | NoOfIdentification | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | one another        | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 164                                   | <ApplicantType> |          |     |
      | multiple           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 164                                   | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | NoOfIdentification | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | one another        | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 164                                   | <ApplicantType> |          |     |
      | multiple           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 164                                   | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | NoOfIdentification | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | one another        | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 164                                   | <ApplicantType> | <Category> |     |
      | multiple           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 164                                   | <ApplicantType> | <Category> |     |

    #FeatureID-ACAUTOCAS-8525
  Scenario Outline: ACAUTOCAS-13478: Validation <IdentificationField> in Identification with <InputType> in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    When user fills "<IdentificationField>" with "<InputType>" in identification
    Then "<IdentificationField>" field "<Throws_notThrows>" error in identification
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | IdentificationField | InputType                                  | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | Issue Date          | more than current date                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 4                                     | <ApplicantType> |          |     |
      | Issue Date          | valid date format as per user preference   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 2                                     | <ApplicantType> |          |     |
      | Issue Date          | invalid date format as per user preference | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 3                                     | <ApplicantType> |          |     |
      | Expiry Date         | more than current date                     | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> |          |     |
      | Expiry Date         | valid date format as per user preference   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> |          |     |
      | Expiry Date         | invalid date format as per user preference | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 7                                     | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | IdentificationField | InputType                                  | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | Issue Date          | more than current date                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 4                                     | <ApplicantType> |          |     |
      | Issue Date          | valid date format as per user preference   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 2                                     | <ApplicantType> |          |     |
      | Issue Date          | invalid date format as per user preference | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 3                                     | <ApplicantType> |          |     |
      | Expiry Date         | more than current date                     | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> |          |     |
      | Expiry Date         | valid date format as per user preference   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> |          |     |
      | Expiry Date         | invalid date format as per user preference | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 7                                     | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | IdentificationField | InputType                                  | Throws_notThrows | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | Issue Date          | more than current date                     | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 4                                     | <ApplicantType> | <Category> |     |
      | Issue Date          | valid date format as per user preference   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 2                                     | <ApplicantType> | <Category> |     |
      | Issue Date          | invalid date format as per user preference | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 3                                     | <ApplicantType> | <Category> |     |
      | Expiry Date         | more than current date                     | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> | <Category> |     |
      | Expiry Date         | valid date format as per user preference   | not throw any    | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 6                                     | <ApplicantType> | <Category> |     |
      | Expiry Date         | invalid date format as per user preference | throw an         | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 7                                     | <ApplicantType> | <Category> |     |


   #FeatureID-ACAUTOCAS-8525
  Scenario Outline: ACAUTOCAS-13479: Fill duplicate identification details in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user fill identification details for non individual customer
    When user fill another identification details with same values
    And user clicks on check for Duplicates
    Then duplicate identification details should not be added with an error message
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | ApplicationStage   | ProductType   | Mode   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 163                                   | <ApplicantType> |          |     |


     #SquashID:02_CAS-100458
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | Mode   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 163                                   | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | Mode   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 163                                   | <ApplicantType> | <Category> |     |


   #FeatureID-ACAUTOCAS-8525,CAS-100458
  Scenario Outline: ACAUTOCAS-13480: Capturing same <Identification> identification details for individual <Co_Applicant_Guarantor> in "<Mode>" mode at "<ApplicationStage>" for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user fill identification details for non individual customer
    And user clicks on check for Duplicates
    And user navigates to applicant details page of "<ApplicationStage>"
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_default>" and row <CustomerDetails_default_rowNum>
    And user adding another "non individual" applicant as "<Co_Applicant_Guarantor>"
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 115
    And user fill customer details with "mandatory" fields
    And user proceed to next in customer details
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    When user fill identification details for non individual customer
    And user clicks on check for Duplicates
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row 167
    Then Duplicate identification details are not allowed within the applicants of an application
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Identification               | Co_Applicant_Guarantor | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_default | CustomerDetails_default_rowNum | ApplicantType   | Category | key |
      | ABN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ACN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ARBN                         | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ARSN                         | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | default                 | 0                              | <ApplicantType> |          |     |
      | CIN No                       | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | default                 | 0                              | <ApplicantType> |          |     |
      | KYC Identification number    | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | default                 | 0                              | <ApplicantType> |          |     |
      | PAN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | default                 | 0                              | <ApplicantType> |          |     |
      | Service Tax No               | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | default                 | 0                              | <ApplicantType> |          |     |
      | TIN No                       | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | default                 | 0                              | <ApplicantType> |          |     |
      | Unique Identification Number | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ABN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | default                 | 1                              | <ApplicantType> |          |     |
      | ACN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | default                 | 1                              | <ApplicantType> |          |     |
      | ARBN                         | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | default                 | 1                              | <ApplicantType> |          |     |
      | ARSN                         | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | default                 | 1                              | <ApplicantType> |          |     |
      | CIN No                       | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | default                 | 1                              | <ApplicantType> |          |     |
      | KYC Identification number    | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | default                 | 1                              | <ApplicantType> |          |     |
      | PAN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | default                 | 1                              | <ApplicantType> |          |     |
      | Service Tax No               | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | default                 | 1                              | <ApplicantType> |          |     |
      | TIN No                       | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | default                 | 1                              | <ApplicantType> |          |     |
      | Unique Identification Number | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | default                 | 1                              | <ApplicantType> |          |     |




       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Co_Applicant_Guarantor | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_default | CustomerDetails_default_rowNum | ApplicantType   | Category | key |
      | ABN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ACN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ARBN                         | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ARSN                         | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | default                 | 0                              | <ApplicantType> |          |     |
      | CIN No                       | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | default                 | 0                              | <ApplicantType> |          |     |
      | KYC Identification number    | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | default                 | 0                              | <ApplicantType> |          |     |
      | PAN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | default                 | 0                              | <ApplicantType> |          |     |
      | Service Tax No               | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | default                 | 0                              | <ApplicantType> |          |     |
      | TIN No                       | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | default                 | 0                              | <ApplicantType> |          |     |
      | Unique Identification Number | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | default                 | 0                              | <ApplicantType> |          |     |
      | ABN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | default                 | 1                              | <ApplicantType> |          |     |
      | ACN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | default                 | 1                              | <ApplicantType> |          |     |
      | ARBN                         | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | default                 | 1                              | <ApplicantType> |          |     |
      | ARSN                         | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | default                 | 1                              | <ApplicantType> |          |     |
      | CIN No                       | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | default                 | 1                              | <ApplicantType> |          |     |
      | KYC Identification number    | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | default                 | 1                              | <ApplicantType> |          |     |
      | PAN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | default                 | 1                              | <ApplicantType> |          |     |
      | Service Tax No               | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | default                 | 1                              | <ApplicantType> |          |     |
      | TIN No                       | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | default                 | 1                              | <ApplicantType> |          |     |
      | Unique Identification Number | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | default                 | 1                              | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Co_Applicant_Guarantor | Mode   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_default | CustomerDetails_default_rowNum | ApplicantType   | Category   | key |
      | ABN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | ACN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | ARBN                         | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | ARSN                         | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | CIN No                       | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | KYC Identification number    | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | PAN                          | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | Service Tax No               | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | TIN No                       | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Co-Applicant           | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | default                 | 0                              | <ApplicantType> | <Category> |     |
      | ABN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 152                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | ACN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 153                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | ARBN                         | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 154                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | ARSN                         | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 155                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | CIN No                       | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 156                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | KYC Identification number    | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 157                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | PAN                          | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | Service Tax No               | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 159                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | TIN No                       | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 160                                   | default                 | 1                              | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Guarantor              | <Mode> | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 161                                   | default                 | 1                              | <ApplicantType> | <Category> |     |

# StoryID:CAS-194236
#FeatureID-ACAUTOCAS-8525,CAS-194236
  Scenario Outline: ACAUTOCAS-13481: <Save_Next> validation after deleting <Identification> identification details in Tabs mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "Tabs" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user fill identification details with "<Identification>" identification type
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_organizationAddress>" and row 0
    And user fills organization address
    And user clicks on check for Duplicates
    When user deletes the added "<Identification>" identification details
    And user clicks "<Save_Next>" button
    Then "<Identification>" field throws an error in identification
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ABN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |


       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ABN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category   | key |
      | ABN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ABN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ACN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ACN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ARBN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> | <Category> |     |
      | ARBN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> | <Category> |     |
      | ARSN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> | <Category> |     |
      | ARSN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> | <Category> |     |
      | CIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> | <Category> |     |
      | CIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> | <Category> |     |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> | <Category> |     |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> | <Category> |     |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> | <Category> |     |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Service Tax No               | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Service Tax No               | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> | <Category> |     |
      | TIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> | <Category> |     |
      | TIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> | <Category> |     |

#FeatureID-ACAUTOCAS-8525,CAS-194236
  Scenario Outline: ACAUTOCAS-13482: <Save_Next> validation after deleting <Identification> identification details in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user fill identification details with "<Identification>" identification type
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_organizationAddress>" and row 0
    And user fills organization address
    And user clicks on check for Duplicates
    When user deletes the added "<Identification>" identification details
    And user clicks "<Save_Next>" button
    Then "<Identification>" field throws an error in identification
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Identification               | Save_Next | ApplicationStage   | ProductType   | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |



       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next | ApplicationStage   | ProductType   | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next | ApplicationStage   | ProductType   | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category   | key |
      | ABN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ACN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ARBN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> | <Category> |     |
      | ARSN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> | <Category> |     |
      | CIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> | <Category> |     |
      | KYC Identification number    | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> | <Category> |     |
      | PAN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Service Tax No               | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> | <Category> |     |
      | TIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> | <Category> |     |

 #StoryID:CAS-100711
 # 03_CAS-65774
#FeatureID-ACAUTOCAS-8525,CAS-65774
  @Sanity
  Scenario Outline: ACAUTOCAS-13483: <Save_Next> validation after adding <Identification> identification details in Tabs mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "Tabs" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user fill identification details with "<Identification>" identification type
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_organizationAddress>" and row 1
    And user fills organization address
    And user clicks on check for Duplicates
    When user clicks "<Save_Next>" button
    Then identification details should be added successfully
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ABN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |


       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ABN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category   | key |
      | ABN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ABN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ACN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ACN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> | <Category> |     |
      | ARBN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> | <Category> |     |
      | ARBN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> | <Category> |     |
      | ARSN                         | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> | <Category> |     |
      | ARSN                         | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> | <Category> |     |
      | CIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> | <Category> |     |
      | CIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> | <Category> |     |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> | <Category> |     |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> | <Category> |     |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> | <Category> |     |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Service Tax No               | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Service Tax No               | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> | <Category> |     |
      | TIN No                       | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> | <Category> |     |
      | TIN No                       | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> | <Category> |     |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> | <Category> |     |

 #StoryID:CAS-100711
#  03_CAS-65774
#FeatureID-ACAUTOCAS-8525,CAS-65774
  @Sanity
  Scenario Outline: ACAUTOCAS-13484: <Save_Next> validation after adding <Identification> identification details in <Mode> mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user fill identification details with "<Identification>" identification type
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_organizationAddress>" and row 1
    And user fills organization address
    And user clicks on check for Duplicates
    When user clicks "<Save_Next>" button
    Then identification details should be added successfully
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Identification               | Save_Next | ApplicationStage   | ProductType   | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |


       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next | ApplicationStage   | ProductType   | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Identification               | Save_Next | ApplicationStage   | ProductType   | Mode     | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_organizationAddress | ApplicantType   | Category | key |
      | ABN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 92                                    | organization_address                | <ApplicantType> |          |     |
      | ACN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 98                                    | organization_address                | <ApplicantType> |          |     |
      | ARBN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 104                                   | organization_address                | <ApplicantType> |          |     |
      | ARSN                         | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 110                                   | organization_address                | <ApplicantType> |          |     |
      | CIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 121                                   | organization_address                | <ApplicantType> |          |     |
      | KYC Identification number    | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 127                                   | organization_address                | <ApplicantType> |          |     |
      | PAN                          | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 158                                   | organization_address                | <ApplicantType> |          |     |
      | Service Tax No               | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 146                                   | organization_address                | <ApplicantType> |          |     |
      | TIN No                       | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 147                                   | organization_address                | <ApplicantType> |          |     |
      | Unique Identification Number | Save      | <ApplicationStage> | <ProductType> | Expanded | customer_details.xlsx | identification                 | 137                                   | organization_address                | <ApplicantType> |          |     |

    #FeatureID-ACAUTOCAS-8525,CAS-100458
  #SquashID:04_CAS-100458,05_CAS-100458
  Scenario Outline: ACAUTOCAS-13485: PAN number "<Format>" format validation in case of <Constitution> constitution details in "<Mode>" mode at "<ApplicationStage>" for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fills constitution as "<Constitution>"
    And user open identification accordion
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    When user fill identification details with "PAN" identification type
    Then "<Format>" format should be "<Allowed>" in case of "<Constitution>" constitution
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-richa.singh
    Examples:
      | Constitution                   | Format                       | Allowed     | ApplicationStage   | ProductType   | Mode   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category | key |
      | Proprietorship Firm            | AAA(A/B/C/F/G/H/J/L/T)A1234A | not allowed | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 168                                   | home                 | 116                         | <ApplicantType> |          |     |
      | Proprietorship Firm            | AAA(A/B/C/F/G/J/L/P/T)A1234A | allowed     | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 169                                   | home                 | 116                         | <ApplicantType> |          |     |
      | Other than Proprietorship Firm | AAA(A/B/C/F/G/J/L/P/T)A1234A | not allowed | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 170                                   | home                 | 115                         | <ApplicantType> |          |     |
      | Other than Proprietorship Firm | AAA(A/B/C/F/G/H/J/L/T)A1234A | allowed     | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 171                                   | home                 | 115                         | <ApplicantType> |          |     |



       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Constitution                   | Format                       | Allowed     | ApplicationStage   | ProductType   | Mode   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category | key |
      | Proprietorship Firm            | AAA(A/B/C/F/G/H/J/L/T)A1234A | not allowed | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 168                                   | home                 | 116                         | <ApplicantType> |          |     |
      | Proprietorship Firm            | AAA(A/B/C/F/G/J/L/P/T)A1234A | allowed     | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 169                                   | home                 | 116                         | <ApplicantType> |          |     |
      | Other than Proprietorship Firm | AAA(A/B/C/F/G/J/L/P/T)A1234A | not allowed | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 170                                   | home                 | 115                         | <ApplicantType> |          |     |
      | Other than Proprietorship Firm | AAA(A/B/C/F/G/H/J/L/T)A1234A | allowed     | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 171                                   | home                 | 115                         | <ApplicantType> |          |     |


     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Constitution                   | Format                       | Allowed     | ApplicationStage   | ProductType   | Mode   | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category   | key |
      | Proprietorship Firm            | AAA(A/B/C/F/G/H/J/L/T)A1234A | not allowed | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 168                                   | home                 | 116                         | <ApplicantType> | <Category> |     |
      | Proprietorship Firm            | AAA(A/B/C/F/G/J/L/P/T)A1234A | allowed     | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 169                                   | home                 | 116                         | <ApplicantType> | <Category> |     |
      | Other than Proprietorship Firm | AAA(A/B/C/F/G/J/L/P/T)A1234A | not allowed | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 170                                   | home                 | 115                         | <ApplicantType> | <Category> |     |
      | Other than Proprietorship Firm | AAA(A/B/C/F/G/H/J/L/T)A1234A | allowed     | <ApplicationStage> | <ProductType> | <Mode> | customer_details.xlsx | identification                 | 171                                   | home                 | 115                         | <ApplicantType> | <Category> |     |

















