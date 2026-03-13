@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic


Feature:Seller Identification Details Validation for Asset Requested Validation under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","MAL","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
   #02_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14015:  Verify <new_accordions> should be there in asset requested while selecting Bought From as Individual for multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    When user select Bought From as Individual
    Then "<new_accordions>" tab should be display successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | new_accordions         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Seller Name            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Identification         |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Seller Bank Details    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Seller Address Details |


  #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14016: Add <Identification> identification details as per the Individual_Non-Individual as Non Individual for multi Asset at <ApplicationStage> for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "Non Individual"
    When user fill identification details along with "<Identification>" identification type
    Then identification details of seller should be added successfully
    Examples:
      | Identification               | ApplicantType   | ApplicationStage   | ProductType   | assetDetails_seller_details_rowNum |
      | ABN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | 22                                 |
      | ACN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | 23                                 |
      | ARBN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | 24                                 |
      | ARSN                         | <ApplicantType> | <ApplicationStage> | <ProductType> | 25                                 |
      | CIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | 26                                 |
      | KYC Identification number    | <ApplicantType> | <ApplicationStage> | <ProductType> | 27                                 |
      | PAN                          | <ApplicantType> | <ApplicationStage> | <ProductType> | 28                                 |
      | Service Tax No               | <ApplicantType> | <ApplicationStage> | <ProductType> | 29                                 |
      | TIN No                       | <ApplicantType> | <ApplicationStage> | <ProductType> | 30                                 |
      | Unique Identification Number | <ApplicantType> | <ApplicationStage> | <ProductType> | 31                                 |

    #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14017: Validation <IdentificationField> in Identification with <InputType> as per the Individual_Non-Individual as Non Individual for multi Asset at <ApplicationStage> for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "Non Individual"
    And user open identification accordion of seller
    When user fills "<IdentificationField>" with "<InputType>" in identification details
    Then "<IdentificationField>" field of seller "<Throws_notThrows>" error in identification
    Examples:
      | IdentificationField | InputType                                  | Throws_notThrows         | ApplicantType   | ApplicationStage   | ProductType   | assetDetails_seller_details_rowNum |
      | Issue Date          | more than current date                     | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | 32                                 |
      | Issue Date          | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | 33                                 |
      | Issue Date          | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | 34                                 |
      | Expiry Date         | more than current date                     | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | 35                                 |
      | Expiry Date         | valid date format as per user preference   | does not throw any error | <ApplicantType> | <ApplicationStage> | <ProductType> | 36                                 |
      | Expiry Date         | invalid date format as per user preference | throw error message      | <ApplicantType> | <ApplicationStage> | <ProductType> | 37                                 |

    #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
   #10_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14019: Identification Type list of accordions should display the details as per the Individual_Non-Individual as Non Individual for multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    When user select IndividualNon-Individual as "Non Individual"
    And user open identification accordion of seller
    Then user validate that Identification Type list of accordions should be display successfully
      | ABN                          |
      | ACN                          |
      | ARBN                         |
      | ARSN                         |
      | CIN No                       |
      | KYC Identification Number    |
      | Service Tax No               |
      | PAN                          |
      | TIN No                       |
      | Unsupported                  |
      | Unique Identification Number |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | assetDetails_seller_details_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | 32                                 |


   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14020: Validation of Identification Number of <IdentificationType> in identification with <InputType> as per the Individual_Non-Individual as Non Individual for multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "Non Individual"
    And user open identification accordion of seller
    When user selects Identification Type along with "<IdentificationType>"
    And user fills "Identification Number" with "<InputType>" in identification details
    Then "Identification Number" field of seller "<Throws_notThrows>" error in identification
    Examples:
      | IdentificationType           | InputType                                   | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | assetDetails_seller_details_rowNum |
      | ABN                          | 11 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 38                                 |
      | ABN                          | less than 11 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 39                                 |
      | ABN                          | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 40                                 |
      | ABN                          | less than 11 characters                     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 41                                 |
      | ABN                          | alphaNumeric with 11 size                   | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 42                                 |
      | ABN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 43                                 |
      | ACN                          | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 44                                 |
      | ACN                          | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 45                                 |
      | ACN                          | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 46                                 |
      | ACN                          | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 47                                 |
      | ACN                          | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 48                                 |
      | ACN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 49                                 |
      | ARBN                         | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 50                                 |
      | ARBN                         | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 51                                 |
      | ARBN                         | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 52                                 |
      | ARBN                         | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 53                                 |
      | ARBN                         | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 54                                 |
      | ARBN                         | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 55                                 |
      | ARSN                         | 9 digits                                    | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 56                                 |
      | ARSN                         | less than 9 digits                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 57                                 |
      | ARSN                         | characters                                  | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 58                                 |
      | ARSN                         | less than 9 characters                      | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 59                                 |
      | ARSN                         | alphaNumeric with 9 size                    | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 60                                 |
      | ARSN                         | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 61                                 |
      | CIN No                       | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 62                                 |
      | CIN No                       | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 63                                 |
      | CIN No                       | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 64                                 |
      | CIN No                       | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 65                                 |
      | CIN No                       | size less than 21                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 66                                 |
      | CIN No                       | valid format (L/U)12345AA1234AAA123456      | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 67                                 |
      | PAN                          | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 68                                 |
      | PAN                          | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 69                                 |
      | PAN                          | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 70                                 |
      | PAN                          | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 71                                 |
      | PAN                          | size less than 10                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 72                                 |
      | KYC Identification Number    | 14 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 73                                 |
      | KYC Identification Number    | 15 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 74                                 |
      | KYC Identification Number    | less than 14 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 75                                 |
      | KYC Identification Number    | 14 characters                               | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 76                                 |
      | KYC Identification Number    | 15 characters                               | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 77                                 |
      | KYC Identification Number    | less than 14 characters                     | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 78                                 |
      | KYC Identification Number    | alphaNumeric with 14 size                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 79                                 |
      | KYC Identification Number    | alphaNumeric with 15 size                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 80                                 |
      | KYC Identification Number    | alphaNumeric with less than 14 size         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 81                                 |
      | KYC Identification Number    | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 82                                 |
      | Unique Identification Number | digits                                      | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 83                                 |
      | Unique Identification Number | alphaNumeric                                | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 84                                 |
      | Unique Identification Number | characters                                  | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 85                                 |
      | Unique Identification Number | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 86                                 |
      | Service Tax No               | numeric values                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 87                                 |
      | Service Tax No               | invalid format                              | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 88                                 |
      | Service Tax No               | alphaNumeric values                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 89                                 |
      | Service Tax No               | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 90                                 |
      | Service Tax No               | size less than 15                           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 91                                 |
      | Service Tax No               | valid format AAA(P/H)A1234A(ST/SD)(001/002) | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 92                                 |
      | TIN No                       | 10 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 93                                 |
      | TIN No                       | 11 digits                                   | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 94                                 |
      | TIN No                       | less than 10 digits                         | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 95                                 |
      | TIN No                       | alphaNumeric                                | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 96                                 |
      | TIN No                       | special characters                          | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 97                                 |

  #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14021: Validation of <Date> of <IdentificationType> identification with <InputType> as per the Individual_Non-Individual as Non Individual for multi Asset at <ApplicationStage> for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "Non Individual"
    And user open identification accordion of seller
    When user selects Identification Type along with "<IdentificationType>"
    And user fills "<Date>" with "<InputType>" in identification details
    Then "<Date>" field of seller "<Throws_notThrows>" error in identification
    Examples:
      | IdentificationType           | Date        | InputType              | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | assetDetails_seller_details_rowNum |
      | ABN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 98                                 |
      | ABN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 99                                 |
      | ABN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 100                                |
      | ABN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 102                                |
      | ABN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 103                                |
      | ABN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 104                                |
      | ABN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 105                                |
      | ABN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 106                                |
      | ACN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 107                                |
      | ACN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 108                                |
      | ACN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 109                                |
      | ACN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 111                                |
      | ACN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 112                                |
      | ACN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 113                                |
      | ACN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 114                                |
      | ACN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 115                                |
      | ARBN                         | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 116                                |
      | ARBN                         | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 117                                |
      | ARBN                         | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 118                                |
      | ARBN                         | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 120                                |
      | ARBN                         | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 121                                |
      | ARBN                         | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 122                                |
      | ARBN                         | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 123                                |
      | ARBN                         | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 124                                |
      | ARSN                         | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 125                                |
      | ARSN                         | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 126                                |
      | ARSN                         | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 127                                |
      | ARSN                         | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 129                                |
      | ARSN                         | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 130                                |
      | ARSN                         | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 131                                |
      | ARSN                         | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 132                                |
      | ARSN                         | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 133                                |
      | CIN No                       | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 134                                |
      | CIN No                       | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 135                                |
      | CIN No                       | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 136                                |
      | CIN No                       | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 138                                |
      | CIN No                       | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 139                                |
      | CIN No                       | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 140                                |
      | CIN No                       | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 141                                |
      | CIN No                       | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 142                                |
      | KYC Identification Number    | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 143                                |
      | KYC Identification Number    | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 144                                |
      | KYC Identification Number    | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 145                                |
      | KYC Identification Number    | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 147                                |
      | KYC Identification Number    | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 148                                |
      | KYC Identification Number    | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 149                                |
      | KYC Identification Number    | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 150                                |
      | KYC Identification Number    | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 151                                |
      | PAN                          | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 152                                |
      | PAN                          | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 153                                |
      | PAN                          | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 154                                |
      | PAN                          | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 156                                |
      | PAN                          | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 157                                |
      | PAN                          | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 158                                |
      | PAN                          | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 159                                |
      | PAN                          | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 160                                |
      | Service Tax No               | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 161                                |
      | Service Tax No               | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 162                                |
      | Service Tax No               | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 163                                |
      | Service Tax No               | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 165                                |
      | Service Tax No               | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 166                                |
      | Service Tax No               | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 167                                |
      | Service Tax No               | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 168                                |
      | Service Tax No               | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 169                                |
      | TIN No                       | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 170                                |
      | TIN No                       | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 171                                |
      | TIN No                       | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 172                                |
      | TIN No                       | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 174                                |
      | TIN No                       | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 175                                |
      | TIN No                       | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 176                                |
      | TIN No                       | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 177                                |
      | TIN No                       | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 178                                |
      | Unique Identification Number | Issue Date  | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 179                                |
      | Unique Identification Number | Issue Date  | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 180                                |
      | Unique Identification Number | Issue Date  | more than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 181                                |
      | Unique Identification Number | Expiry Date | valid date             | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 183                                |
      | Unique Identification Number | Expiry Date | invalid date           | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 184                                |
      | Unique Identification Number | Expiry Date | more than current date | not throw any    | <ApplicationStage> | <ProductType> | <ApplicantType> | 185                                |
      | Unique Identification Number | Expiry Date | less than current date | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 186                                |
      | Unique Identification Number | Expiry Date | before 1942            | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 187                                |
    @LoggedBug
    Examples:
      | IdentificationType           | Date       | InputType   | Throws_notThrows | ApplicationStage   | ProductType   | ApplicantType   | assetDetails_seller_details_rowNum |
      | ABN                          | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 101                                |
      | ACN                          | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 110                                |
      | ARBN                         | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 119                                |
      | ARSN                         | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 128                                |
      | CIN No                       | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 137                                |
      | KYC Identification Number    | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 146                                |
      | PAN                          | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 155                                |
      | TIN No                       | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 173                                |
      | Service Tax No               | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 164                                |
      | Unique Identification Number | Issue Date | before 1942 | throw an         | <ApplicationStage> | <ProductType> | <ApplicantType> | 182                                |


   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14022: Fill identification details with "<Identification>" as per the Individual_Non-Individual as Individual for multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "Individual"
    And user open identification accordion of seller
    When user fill identification details along with "<Identification>" identification type
    Then identification details of seller should be added successfully
    Examples:
      | Identification            | ApplicationStage   | ProductType   | ApplicantType   | assetDetails_seller_details_rowNum |
      | Aadhar No                 | <ApplicationStage> | <ProductType> | <ApplicantType> | 188                                |
      | Authorization Letter      | <ApplicationStage> | <ProductType> | <ApplicantType> | 189                                |
      | Driving License           | <ApplicationStage> | <ProductType> | <ApplicantType> | 190                                |
      | Government Employee Id    | <ApplicationStage> | <ProductType> | <ApplicantType> | 191                                |
      | KYC Identification number | <ApplicationStage> | <ProductType> | <ApplicantType> | 192                                |
      | Nrega Job Card            | <ApplicationStage> | <ProductType> | <ApplicantType> | 193                                |
      | PAN                       | <ApplicationStage> | <ProductType> | <ApplicantType> | 194                                |
      | Sarpanch Letter           | <ApplicationStage> | <ProductType> | <ApplicantType> | 195                                |
      | UID Token Number          | <ApplicationStage> | <ProductType> | <ApplicantType> | 196                                |

     #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14023:  Validating Identification Number of "<IdentificationType>" with "<InputType>" as per the Individual_Non-Individual as Individual for multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "Individual"
    And user open identification accordion of seller
    When user selects Identification Type along with "<IdentificationType>"
    And user fills "Identification Number" with "<InputType>" in identification
    Then "Identification Number" field of seller "<Throws_notThrows>" error in identification
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | IdentificationType        | InputType                           | Throws_notThrows | assetDetails_seller_details_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | 12 digits                           | not throw any    | 197                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | less than 12 digits                 | throw an         | 198                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | alphaNumeric values                 | throw an         | 199                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Aadhar No.                | special characters                  | throw an         | 200                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | alphaNumeric with 10 size           | not throw any    | 201                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | digits of size 10-25                | not throw any    | 202                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | characters of size 10-25            | not throw any    | 203                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Driving Licence           | alphaNumeric of size 10-25          | not throw any    | 204                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | alphaNumeric with 10 size           | not throw any    | 205                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | digits of size 10-25                | not throw any    | 206                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | characters of size 10-25            | not throw any    | 207                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Government Employee ID    | alphaNumeric of size 10-25          | not throw any    | 208                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | numeric values                      | throw an         | 209                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | invalid format                      | throw an         | 210                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | alphaNumeric values                 | throw an         | 211                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | special characters                  | throw an         | 212                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | size less than 10                   | throw an         | 213                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | valid format(AAA(H/P)A1234A)        | not throw any    | 214                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | PAN                       | valid format(AAA(P/H)A1234A)        | not throw any    |215|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 14 digits                           | not throw any    | 216                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 15 digits                           | not throw any    |217|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | less than 14 digits                 | throw an         | 218                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 14 characters                       | not throw any    | 219                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | 15 characters                       | not throw any    |220|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | less than 14 characters             | throw an         | 221                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with 14 size           | not throw any    | 222                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with 15 size           | not throw any    |223|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | alphaNumeric with less than 14 size | throw an         | 224                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | KYC Identification Number | special characters                  | throw an         | 225                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | 72 digits                           | not throw any    | 226                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | less than 72 digits                 | throw an         | 227                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | 72 characters                       | not throw any    | 228                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | less than 72 characters             | throw an         | 229                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | alphaNumeric with 72 size           | not throw any    | 230                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | alphaNumeric with less than 72 size | throw an         | 231                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | UID Token No.             | special characters                  | throw an         | 232                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | 18 digits                           | not throw any    | 233                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | less than 18 digits                 | throw an         | 234                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | 18 characters                       | not throw any    | 235                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | less than 18 characters             | throw an         | 236                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | alphaNumeric with 18 size           | not throw any    | 237                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | alphaNumeric with less than 18 size | throw an         | 238                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | Nrega Job Card            | special characters                  | throw an         |239|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | digits                              | not throw any    | 240                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | alphaNumeric                        | not throw any    | 241                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | characters                          | not throw any    | 242                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | Authorization Letter      | special characters                  | throw an         |243|
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | digits                              | not throw any    | 244                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | alphaNumeric                        | not throw any    | 245                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | characters                          | not throw any    | 246                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Sarpanch Letter           | special characters                  | throw an         | 247                                |

    #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
   #10_CAS-82704
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14024: Identification Type list of accordions should display as per the Individual_Non-Individual as Individual for multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    When user select IndividualNon-Individual as "Individual"
    And user open identification accordion of seller
    Then user validate that Identification Type list of accordions should be display successfully
      | Aadhar No.                   |
      | PAN                          |
      | Authorization Letter         |
      | Driving Licence              |
      | Government Employee ID       |
      | KYC Identification Number    |
      | Nrega Job Card               |
      | PASSPORT                     |
      | Ration Card                  |
      | Sarpanch Letter              |
      | UID Token No.                |
      | Unique Identification Number |
      | Voter's ID                   |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | assetDetails_seller_details_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | 197                                |


   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14025: Validating <IdentificationField> in Identification with <InputType> as per the Individual_Non-Individual as Individual for multi Asset at <ApplicationStage> stage for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And user set data of "<ApplicantType>" in context
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "Individual"
    And user open identification accordion of seller
    When user selects Identification Type along with "<IdentificationField>"
    And user fills "<IdentificationField>" with "<InputType>" in identification details
    Then "<IdentificationField>" field of seller "<Throws_notThrows>" error in identification
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | IdentificationField | InputType                                  | Throws_notThrows | assetDetails_seller_details_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Issue Date          | more than current date                     | throw an         | 248                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Issue Date          | valid date(DOB-Current Date)               | not throw any    | 249                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Issue Date          | valid date format as per user preference   | not throw any    | 250                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Issue Date          | invalid date format as per user preference | throw an         | 251                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expiry Date         | more than current date                     | not throw any    | 252                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expiry Date         | less than DOB                              | throw an         | 257                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expiry Date         | valid date(DOB-Current Date)               | throw an         | 253                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expiry Date         | valid date format as per user preference   | not throw any    | 254                                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Expiry Date         | invalid date format as per user preference | throw an         | 255                                |
    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | IdentificationField | InputType     | Throws_notThrows | assetDetails_seller_details_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Issue Date          | less than DOB | throw an         | 256                                |


   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14027: <Edit_Delete> existing identification details record as per the Individual_Non-Individual as <var> for multi Asset at <ApplicationStage> for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user select IndividualNon-Individual as "<var>"
    And user fill identification details along with "<Identification>" identification type
    When user "<Edit_Delete>" in identification details
    Then identification details of seller "<Edit_Delete>" should be added
    Examples:
      | Edit_Delete | ApplicantType   | ApplicationStage   | ProductType   | var            | Identification | assetDetails_seller_details_rowNum |
      | Edit        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | Aadhar No.     | 188                                |
      | Delete      | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | ABN            | 22                                 |

   #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14028: Add multiple identification details as per the Individual_Non-Individual as <var> for multi Asset at <ApplicationStage> for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    When user select IndividualNon-Individual as "<var>"
    And user fill identification details along with "<Identification>" identification type
    And user add "<NoOfIdentification>" for identification details
    Then "<NoOfIdentification>" identification details should be added successfully
    Examples:
      | NoOfIdentification | ApplicantType   | ApplicationStage   | ProductType   | var            | assetDetails_seller_details_rowNum |
      | one another        | <ApplicantType> | <ApplicationStage> | <ProductType> | Individual     | 261                                |
      | multiple           | <ApplicantType> | <ApplicationStage> | <ProductType> | Non-Individual | 260                                |


  #Prerequisite:Application already punch with application type as Multi Asset
    # ${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Recommendation"]}
#${ApplicantType:["indiv","nonindiv"]}
    #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-richa.singh
    @Release

  Scenario Outline: ACAUTOCAS-14029: Fill duplicate identification details as per the Individual_Non-Individual as <var> for multi Asset at <ApplicationStage> for <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 70
    And user select Finance Mode as Purchase
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <assetDetails_seller_details_rowNum>
    And user enters seller name
    And user select IndividualNon-Individual as "<var>"
    And user fill identification details along with "<Identification>" identification type
    When user fill another identification details of seller with same values
    And user adds seller address from existing details
    And user click on check for duplicates of seller details
    And user click on done button of seller
    Then duplicate identification details of seller should not be added with an error message
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | var            | Identification | assetDetails_seller_details_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Individual     | Aadhar No.     | 258                                |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Non-Individual | ABN            | 259                                |




