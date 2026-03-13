@Epic-Applicant_Information
@ReviewedBy-None
@ReviewedByDEV
@AuthoredBy-harshita.nayak
@AppInfoAdoption
  # ${ApplicantType:["indiv","nonindiv"]}
Feature:Identification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline:ACAUTOCAS-4920:Validation of Identification Number of <IdentificationType> with <InputType> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user selects Identification Type as "<IdentificationType>"
    When user fill Identification Number with "<InputType>" in identification
    Then "<IdentificationType>" field "<Throws_notThrows>" error for Identification Details
    @ImplementedBy-ayush.garg
    @Release @Part-1
    
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | IdentificationType           | InputType                           | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | 12 digits                           | not throw any    | personal_information.xlsx | identification              | 40                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | less than 12 digits                 | throw an         | personal_information.xlsx | identification              | 41                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | alphaNumeric values                 | throw an         | personal_information.xlsx | identification              | 42                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | special characters                  | throw an         | personal_information.xlsx | identification              | 43                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | numeric values                      | throw an         | personal_information.xlsx | identification              | 44                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | invalid format                      | throw an         | personal_information.xlsx | identification              | 45                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | alphaNumeric values                 | throw an         | personal_information.xlsx | identification              | 46                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | special characters                  | throw an         | personal_information.xlsx | identification              | 47                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | size less than 10                   | throw an         | personal_information.xlsx | identification              | 48                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | valid format(AAA(H/P)A1234A)        | not throw any    | personal_information.xlsx | identification              | 49                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | valid format(AAA(P/H)A1234A)        | not throw any    | personal_information.xlsx | identification              | 50                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 14 digits                           | not throw any    | personal_information.xlsx | identification              | 51                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 15 digits                           | not throw any    | personal_information.xlsx | identification              | 52                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | less than 14 digits                 | throw an         | personal_information.xlsx | identification              | 53                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 14 characters                       | not throw any    | personal_information.xlsx | identification              | 54                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 15 characters                       | not throw any    | personal_information.xlsx | identification              | 55                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | less than 14 characters             | throw an         | personal_information.xlsx | identification              | 56                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | alphaNumeric with 14 size           | not throw any    | personal_information.xlsx | identification              | 57                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | alphaNumeric with 15 size           | not throw any    | personal_information.xlsx | identification              | 58                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | alphaNumeric with less than 14 size | throw an         | personal_information.xlsx | identification              | 59                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | special characters                  | throw an         | personal_information.xlsx | identification              | 60                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | 8 digits                            | not throw any    | personal_information.xlsx | identification              | 61                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | less than 8 digits                  | throw an         | personal_information.xlsx | identification              | 62                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | 8 characters                        | not throw any    | personal_information.xlsx | identification              | 63                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | less than 8 characters              | throw an         | personal_information.xlsx | identification              | 64                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | alphaNumeric with 8 size            | not throw any    | personal_information.xlsx | identification              | 65                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | alphaNumeric with less than 8 size  | throw an         | personal_information.xlsx | identification              | 66                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | special characters                  | throw an         | personal_information.xlsx | identification              | 67                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | 72 digits                           | not throw any    | personal_information.xlsx | identification              | 68                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | less than 72 digits                 | throw an         | personal_information.xlsx | identification              | 69                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | 72 characters                       | not throw any    | personal_information.xlsx | identification              | 70                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | less than 72 characters             | throw an         | personal_information.xlsx | identification              | 71                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | alphaNumeric with 72 size           | not throw any    | personal_information.xlsx | identification              | 72                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | alphaNumeric with less than 72 size | throw an         | personal_information.xlsx | identification              | 73                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | special characters                  | throw an         | personal_information.xlsx | identification              | 74                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | 18 digits                           | not throw any    | personal_information.xlsx | identification              | 75                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | less than 18 digits                 | throw an         | personal_information.xlsx | identification              | 76                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | 18 characters                       | not throw any    | personal_information.xlsx | identification              | 77                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | less than 18 characters             | throw an         | personal_information.xlsx | identification              | 78                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | alphaNumeric with 18 size           | not throw any    | personal_information.xlsx | identification              | 79                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | alphaNumeric with less than 18 size | throw an         | personal_information.xlsx | identification              | 80                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | special characters                  | throw an         | personal_information.xlsx | identification              | 81                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | digits                              | not throw any    | personal_information.xlsx | identification              | 82                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 83                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | characters                          | not throw any    | personal_information.xlsx | identification              | 84                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | special characters                  | throw an         | personal_information.xlsx | identification              | 85                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | digits                              | not throw any    | personal_information.xlsx | identification              | 86                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 87                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | characters                          | not throw any    | personal_information.xlsx | identification              | 88                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | special characters                  | throw an         | personal_information.xlsx | identification              | 89                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | digits                              | not throw any    | personal_information.xlsx | identification              | 90                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 91                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | characters                          | not throw any    | personal_information.xlsx | identification              | 92                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | special characters                  | throw an         | personal_information.xlsx | identification              | 93                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | digits                              | not throw any    | personal_information.xlsx | identification              | 94                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 95                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | characters                          | not throw any    | personal_information.xlsx | identification              | 96                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | special characters                  | throw an         | personal_information.xlsx | identification              | 97                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | 10 digits                           | not throw any    | personal_information.xlsx | identification              | 98                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | less than 10 digits                 | throw an         | personal_information.xlsx | identification              | 99                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | 10 characters                       | not throw any    | personal_information.xlsx | identification              | 100                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | less than 10 characters             | throw an         | personal_information.xlsx | identification              | 101                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric with 10 size           | not throw any    | personal_information.xlsx | identification              | 102                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | digits of size 10-25                | not throw any    | personal_information.xlsx | identification              | 103                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | characters of size 10-25            | not throw any    | personal_information.xlsx | identification              | 104                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric of size 10-25          | not throw any    | personal_information.xlsx | identification              | 105                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric with less than 10 size | throw an         | personal_information.xlsx | identification              | 106                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | special characters                  | throw an         | personal_information.xlsx | identification              | 107                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric 25 size                | not throw any    | personal_information.xlsx | identification              | 108                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | digits 25 size                      | not throw any    | personal_information.xlsx | identification              | 109                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | characters 25 size                  | not throw any    | personal_information.xlsx | identification              | 110                                |

   #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | IdentificationType        | InputType           | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | TIN_No                    | 10 digits           | not throw any    | personal_information.xlsx | identification              | 138                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | TIN_No                    | 11 digits           | not throw any    | personal_information.xlsx | identification              | 139                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | TIN_No                    | more than 11 digits | throw an         | personal_information.xlsx | identification              | 140                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | TIN_No                    | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 141                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | TIN_No                    | special characters  | throw an         | personal_information.xlsx | identification              | 142                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | TIN_No                    | less tha 10 digits  | throw an         | personal_information.xlsx | identification              | 143                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Shop/Establishment Number | 12 digits           | not throw any    | personal_information.xlsx | identification              | 144                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Shop/Establishment Number | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 145                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Shop/Establishment Number | special characters  | throw an         | personal_information.xlsx | identification              | 146                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Shop/Establishment Number | less tha 12 digits  | throw an         | personal_information.xlsx | identification              | 147                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UDYAM                     | valid value         | not throw any    | personal_information.xlsx | identification              | 148                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UDYAM                     | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 149                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UDYAM                     | special characters  | throw an         | personal_information.xlsx | identification              | 150                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UDYOG                     | valid value         | not throw any    | personal_information.xlsx | identification              | 151                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UDYOG                     | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 152                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UDYOG                     | special characters  | throw an         | personal_information.xlsx | identification              | 153                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UDYOG                     | only digits         | throw an         | personal_information.xlsx | identification              | 154                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Emirates ID               | valid value         | not throw any    | personal_information.xlsx | identification              | 126                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Trade License No.         | valid value         | not throw any    | personal_information.xlsx | identification              | 137                                |

      #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | IdentificationType        | InputType           | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | TIN_No                    | 10 digits           | not throw any    | personal_information.xlsx | identification              | 138                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | TIN_No                    | 11 digits           | not throw any    | personal_information.xlsx | identification              | 139                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | TIN_No                    | more than 11 digits | throw an         | personal_information.xlsx | identification              | 140                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | TIN_No                    | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 141                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | TIN_No                    | special characters  | throw an         | personal_information.xlsx | identification              | 142                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | TIN_No                    | less tha 10 digits  | throw an         | personal_information.xlsx | identification              | 143                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Shop/Establishment Number | 12 digits           | not throw any    | personal_information.xlsx | identification              | 144                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Shop/Establishment Number | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 145                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Shop/Establishment Number | special characters  | throw an         | personal_information.xlsx | identification              | 146                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Shop/Establishment Number | less tha 12 digits  | throw an         | personal_information.xlsx | identification              | 147                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | UDYAM                     | valid value         | not throw any    | personal_information.xlsx | identification              | 148                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | UDYAM                     | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 149                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | UDYAM                     | special characters  | throw an         | personal_information.xlsx | identification              | 150                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | UDYOG                     | valid value         | not throw any    | personal_information.xlsx | identification              | 151                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | UDYOG                     | alphaNumeric values | throw an         | personal_information.xlsx | identification              | 152                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | UDYOG                     | special characters  | throw an         | personal_information.xlsx | identification              | 153                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | UDYOG                     | only digits         | throw an         | personal_information.xlsx | identification              | 154                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Emirates ID               | valid value         | not throw any    | personal_information.xlsx | identification              | 126                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Trade License No.         | valid value         | not throw any    | personal_information.xlsx | identification              | 137                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | IdentificationType           | InputType                           | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | 12 digits                           | not throw any    | personal_information.xlsx | identification              | 40                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | less than 12 digits                 | throw an         | personal_information.xlsx | identification              | 41                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | alphaNumeric values                 | throw an         | personal_information.xlsx | identification              | 42                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Aadhar No.                   | special characters                  | throw an         | personal_information.xlsx | identification              | 43                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | numeric values                      | throw an         | personal_information.xlsx | identification              | 44                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | invalid format                      | throw an         | personal_information.xlsx | identification              | 45                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | alphaNumeric values                 | throw an         | personal_information.xlsx | identification              | 46                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | special characters                  | throw an         | personal_information.xlsx | identification              | 47                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | size less than 10                   | throw an         | personal_information.xlsx | identification              | 48                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | valid format(AAA(H/P)A1234A)        | not throw any    | personal_information.xlsx | identification              | 49                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PAN                          | valid format(AAA(P/H)A1234A)        | not throw any    | personal_information.xlsx | identification              | 50                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 14 digits                           | not throw any    | personal_information.xlsx | identification              | 51                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 15 digits                           | not throw any    | personal_information.xlsx | identification              | 52                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | less than 14 digits                 | throw an         | personal_information.xlsx | identification              | 53                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 14 characters                       | not throw any    | personal_information.xlsx | identification              | 54                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | 15 characters                       | not throw any    | personal_information.xlsx | identification              | 55                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | less than 14 characters             | throw an         | personal_information.xlsx | identification              | 56                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | alphaNumeric with 14 size           | not throw any    | personal_information.xlsx | identification              | 57                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | alphaNumeric with 15 size           | not throw any    | personal_information.xlsx | identification              | 58                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | alphaNumeric with less than 14 size | throw an         | personal_information.xlsx | identification              | 59                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | KYC Identification Number    | special characters                  | throw an         | personal_information.xlsx | identification              | 60                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | 8 digits                            | not throw any    | personal_information.xlsx | identification              | 61                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | less than 8 digits                  | throw an         | personal_information.xlsx | identification              | 62                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | 8 characters                        | not throw any    | personal_information.xlsx | identification              | 63                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | less than 8 characters              | throw an         | personal_information.xlsx | identification              | 64                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | alphaNumeric with 8 size            | not throw any    | personal_information.xlsx | identification              | 65                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | alphaNumeric with less than 8 size  | throw an         | personal_information.xlsx | identification              | 66                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PASSPORT                     | special characters                  | throw an         | personal_information.xlsx | identification              | 67                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | 72 digits                           | not throw any    | personal_information.xlsx | identification              | 68                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | less than 72 digits                 | throw an         | personal_information.xlsx | identification              | 69                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | 72 characters                       | not throw any    | personal_information.xlsx | identification              | 70                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | less than 72 characters             | throw an         | personal_information.xlsx | identification              | 71                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | alphaNumeric with 72 size           | not throw any    | personal_information.xlsx | identification              | 72                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | alphaNumeric with less than 72 size | throw an         | personal_information.xlsx | identification              | 73                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | UID Token No.                | special characters                  | throw an         | personal_information.xlsx | identification              | 74                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | 18 digits                           | not throw any    | personal_information.xlsx | identification              | 75                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | less than 18 digits                 | throw an         | personal_information.xlsx | identification              | 76                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | 18 characters                       | not throw any    | personal_information.xlsx | identification              | 77                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | less than 18 characters             | throw an         | personal_information.xlsx | identification              | 78                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | alphaNumeric with 18 size           | not throw any    | personal_information.xlsx | identification              | 79                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | alphaNumeric with less than 18 size | throw an         | personal_information.xlsx | identification              | 80                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Nrega Job Card               | special characters                  | throw an         | personal_information.xlsx | identification              | 81                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | digits                              | not throw any    | personal_information.xlsx | identification              | 82                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 83                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | characters                          | not throw any    | personal_information.xlsx | identification              | 84                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Ration Card                  | special characters                  | throw an         | personal_information.xlsx | identification              | 85                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | digits                              | not throw any    | personal_information.xlsx | identification              | 86                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 87                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | characters                          | not throw any    | personal_information.xlsx | identification              | 88                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Sarpanch Letter              | special characters                  | throw an         | personal_information.xlsx | identification              | 89                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | digits                              | not throw any    | personal_information.xlsx | identification              | 90                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 91                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | characters                          | not throw any    | personal_information.xlsx | identification              | 92                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Unique Identification Number | special characters                  | throw an         | personal_information.xlsx | identification              | 93                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | digits                              | not throw any    | personal_information.xlsx | identification              | 94                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | alphaNumeric                        | not throw any    | personal_information.xlsx | identification              | 95                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | characters                          | not throw any    | personal_information.xlsx | identification              | 96                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Voter's ID                   | special characters                  | throw an         | personal_information.xlsx | identification              | 97                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | 10 digits                           | not throw any    | personal_information.xlsx | identification              | 98                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | less than 10 digits                 | throw an         | personal_information.xlsx | identification              | 99                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | 10 characters                       | not throw any    | personal_information.xlsx | identification              | 100                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | less than 10 characters             | throw an         | personal_information.xlsx | identification              | 101                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric with 10 size           | not throw any    | personal_information.xlsx | identification              | 102                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | digits of size 10-25                | not throw any    | personal_information.xlsx | identification              | 103                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | characters of size 10-25            | not throw any    | personal_information.xlsx | identification              | 104                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric of size 10-25          | not throw any    | personal_information.xlsx | identification              | 105                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric with less than 10 size | throw an         | personal_information.xlsx | identification              | 106                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | special characters                  | throw an         | personal_information.xlsx | identification              | 107                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | alphaNumeric with more than 25 size | throw an         | personal_information.xlsx | identification              | 108                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | digits with more than 25 size       | throw an         | personal_information.xlsx | identification              | 109                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | International ID             | characters more than 25 size        | throw an         | personal_information.xlsx | identification              | 110                                |

    @Sanity
  Scenario Outline: ACAUTOCAS-4923:<Edit_Delete> existing identification details record at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    When user "<Edit_Delete>" for identification details
    Then identification details should be added "<Edit_Delete>"
    @Release @Part-1
    
    @Conventional
    @ImplementedBy-rishabh.sachan
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Edit_Delete | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Edit        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Delete      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | Edit_Delete | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Edit        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 126                                |
      | Delete      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 126                                |

      #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | Edit_Delete | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Edit        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 126                                |
      | Delete      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 126                                |

#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Edit_Delete | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Edit        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Delete      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |


      @Sanity
  Scenario Outline: ACAUTOCAS-17145:Add <NoOfIdentification> identification details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
#    When user add "<NoOfIdentification>" for identification details
    When user add "<NoOfIdentification>" for identification details from
      | personal_information.xlsx | identification | 126 |
      | personal_information.xlsx | identification | 137 |
    Then "<NoOfIdentification>" identification details should be added
    @Release @Part-1
    
    @Conventional
    @ImplementedBy-rishabh.sachan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NoOfIdentification | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | single             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | multiple           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | NoOfIdentification | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | single             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 123                                |
      | multiple           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 123                                |

    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | NoOfIdentification | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | single             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 126                                |
      | multiple           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 137                                |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NoOfIdentification | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | single             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | multiple           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |

  @ImplementedBy-ayush.garg
     @Part-1
    
    @Conventional
  Scenario Outline:ACAUTOCAS-4925: <DependentField> field should be <DependentFieldsBehaviour> which depends on <IdentificationType> in identification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    When user selects Identification Type as "<IdentificationType>"
    Then "<DependentField>" should be "<DependentFieldsBehaviour>" in identification
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | IdentificationType | DependentField   | DependentFieldsBehaviour | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Passport           | Issue Date       | non mandatory            | personal_information.xlsx | identification              | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Passport           | Expiry Date      | non mandatory            | personal_information.xlsx | identification              | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | UID Token NO.      | Country Of Issue | editable                 | personal_information.xlsx | identification              | 1                                  |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | IdentificationType | DependentField   | DependentFieldsBehaviour | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Passport           | Issue Date       | non mandatory            | personal_information.xlsx | identification              | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Passport           | Expiry Date      | non mandatory            | personal_information.xlsx | identification              | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | UID Token NO.      | Country Of Issue | editable                 | personal_information.xlsx | identification              | 1                                  |

  @FixedExp
  Scenario Outline: ACAUTOCAS-4926: Validation <IdentificationField> in Identification with <InputType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    When user fills "<IdentificationField>" with "<InputType>" in identification details
    Then "<IdentificationField>" field "<Throws_notThrows>" error in Identification Details
    @Release @Part-1
    
    @Conventional
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | IdentificationField | InputType                                  | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | more than current date                     | throw an         | personal_information.xlsx | identification              | 167                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | less than DOB                              | throw an         | personal_information.xlsx | identification              | 168                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 169                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 170                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 171                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | more than current date                     | not throw any    | personal_information.xlsx | identification              | 172                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | less than DOB                              | throw an         | personal_information.xlsx | identification              | 173                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 174                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 175                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 176                                |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | IdentificationField | InputType                                  | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | more than current date                     | throw an         | personal_information.xlsx | identification              | 111                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 113                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 114                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 115                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | more than current date                     | throw an         | personal_information.xlsx | identification              | 111                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | less than DOB                              | throw an         | personal_information.xlsx | identification              | 112                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 113                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 114                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 115                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | less than DOB                              | throw an         | personal_information.xlsx | identification              | 112                                |


    # ${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | IdentificationField | InputType                                  | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Issue Date          | more than current date                     | throw an         | personal_information.xlsx | identification              | 127                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Issue Date          | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 129                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Issue Date          | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 129                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Issue Date          | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 130                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Expiry Date         | more than current date                     | not throw any    | personal_information.xlsx | identification              | 131                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Expiry Date         | less than DOB                              | throw an         | personal_information.xlsx | identification              | 132                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Expiry Date         | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 131                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Expiry Date         | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 133                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Expiry Date         | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 134                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Issue Date          | less than DOB                              | throw an         | personal_information.xlsx | identification              | 128                                |


#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | IdentificationField | InputType                                  | Throws_notThrows | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | more than current date                     | throw an         | personal_information.xlsx | identification              | 111                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | less than DOB                              | throw an         | personal_information.xlsx | identification              | 112                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 113                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 114                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Issue Date          | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 115                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | more than current date                     | throw an         | personal_information.xlsx | identification              | 111                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | less than DOB                              | throw an         | personal_information.xlsx | identification              | 112                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | valid date(DOB-Current Date)               | not throw any    | personal_information.xlsx | identification              | 113                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | valid date format as per user preference   | not throw any    | personal_information.xlsx | identification              | 114                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Expiry Date         | invalid date format as per user preference | throw an         | personal_information.xlsx | identification              | 115                                |


  #FeatureID:ACAUTOCAS-5977

  Scenario Outline: ACAUTOCAS-13455: Fill duplicate identification details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill all identification details
    When user fills duplicate identification details for individual
    And user clicks on check for duplicates to get error on personal information
    Then duplicate identification details error message displayed
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Release3
    @Conventional @Release @Part-1
    @ImplementedBy-rishabh.sachan
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 122                                |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 122                                |



   #FeatureID:ACAUTOCAS-5977
  @FixedExp
  Scenario Outline: ACAUTOCAS-13456: Fill identification details with "<Identification>" identification type in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    When user fills identification details with "<Identification>" identification type for individuals
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum1>
    And user clicks on check for duplicates to get error on personal information
    Then identification details should be updated successfully for personal information
    @Conventional
    @ImplementedBy-kanika.mahal
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Identification               | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_identification_rowNum1 |
      | Aadhar No                    | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | 123                                 |
      | Authorization Letter         | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 117                                | 123                                 |
      | Driving License              | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 118                                | 123                                 |
      | Government Employee Id       | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 119                                | 123                                 |
      | KYC Identification number    | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 17                                 | 123                                 |
      | Nrega Job Card               | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 77                                 | 123                                 |
      | PAN                          | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 7                                  | 123                                 |
      | Passport                     | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 12                                 | 123                                 |
      | Ration Card                  | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 82                                 | 123                                 |
      | Sarpanch Letter              | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 86                                 | 123                                 |
      | Unique Identification Number | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 90                                 | 123                                 |
      | Voter's Id                   | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 94                                 | 123                                 |
      | UID Token Number             | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 22                                 | 123                                 |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | Identification            | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_identification_rowNum1 |
      | Emirates ID               | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | 123                                 |
      | Trade License No.         | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 137                                | 123                                 |
      | Shop/Establishment Number | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 144                                | 123                                 |
      | UDYAM                     | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 148                                | 123                                 |
      | UDYOG                     | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 151                                | 123                                 |
      | TIN_No                    | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 138                                | 123                                 |

    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | Identification            | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_identification_rowNum1 |
      | Emirates ID               | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | 123                                 |
      | Trade License No.         | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 137                                | 123                                 |
      | Shop/Establishment Number | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 144                                | 123                                 |
      | UDYAM                     | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 148                                | 123                                 |
      | UDYOG                     | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 151                                | 123                                 |
      | TIN_No                    | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 138                                | 123                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Identification               | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_identification_rowNum1 |
      | Aadhar No                    | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | 123                                 |
      | Authorization Letter         | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 117                                | 123                                 |
      | Driving License              | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 118                                | 123                                 |
      | Government Employee Id       | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 119                                | 123                                 |
      | KYC Identification number    | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 17                                 | 123                                 |
      | Nrega Job Card               | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 77                                 | 123                                 |
      | PAN                          | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 7                                  | 123                                 |
      | Passport                     | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 12                                 | 123                                 |
      | Ration Card                  | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 82                                 | 123                                 |
      | Sarpanch Letter              | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 86                                 | 123                                 |
      | Unique Identification Number | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 90                                 | 123                                 |
      | Voter's Id                   | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 94                                 | 123                                 |

#== Co applicant ,Guarantor,
     #SquashID:02_CAS-100458
   #FeatureID:ACAUTOCAS-5977,CAS-100458
  Scenario Outline: ACAUTOCAS-13457: Capturing same <Identification> identification details for individual Coapplicant Guarantor
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill all identification details
    When user fills duplicate identification details for individual
    And user clicks on check for duplicates to get error on personal information
    Then duplicate identification details error message displayed
    @Conventional @Part-1 @Release
    @ImplementedBy-kanika.mahal
    @Release3
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Identification               | key       | Category | ApplicantType   | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Aadhar No                    | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 1                                  |
      | Authorization Letter         | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 112                                |
      | Driving License              | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 113                                |
      | Government Employee Id       | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 114                                |
      | KYC Identification number    | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 115                                |
      | Nrega Job Card               | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 111                                |
      | PAN                          | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 50                                 |
      | Passport                     | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 120                                |
      | Ration Card                  | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 84                                 |
      | Sarpanch Letter              | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 88                                 |
      | UID Token Number             | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 38                                 |
      | Unique Identification Number | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 116                                |
      | Voter's Id                   | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 96                                 |
      | Aadhar No                    | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 1                                  |
      | Authorization Letter         | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 112                                |
      | Driving License              | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 113                                |
      | Government Employee Id       | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 114                                |
      | KYC Identification number    | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 115                                |
      | Nrega Job Card               | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 111                                |
      | PAN                          | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 50                                 |
      | Passport                     | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 120                                |
      | Ration Card                  | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 84                                 |
      | Sarpanch Letter              | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 88                                 |
      | UID Token Number             | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 38                                 |
      | Unique Identification Number | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 116                                |
      | Voter's Id                   | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 96                                 |

     #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Identification               | key       | Category | ApplicantType   | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Aadhar No                    | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 1                                  |
      | Authorization Letter         | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 112                                |
      | Driving License              | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 113                                |
      | Government Employee Id       | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 114                                |
      | KYC Identification number    | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 115                                |
      | Nrega Job Card               | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 111                                |
      | PAN                          | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 112                                |
      | Passport                     | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 113                                |
      | Ration Card                  | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 114                                |
      | Sarpanch Letter              | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 115                                |
      | UID Token Number             | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 111                                |
      | Unique Identification Number | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 112                                |
      | Voter's Id                   | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 113                                |
      | Aadhar No                    | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 114                                |
      | Authorization Letter         | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 115                                |
      | Driving License              | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 111                                |
      | Government Employee Id       | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 112                                |
      | KYC Identification number    | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 113                                |
      | Nrega Job Card               | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 114                                |
      | PAN                          | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 115                                |
      | Passport                     | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 111                                |
      | Ration Card                  | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 112                                |
      | Sarpanch Letter              | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 113                                |
      | UID Token Number             | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 114                                |
      | Unique Identification Number | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 115                                |
      | Voter's Id                   | Guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 111                                |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | Identification            | key       | Category | ApplicantType   | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Emirates ID               | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 126                                |
      | Emirates ID               | guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 126                                |
      | Trade License No.         | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 156                                |
      | Trade License No.         | guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 156                                |
      | Shop/Establishment Number | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 158                                |
      | Shop/Establishment Number | guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 158                                |
      | UDYAM                     | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 159                                |
      | UDYAM                     | guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 159                                |
      | TIN_No                    | coapp     |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 157                                |
      | TIN_No                    | guarantor |          | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 157                                |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | Identification            | key       | Category   | ApplicantType   | ApplicationStage   | ProductType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Emirates ID               | coapp     | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 126                                |
      | Emirates ID               | guarantor | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 126                                |
      | Trade License No.         | coapp     | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 156                                |
      | Trade License No.         | guarantor | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 156                                |
      | Shop/Establishment Number | coapp     | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 158                                |
      | Shop/Establishment Number | guarantor | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 158                                |
      | UDYAM                     | coapp     | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 159                                |
      | UDYAM                     | guarantor | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 159                                |
      | TIN_No                    | coapp     | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 157                                |
      | TIN_No                    | guarantor | <Category> | <ApplicantType> | <ApplicationStage> | <ProductType> | personal_information.xlsx | identification              | 157                                |


#06/05/2024
#  CAS-194236 = delete the identification and save and save & next
#  StoryID:CAS-194236
   #FeatureID:ACAUTOCAS-5977,CAS-194236

  @Perishable
  Scenario Outline: ACAUTOCAS-13458: "<Save_Next>" validation after deleting <Identification> identification details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fills identification details with "<Identification>" identification type for individuals
    And user check for duplicates on personal information
    When user deletes the added identification details for individual
    And user clicks "<Save_Next>" button on identification
    Then identification details should throw an error message
    @Conventional
    @ImplementedBy-kanika.mahal
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Aadhar No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 177                                |
      | Aadhar No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 177                                |
      | Authorization Letter         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Authorization Letter         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Driving License              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Driving License              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Government Employee Id       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | Government Employee Id       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | Nrega Job Card               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | Nrega Job Card               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | Passport                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Passport                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Ration Card                  | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Ration Card                  | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Sarpanch Letter              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | Sarpanch Letter              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Voter's Id                   | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |
      | Voter's Id                   | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |
      | UID Token Number             | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
      | UID Token Number             | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | Identification            | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Emirates ID               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 155                                |
      | Emirates ID               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 155                                |
      | Trade License No.         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 137                                |
      | Trade License No.         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 137                                |
      | Shop/Establishment Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 144                                |
      | Shop/Establishment Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 144                                |
      | UDYAM                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 148                                |
      | UDYAM                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 148                                |
      | UDYOG                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 151                                |
      | UDYOG                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 151                                |
      | TIN_No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 138                                |
      | TIN_No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 138                                |

     # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | Identification            | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Emirates ID               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 155                                |
      | Emirates ID               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 155                                |
      | Trade License No.         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 137                                |
      | Trade License No.         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 137                                |
      | Shop/Establishment Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 144                                |
      | Shop/Establishment Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 144                                |
      | UDYAM                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 148                                |
      | UDYAM                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 148                                |
      | UDYOG                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 151                                |
      | UDYOG                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 151                                |
      | TIN_No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 138                                |
      | TIN_No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 138                                |
 #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Identification               | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Aadhar No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Aadhar No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Authorization Letter         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Authorization Letter         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Driving License              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Driving License              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Government Employee Id       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | Government Employee Id       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | Nrega Job Card               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | Nrega Job Card               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | Passport                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Passport                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Ration Card                  | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Ration Card                  | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Sarpanch Letter              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | Sarpanch Letter              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Voter's Id                   | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |
      | Voter's Id                   | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |
      | UID Token Number             | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
      | UID Token Number             | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |

  #StoryID:CAS-100711
  #FeatureID:ACAUTOCAS-5977,CAS-100711

  @Perishable
    @Sanity
  Scenario Outline: ACAUTOCAS-13459: "<Save_Next>" validation after adding <Identification_Type> identification details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    When user fill all identification details
    And user check for duplicates on personal information
    And user clicks "<Save_Next>" button on identification
    Then identification details should be updated successfully for personal information
    @Conventional
    @ImplementedBy-kanika.mahal
    @Release3
    @Release @Part-1
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#  ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Identification_Type          | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Aadhar No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Aadhar No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Authorization Letter         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Authorization Letter         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Driving License              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Driving License              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Government Employee Id       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | Government Employee Id       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | Nrega Job Card               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | Nrega Job Card               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | Passport                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Passport                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Ration Card                  | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Ration Card                  | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Sarpanch Letter              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | Sarpanch Letter              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | UID Token Number             | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
      | UID Token Number             | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Voter's Id                   | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |
      | Voter's Id                   | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |
      | UID Token Number             | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
      | UID Token Number             | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | Identification_Type       | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Emirates ID               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 126                                |
      | Emirates ID               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 126                                |
      | Trade License No.         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 137                                |
      | Trade License No.         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 137                                |
      | Shop/Establishment Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 144                                |
      | Shop/Establishment Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 144                                |
      | UDYAM                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 148                                |
      | UDYAM                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 148                                |
      | UDYOG                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 141                                |
      | UDYOG                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 141                                |
      | TIN_No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 138                                |
      | TIN_No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 138                                |

     # ${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | Identification_Type       | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Emirates ID               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 126                                |
      | Emirates ID               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 126                                |
      | Trade License No.         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 137                                |
      | Trade License No.         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 137                                |
      | Shop/Establishment Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 144                                |
      | Shop/Establishment Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 144                                |
      | UDYAM                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 148                                |
      | UDYAM                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 148                                |
      | UDYOG                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 151                                |
      | UDYOG                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 151                                |
      | TIN_No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 138                                |
      | TIN_No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | personal_information.xlsx | identification              | 138                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Identification_Type          | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum |
      | Aadhar No                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Aadhar No                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 1                                  |
      | Authorization Letter         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Authorization Letter         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 117                                |
      | Driving License              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Driving License              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 118                                |
      | Government Employee Id       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | Government Employee Id       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 119                                |
      | KYC Identification number    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | KYC Identification number    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 17                                 |
      | Nrega Job Card               | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | Nrega Job Card               | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 77                                 |
      | PAN                          | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | PAN                          | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 7                                  |
      | Passport                     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Passport                     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 12                                 |
      | Ration Card                  | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Ration Card                  | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 82                                 |
      | Sarpanch Letter              | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | Sarpanch Letter              | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 86                                 |
      | UID Token Number             | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
      | UID Token Number             | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 22                                 |
      | Unique Identification Number | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Unique Identification Number | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 90                                 |
      | Voter's Id                   | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |
      | Voter's Id                   | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | personal_information.xlsx | identification              | 94                                 |


