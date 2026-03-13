@Epic-Islamic_IBAN_IFSC
@PQMStory
@Islamic
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@TechReviewedBy-
@Release
@IBAN

Feature: Capturing IBAN In Bank details Tab In Common Master

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to Business Partners tab

#FeatureID-ACAUTOCAS-11333
# PQM-10_CAS-186817, 11_CAS-186817, 12_CAS-186817,13_CAS-186817,14_CAS-186817,15_CAS-186817,16_CAS-186817,17_CAS-186817,18_CAS-186817,19_CAS-186817,20_CAS-186817,21_CAS-186817,22_CAS-186817,23_CAS-186817,24_CAS-186817
  Scenario Outline: ACAUTOCAS-16108: Verify entering data in IBAN field with <DataType> while creating <BPType> BP type
    And user creates a Business Partner
    And user selects "<BPType>" as business partner type
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user enters the business partner name
    When user enters the bank account details
    And user clicks on done button of bank account tab
    Then record should get "<SavedOrNot>"
    Examples:
      | BPType          | DataType                | SavedOrNot | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum |
      | Dealer/Supplier | correct data            | saved      | business_partner.xlsx | home                        | 0                                  |
      | Manufacturer    | correct data            | saved      | business_partner.xlsx | home                        | 1                                  |
      | Builder Company | correct data            | saved      | business_partner.xlsx | home                        | 2                                  |
      | Dealer/Supplier | incorrect bank account  | not saved  | business_partner.xlsx | home                        | 3                                  |
      | Manufacturer    | no checksum             | not saved  | business_partner.xlsx | home                        | 4                                  |
      | Builder Company | invalid data            | not saved  | business_partner.xlsx | home                        | 5                                  |
      | Dealer/Supplier | special chars           | not saved  | business_partner.xlsx | home                        | 6                                  |
      | Manufacturer    | special chars           | not saved  | business_partner.xlsx | home                        | 7                                  |
      | Builder Company | special chars           | not saved  | business_partner.xlsx | home                        | 8                                  |
      | Dealer/Supplier | max data                | not saved  | business_partner.xlsx | home                        | 9                                  |
      | Dealer/Supplier | max data                | not saved  | business_partner.xlsx | home                        | 10                                 |
      | Manufacturer    | max data                | not saved  | business_partner.xlsx | home                        | 11                                 |
      | Builder Company | more than 50 characters | not saved  | business_partner.xlsx | home                        | 12                                 |
      | Dealer/Supplier | more than 50 characters | not saved  | business_partner.xlsx | home                        | 13                                 |
      | Manufacturer    | more than 50 characters | not saved  | business_partner.xlsx | home                        | 14                                 |


# PQM-25_CAS-186817, 26_CAS-186817, 27_CAS-186817
# PMG-30_CAS-186817
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16109: Verify creating <BPType> BP type without entering IBAN
    And user creates a Business Partner
    And user selects "<BPType>" as business partner type
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user enters the business partner name
    When user enters the bank account details without iban
    And user clicks on done button of bank account tab
    Then record should get "<SavedOrNot>"
    Examples:
      | BPType          | SavedOrNot | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum |
      | Dealer/Supplier | saved      | business_partner.xlsx | home                        | 0                                  |
      | Manufacturer    | saved      | business_partner.xlsx | home                        | 1                                  |
      | Builder Company | saved      | business_partner.xlsx | home                        | 2                                  |


# PQM-1_CAS-186817, 2_CAS-186817, 3_CAS-186817, 4_CAS-186817, 5_CAS-186817, 6_CAS-186817, 7_CAS-186817,8_CAS-186817, 9_CAS-186817
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16110: Verify the visibility of IBAN Field in Business Partner master for <BPType> for <Action> Bank Account
    And user creates a Business Partner
    And user selects "<BPType>" as business partner type
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user enters the business partner name
    When user "<Action>" the bank account details
    Then iban field should be visible in new bank details tab
    Examples:
      | BPType          | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum | Action |
      | Dealer/Supplier | business_partner.xlsx | home                        | 0                                  | Add    |
      | Dealer/Supplier | business_partner.xlsx | home                        | 0                                  | Edit   |
      | Dealer/Supplier | business_partner.xlsx | home                        | 0                                  | View   |
      | Manufacturer    | business_partner.xlsx | home                        | 1                                  | Add    |
      | Manufacturer    | business_partner.xlsx | home                        | 1                                  | Edit   |
      | Manufacturer    | business_partner.xlsx | home                        | 1                                  | View   |
      | Builder Company | business_partner.xlsx | home                        | 2                                  | Add    |
      | Builder Company | business_partner.xlsx | home                        | 2                                  | Edit   |
      | Builder Company | business_partner.xlsx | home                        | 2                                  | View   |


# PQM-128_CAS-186817, 129_CAS-186817, 130_CAS-186817, 131_CAS-186817, 132_CAS-186817, 133_CAS-186817
# PMG-31_CAS-186817
#FeatureID-ACAUTOCAS-11333
  Scenario Outline: ACAUTOCAS-16111: Verify Business Partner master Upload for <BPType> types with <DataType> as IBAN
    And user clicks on upload business partner
    And user uploads a template with "<BPType>" as business partner and "<DataType>" in IBAN number
    When user clicks on done button to upload the template
    Then record "<Condition>" get created
    Examples:
      | BPType          | Condition  | DataType           |
      | Dealer/Supplier | should     | valid value        |
      | Dealer/Supplier | should not | invalid value      |
      | Dealer/Supplier | should not | special characters |
      | Dealer/Supplier | should     | max data           |
      | Dealer/Supplier | should     | more than max data |
      | Dealer/Supplier | should     | without data       |
      | Manufacturer    | should     | valid value        |
      | Manufacturer    | should not | invalid value      |
      | Manufacturer    | should not | special characters |
      | Manufacturer    | should     | max data           |
      | Manufacturer    | should     | more than max data |
      | Manufacturer    | should     | without data       |
      | Builder Company | should     | valid value        |
      | Builder Company | should not | invalid value      |
      | Builder Company | should not | special characters |
      | Builder Company | should     | max data           |
      | Builder Company | should     | more than max data |
      | Builder Company | should     | without data       |


Scenario Outline: ACAUTOCAS-17970:Saving the Bank account details with <Validity> Iban data in business partner master
    And user creates a Business Partner
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user fills required fields present in business partner screen
    And user marks the status for record
    And user selects mode for this record
    When user clicks on bank account tab
    And user clicks on Add External Bank Branch
    And user fills bank details with "<Validity>" data
    And user clicks on done button of bank account tab
    Then Bank account details "<SavedOrNot>" successfully in business partner master
    Examples:
      | Validity | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum | SavedOrNot |
      | valid    | business_partner.xlsx | bank_details                | 0                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 1                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 2                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 3                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 4                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 5                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 6                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 7                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 8                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 9                                  | saved      |
      | valid    | business_partner.xlsx | bank_details                | 10                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 11                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 12                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 13                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 14                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 15                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 16                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 17                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 18                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 19                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 20                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 21                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 22                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 23                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 24                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 25                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 26                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 27                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 28                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 29                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 30                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 31                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 32                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 33                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 34                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 35                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 36                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 37                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 38                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 39                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 40                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 41                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 42                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 43                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 44                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 45                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 46                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 47                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 48                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 49                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 50                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 51                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 52                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 53                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 54                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 55                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 56                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 57                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 58                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 59                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 60                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 61                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 62                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 63                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 64                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 65                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 66                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 67                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 68                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 69                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 70                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 71                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 72                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 73                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 74                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 75                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 76                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 77                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 78                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 79                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 80                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 81                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 82                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 83                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 84                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 85                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 86                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 87                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 88                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 89                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 90                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 91                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 92                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 93                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 94                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 95                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 96                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 97                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 98                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 99                                 | saved      |
      | valid    | business_partner.xlsx | bank_details                | 100                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 101                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 102                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 103                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 104                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 105                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 106                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 107                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 108                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 109                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 110                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 111                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 112                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 113                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 114                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 115                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 116                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 117                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 118                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 119                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 120                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 121                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 122                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 123                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 124                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 125                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 126                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 127                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 128                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 129                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 130                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 131                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 132                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 133                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 134                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 135                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 136                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 137                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 138                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 139                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 140                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 141                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 142                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 143                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 144                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 145                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 146                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 147                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 148                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 149                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 150                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 151                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 152                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 153                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 154                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 155                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 156                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 157                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 158                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 159                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 160                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 161                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 162                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 163                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 164                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 165                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 166                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 167                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 168                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 169                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 170                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 171                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 172                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 173                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 174                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 175                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 176                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 177                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 178                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 179                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 180                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 181                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 182                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 183                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 184                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 185                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 186                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 187                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 188                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 189                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 190                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 191                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 192                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 193                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 194                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 195                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 196                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 197                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 198                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 199                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 200                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 201                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 202                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 203                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 204                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 205                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 206                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 207                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 208                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 209                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 210                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 211                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 212                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 213                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 214                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 215                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 216                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 217                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 218                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 219                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 220                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 221                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 222                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 223                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 224                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 225                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 226                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 227                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 228                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 229                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 230                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 231                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 232                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 233                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 234                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 235                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 236                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 237                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 238                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 239                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 240                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 241                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 242                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 243                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 244                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 245                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 246                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 247                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 248                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 249                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 250                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 251                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 252                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 253                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 254                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 255                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 256                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 257                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 258                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 259                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 260                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 261                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 262                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 263                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 264                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 265                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 266                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 267                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 268                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 269                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 270                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 271                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 272                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 273                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 274                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 275                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 276                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 277                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 278                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 279                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 280                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 281                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 282                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 283                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 284                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 285                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 286                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 287                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 288                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 289                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 290                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 291                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 292                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 293                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 294                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 295                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 296                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 297                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 298                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 299                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 300                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 301                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 302                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 303                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 304                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 305                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 306                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 307                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 308                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 309                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 310                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 311                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 312                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 313                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 314                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 315                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 316                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 317                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 318                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 319                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 320                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 321                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 322                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 323                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 324                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 325                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 326                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 327                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 328                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 329                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 330                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 331                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 332                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 333                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 334                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 335                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 336                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 337                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 338                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 339                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 340                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 341                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 342                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 343                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 344                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 345                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 346                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 347                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 348                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 349                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 350                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 351                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 352                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 353                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 354                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 355                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 356                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 357                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 358                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 359                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 360                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 361                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 362                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 363                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 364                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 365                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 366                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 367                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 368                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 369                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 370                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 371                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 372                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 373                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 374                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 375                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 376                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 377                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 378                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 379                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 380                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 381                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 382                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 383                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 384                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 385                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 386                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 387                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 388                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 389                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 390                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 391                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 392                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 393                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 394                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 395                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 396                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 397                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 398                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 399                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 400                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 401                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 402                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 403                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 404                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 405                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 406                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 407                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 408                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 409                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 410                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 411                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 412                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 413                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 414                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 415                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 416                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 417                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 418                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 419                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 420                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 421                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 422                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 423                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 424                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 425                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 426                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 427                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 428                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 429                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 430                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 431                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 432                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 433                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 434                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 435                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 436                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 437                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 438                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 439                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 440                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 441                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 442                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 443                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 444                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 445                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 446                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 447                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 448                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 449                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 450                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 451                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 452                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 453                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 454                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 455                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 456                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 457                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 458                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 459                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 460                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 461                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 462                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 463                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 464                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 465                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 466                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 467                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 468                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 469                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 470                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 471                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 472                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 473                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 474                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 475                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 476                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 477                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 478                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 479                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 480                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 481                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 482                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 483                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 484                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 485                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 486                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 487                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 488                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 489                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 490                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 491                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 492                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 493                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 494                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 495                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 496                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 497                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 498                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 499                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 500                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 501                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 502                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 503                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 504                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 505                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 506                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 507                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 508                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 509                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 510                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 511                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 512                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 513                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 514                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 515                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 516                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 517                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 518                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 519                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 520                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 521                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 522                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 523                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 524                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 525                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 526                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 527                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 528                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 529                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 530                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 531                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 532                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 533                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 534                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 535                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 536                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 537                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 538                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 539                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 540                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 541                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 542                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 543                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 544                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 545                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 546                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 547                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 548                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 549                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 550                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 551                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 552                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 553                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 554                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 555                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 556                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 557                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 558                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 559                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 560                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 561                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 562                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 563                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 564                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 565                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 566                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 567                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 568                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 569                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 570                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 571                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 572                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 573                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 574                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 575                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 576                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 577                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 578                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 579                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 580                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 581                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 582                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 583                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 584                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 585                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 586                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 587                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 588                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 589                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 590                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 591                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 592                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 593                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 594                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 595                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 596                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 597                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 598                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 599                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 600                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 601                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 602                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 603                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 604                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 605                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 606                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 607                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 608                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 609                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 610                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 611                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 612                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 613                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 614                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 615                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 616                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 617                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 618                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 619                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 620                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 621                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 622                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 623                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 624                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 625                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 626                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 627                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 628                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 629                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 630                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 631                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 632                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 633                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 634                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 635                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 636                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 637                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 638                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 639                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 640                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 641                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 642                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 643                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 644                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 645                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 646                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 647                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 648                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 649                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 650                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 651                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 652                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 653                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 654                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 655                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 656                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 657                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 658                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 659                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 660                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 661                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 662                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 663                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 664                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 665                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 666                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 667                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 668                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 669                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 670                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 671                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 672                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 673                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 674                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 675                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 676                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 677                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 678                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 679                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 680                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 681                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 682                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 683                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 684                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 685                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 686                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 687                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 688                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 689                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 690                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 691                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 692                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 693                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 694                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 695                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 696                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 697                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 698                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 699                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 700                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 701                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 702                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 703                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 704                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 705                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 706                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 707                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 708                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 709                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 710                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 711                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 712                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 713                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 714                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 715                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 716                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 717                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 718                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 719                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 720                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 721                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 722                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 723                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 724                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 725                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 726                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 727                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 728                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 729                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 730                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 731                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 732                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 733                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 734                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 735                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 736                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 737                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 738                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 739                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 740                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 741                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 742                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 743                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 744                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 745                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 746                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 747                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 748                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 749                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 750                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 751                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 752                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 753                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 754                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 755                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 756                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 757                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 758                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 759                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 760                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 761                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 762                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 763                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 764                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 765                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 766                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 767                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 768                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 769                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 770                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 771                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 772                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 773                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 774                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 775                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 776                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 777                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 778                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 779                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 780                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 781                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 782                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 783                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 784                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 785                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 786                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 787                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 788                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 789                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 790                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 791                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 792                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 793                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 794                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 795                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 796                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 797                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 798                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 799                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 800                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 801                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 802                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 803                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 804                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 805                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 806                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 807                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 808                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 809                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 810                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 811                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 812                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 813                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 814                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 815                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 816                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 817                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 818                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 819                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 820                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 821                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 822                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 823                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 824                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 825                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 826                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 827                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 828                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 829                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 830                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 831                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 832                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 833                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 834                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 835                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 836                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 837                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 838                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 839                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 840                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 841                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 842                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 843                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 844                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 845                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 846                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 847                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 848                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 849                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 850                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 851                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 852                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 853                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 854                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 855                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 856                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 857                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 858                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 859                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 860                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 861                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 862                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 863                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 864                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 865                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 866                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 867                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 868                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 869                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 870                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 871                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 872                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 873                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 874                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 875                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 876                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 877                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 878                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 879                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 880                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 881                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 882                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 883                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 884                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 885                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 886                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 887                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 888                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 889                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 890                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 891                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 892                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 893                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 894                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 895                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 896                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 897                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 898                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 899                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 900                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 901                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 902                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 903                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 904                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 905                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 906                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 907                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 908                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 909                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 910                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 911                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 912                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 913                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 914                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 915                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 916                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 917                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 918                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 919                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 920                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 921                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 922                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 923                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 924                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 925                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 926                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 927                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 928                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 929                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 930                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 931                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 932                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 933                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 934                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 935                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 936                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 937                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 938                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 939                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 940                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 941                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 942                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 943                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 944                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 945                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 946                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 947                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 948                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 949                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 950                                | saved      |
      | valid    | business_partner.xlsx | bank_details                | 951                                | saved      |


  @26MarFix
Scenario Outline: ACAUTOCAS-17971:Validating error message by saving duplicate Bank account details with <Validity> Iban data in business partner master
    And user creates a Business Partner
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user fills required fields present in business partner screen
    And user marks the status for record
    And user selects mode for this record
    When user clicks on bank account tab
    And user clicks on Add External Bank Branch
    And user fills bank details with "<Validity>" data
    And user clicks on done button of bank account tab
    And user clicks on Add External Bank Branch
    And user fills bank details with "<Validity>" data
    And user clicks on done button of bank account tab
    Then Duplicate Bank details should not saved in business partner
    Examples:
      | Validity | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum |
      | valid    | business_partner.xlsx | bank_details                | 0                                  |
      | valid    | business_partner.xlsx | bank_details                | 1                                  |
      | valid    | business_partner.xlsx | bank_details                | 2                                  |
      | valid    | business_partner.xlsx | bank_details                | 3                                  |
      | valid    | business_partner.xlsx | bank_details                | 4                                  |
      | valid    | business_partner.xlsx | bank_details                | 5                                  |
      | valid    | business_partner.xlsx | bank_details                | 6                                  |
      | valid    | business_partner.xlsx | bank_details                | 7                                  |
      | valid    | business_partner.xlsx | bank_details                | 8                                  |
      | valid    | business_partner.xlsx | bank_details                | 9                                  |
      | valid    | business_partner.xlsx | bank_details                | 10                                 |
      | valid    | business_partner.xlsx | bank_details                | 11                                 |
      | valid    | business_partner.xlsx | bank_details                | 12                                 |
      | valid    | business_partner.xlsx | bank_details                | 13                                 |
      | valid    | business_partner.xlsx | bank_details                | 14                                 |
      | valid    | business_partner.xlsx | bank_details                | 15                                 |
      | valid    | business_partner.xlsx | bank_details                | 16                                 |
      | valid    | business_partner.xlsx | bank_details                | 17                                 |
      | valid    | business_partner.xlsx | bank_details                | 18                                 |
      | valid    | business_partner.xlsx | bank_details                | 19                                 |
      | valid    | business_partner.xlsx | bank_details                | 20                                 |
      | valid    | business_partner.xlsx | bank_details                | 21                                 |
      | valid    | business_partner.xlsx | bank_details                | 22                                 |
      | valid    | business_partner.xlsx | bank_details                | 23                                 |
      | valid    | business_partner.xlsx | bank_details                | 24                                 |
      | valid    | business_partner.xlsx | bank_details                | 25                                 |
      | valid    | business_partner.xlsx | bank_details                | 26                                 |
      | valid    | business_partner.xlsx | bank_details                | 27                                 |
      | valid    | business_partner.xlsx | bank_details                | 28                                 |
      | valid    | business_partner.xlsx | bank_details                | 29                                 |
      | valid    | business_partner.xlsx | bank_details                | 30                                 |
      | valid    | business_partner.xlsx | bank_details                | 31                                 |
      | valid    | business_partner.xlsx | bank_details                | 32                                 |
      | valid    | business_partner.xlsx | bank_details                | 33                                 |
      | valid    | business_partner.xlsx | bank_details                | 34                                 |
      | valid    | business_partner.xlsx | bank_details                | 35                                 |
      | valid    | business_partner.xlsx | bank_details                | 36                                 |
      | valid    | business_partner.xlsx | bank_details                | 37                                 |
      | valid    | business_partner.xlsx | bank_details                | 38                                 |
      | valid    | business_partner.xlsx | bank_details                | 39                                 |
      | valid    | business_partner.xlsx | bank_details                | 40                                 |
      | valid    | business_partner.xlsx | bank_details                | 41                                 |
      | valid    | business_partner.xlsx | bank_details                | 42                                 |
      | valid    | business_partner.xlsx | bank_details                | 43                                 |
      | valid    | business_partner.xlsx | bank_details                | 44                                 |
      | valid    | business_partner.xlsx | bank_details                | 45                                 |
      | valid    | business_partner.xlsx | bank_details                | 46                                 |
      | valid    | business_partner.xlsx | bank_details                | 47                                 |
      | valid    | business_partner.xlsx | bank_details                | 48                                 |
      | valid    | business_partner.xlsx | bank_details                | 49                                 |
      | valid    | business_partner.xlsx | bank_details                | 50                                 |
      | valid    | business_partner.xlsx | bank_details                | 51                                 |
      | valid    | business_partner.xlsx | bank_details                | 52                                 |
      | valid    | business_partner.xlsx | bank_details                | 53                                 |
      | valid    | business_partner.xlsx | bank_details                | 54                                 |
      | valid    | business_partner.xlsx | bank_details                | 55                                 |
      | valid    | business_partner.xlsx | bank_details                | 56                                 |
      | valid    | business_partner.xlsx | bank_details                | 57                                 |
      | valid    | business_partner.xlsx | bank_details                | 58                                 |
      | valid    | business_partner.xlsx | bank_details                | 59                                 |
      | valid    | business_partner.xlsx | bank_details                | 60                                 |
      | valid    | business_partner.xlsx | bank_details                | 61                                 |
      | valid    | business_partner.xlsx | bank_details                | 62                                 |
      | valid    | business_partner.xlsx | bank_details                | 63                                 |
      | valid    | business_partner.xlsx | bank_details                | 64                                 |
      | valid    | business_partner.xlsx | bank_details                | 65                                 |
      | valid    | business_partner.xlsx | bank_details                | 66                                 |
      | valid    | business_partner.xlsx | bank_details                | 67                                 |
      | valid    | business_partner.xlsx | bank_details                | 68                                 |
      | valid    | business_partner.xlsx | bank_details                | 69                                 |
      | valid    | business_partner.xlsx | bank_details                | 70                                 |
      | valid    | business_partner.xlsx | bank_details                | 71                                 |
      | valid    | business_partner.xlsx | bank_details                | 72                                 |
      | valid    | business_partner.xlsx | bank_details                | 73                                 |
      | valid    | business_partner.xlsx | bank_details                | 74                                 |
      | valid    | business_partner.xlsx | bank_details                | 75                                 |
      | valid    | business_partner.xlsx | bank_details                | 76                                 |
      | valid    | business_partner.xlsx | bank_details                | 77                                 |
      | valid    | business_partner.xlsx | bank_details                | 78                                 |
      | valid    | business_partner.xlsx | bank_details                | 79                                 |
      | valid    | business_partner.xlsx | bank_details                | 80                                 |
      | valid    | business_partner.xlsx | bank_details                | 81                                 |
      | valid    | business_partner.xlsx | bank_details                | 82                                 |
      | valid    | business_partner.xlsx | bank_details                | 83                                 |
      | valid    | business_partner.xlsx | bank_details                | 84                                 |
      | valid    | business_partner.xlsx | bank_details                | 85                                 |
      | valid    | business_partner.xlsx | bank_details                | 86                                 |
      | valid    | business_partner.xlsx | bank_details                | 87                                 |
      | valid    | business_partner.xlsx | bank_details                | 88                                 |
      | valid    | business_partner.xlsx | bank_details                | 89                                 |
      | valid    | business_partner.xlsx | bank_details                | 90                                 |
      | valid    | business_partner.xlsx | bank_details                | 91                                 |
      | valid    | business_partner.xlsx | bank_details                | 92                                 |
      | valid    | business_partner.xlsx | bank_details                | 93                                 |
      | valid    | business_partner.xlsx | bank_details                | 94                                 |
      | valid    | business_partner.xlsx | bank_details                | 95                                 |
      | valid    | business_partner.xlsx | bank_details                | 96                                 |
      | valid    | business_partner.xlsx | bank_details                | 97                                 |
      | valid    | business_partner.xlsx | bank_details                | 98                                 |
      | valid    | business_partner.xlsx | bank_details                | 99                                 |
      | valid    | business_partner.xlsx | bank_details                | 100                                |
      | valid    | business_partner.xlsx | bank_details                | 101                                |
      | valid    | business_partner.xlsx | bank_details                | 102                                |
      | valid    | business_partner.xlsx | bank_details                | 103                                |
      | valid    | business_partner.xlsx | bank_details                | 104                                |
      | valid    | business_partner.xlsx | bank_details                | 105                                |
      | valid    | business_partner.xlsx | bank_details                | 106                                |
      | valid    | business_partner.xlsx | bank_details                | 107                                |
      | valid    | business_partner.xlsx | bank_details                | 108                                |
      | valid    | business_partner.xlsx | bank_details                | 109                                |
      | valid    | business_partner.xlsx | bank_details                | 110                                |
      | valid    | business_partner.xlsx | bank_details                | 111                                |
      | valid    | business_partner.xlsx | bank_details                | 112                                |
      | valid    | business_partner.xlsx | bank_details                | 113                                |
      | valid    | business_partner.xlsx | bank_details                | 114                                |
      | valid    | business_partner.xlsx | bank_details                | 115                                |
      | valid    | business_partner.xlsx | bank_details                | 116                                |
      | valid    | business_partner.xlsx | bank_details                | 117                                |
      | valid    | business_partner.xlsx | bank_details                | 118                                |
      | valid    | business_partner.xlsx | bank_details                | 119                                |
      | valid    | business_partner.xlsx | bank_details                | 120                                |
      | valid    | business_partner.xlsx | bank_details                | 121                                |
      | valid    | business_partner.xlsx | bank_details                | 122                                |
      | valid    | business_partner.xlsx | bank_details                | 123                                |
      | valid    | business_partner.xlsx | bank_details                | 124                                |
      | valid    | business_partner.xlsx | bank_details                | 125                                |
      | valid    | business_partner.xlsx | bank_details                | 126                                |
      | valid    | business_partner.xlsx | bank_details                | 127                                |
      | valid    | business_partner.xlsx | bank_details                | 128                                |
      | valid    | business_partner.xlsx | bank_details                | 129                                |
      | valid    | business_partner.xlsx | bank_details                | 130                                |
      | valid    | business_partner.xlsx | bank_details                | 131                                |
      | valid    | business_partner.xlsx | bank_details                | 132                                |
      | valid    | business_partner.xlsx | bank_details                | 133                                |
      | valid    | business_partner.xlsx | bank_details                | 134                                |
      | valid    | business_partner.xlsx | bank_details                | 135                                |
      | valid    | business_partner.xlsx | bank_details                | 136                                |
      | valid    | business_partner.xlsx | bank_details                | 137                                |
      | valid    | business_partner.xlsx | bank_details                | 138                                |
      | valid    | business_partner.xlsx | bank_details                | 139                                |
      | valid    | business_partner.xlsx | bank_details                | 140                                |
      | valid    | business_partner.xlsx | bank_details                | 141                                |
      | valid    | business_partner.xlsx | bank_details                | 142                                |
      | valid    | business_partner.xlsx | bank_details                | 143                                |
      | valid    | business_partner.xlsx | bank_details                | 144                                |
      | valid    | business_partner.xlsx | bank_details                | 145                                |
      | valid    | business_partner.xlsx | bank_details                | 146                                |
      | valid    | business_partner.xlsx | bank_details                | 147                                |
      | valid    | business_partner.xlsx | bank_details                | 148                                |
      | valid    | business_partner.xlsx | bank_details                | 149                                |
      | valid    | business_partner.xlsx | bank_details                | 150                                |
      | valid    | business_partner.xlsx | bank_details                | 151                                |
      | valid    | business_partner.xlsx | bank_details                | 152                                |
      | valid    | business_partner.xlsx | bank_details                | 153                                |
      | valid    | business_partner.xlsx | bank_details                | 154                                |
      | valid    | business_partner.xlsx | bank_details                | 155                                |
      | valid    | business_partner.xlsx | bank_details                | 156                                |
      | valid    | business_partner.xlsx | bank_details                | 157                                |
      | valid    | business_partner.xlsx | bank_details                | 158                                |
      | valid    | business_partner.xlsx | bank_details                | 159                                |
      | valid    | business_partner.xlsx | bank_details                | 160                                |
      | valid    | business_partner.xlsx | bank_details                | 161                                |
      | valid    | business_partner.xlsx | bank_details                | 162                                |
      | valid    | business_partner.xlsx | bank_details                | 163                                |
      | valid    | business_partner.xlsx | bank_details                | 164                                |
      | valid    | business_partner.xlsx | bank_details                | 165                                |
      | valid    | business_partner.xlsx | bank_details                | 166                                |
      | valid    | business_partner.xlsx | bank_details                | 167                                |
      | valid    | business_partner.xlsx | bank_details                | 168                                |
      | valid    | business_partner.xlsx | bank_details                | 169                                |
      | valid    | business_partner.xlsx | bank_details                | 170                                |
      | valid    | business_partner.xlsx | bank_details                | 171                                |
      | valid    | business_partner.xlsx | bank_details                | 172                                |
      | valid    | business_partner.xlsx | bank_details                | 173                                |
      | valid    | business_partner.xlsx | bank_details                | 174                                |
      | valid    | business_partner.xlsx | bank_details                | 175                                |
      | valid    | business_partner.xlsx | bank_details                | 176                                |
      | valid    | business_partner.xlsx | bank_details                | 177                                |
      | valid    | business_partner.xlsx | bank_details                | 178                                |
      | valid    | business_partner.xlsx | bank_details                | 179                                |
      | valid    | business_partner.xlsx | bank_details                | 180                                |
      | valid    | business_partner.xlsx | bank_details                | 181                                |
      | valid    | business_partner.xlsx | bank_details                | 182                                |
      | valid    | business_partner.xlsx | bank_details                | 183                                |
      | valid    | business_partner.xlsx | bank_details                | 184                                |
      | valid    | business_partner.xlsx | bank_details                | 185                                |
      | valid    | business_partner.xlsx | bank_details                | 186                                |
      | valid    | business_partner.xlsx | bank_details                | 187                                |
      | valid    | business_partner.xlsx | bank_details                | 188                                |
      | valid    | business_partner.xlsx | bank_details                | 189                                |
      | valid    | business_partner.xlsx | bank_details                | 190                                |
      | valid    | business_partner.xlsx | bank_details                | 191                                |
      | valid    | business_partner.xlsx | bank_details                | 192                                |
      | valid    | business_partner.xlsx | bank_details                | 193                                |
      | valid    | business_partner.xlsx | bank_details                | 194                                |
      | valid    | business_partner.xlsx | bank_details                | 195                                |
      | valid    | business_partner.xlsx | bank_details                | 196                                |
      | valid    | business_partner.xlsx | bank_details                | 197                                |
      | valid    | business_partner.xlsx | bank_details                | 198                                |
      | valid    | business_partner.xlsx | bank_details                | 199                                |
      | valid    | business_partner.xlsx | bank_details                | 200                                |
      | valid    | business_partner.xlsx | bank_details                | 201                                |
      | valid    | business_partner.xlsx | bank_details                | 202                                |
      | valid    | business_partner.xlsx | bank_details                | 203                                |
      | valid    | business_partner.xlsx | bank_details                | 204                                |
      | valid    | business_partner.xlsx | bank_details                | 205                                |
      | valid    | business_partner.xlsx | bank_details                | 206                                |
      | valid    | business_partner.xlsx | bank_details                | 207                                |
      | valid    | business_partner.xlsx | bank_details                | 208                                |
      | valid    | business_partner.xlsx | bank_details                | 209                                |
      | valid    | business_partner.xlsx | bank_details                | 210                                |
      | valid    | business_partner.xlsx | bank_details                | 211                                |
      | valid    | business_partner.xlsx | bank_details                | 212                                |
      | valid    | business_partner.xlsx | bank_details                | 213                                |
      | valid    | business_partner.xlsx | bank_details                | 214                                |
      | valid    | business_partner.xlsx | bank_details                | 215                                |
      | valid    | business_partner.xlsx | bank_details                | 216                                |
      | valid    | business_partner.xlsx | bank_details                | 217                                |
      | valid    | business_partner.xlsx | bank_details                | 218                                |
      | valid    | business_partner.xlsx | bank_details                | 219                                |
      | valid    | business_partner.xlsx | bank_details                | 220                                |
      | valid    | business_partner.xlsx | bank_details                | 221                                |
      | valid    | business_partner.xlsx | bank_details                | 222                                |
      | valid    | business_partner.xlsx | bank_details                | 223                                |
      | valid    | business_partner.xlsx | bank_details                | 224                                |
      | valid    | business_partner.xlsx | bank_details                | 225                                |
      | valid    | business_partner.xlsx | bank_details                | 226                                |
      | valid    | business_partner.xlsx | bank_details                | 227                                |
      | valid    | business_partner.xlsx | bank_details                | 228                                |
      | valid    | business_partner.xlsx | bank_details                | 229                                |
      | valid    | business_partner.xlsx | bank_details                | 230                                |
      | valid    | business_partner.xlsx | bank_details                | 231                                |
      | valid    | business_partner.xlsx | bank_details                | 232                                |
      | valid    | business_partner.xlsx | bank_details                | 233                                |
      | valid    | business_partner.xlsx | bank_details                | 234                                |
      | valid    | business_partner.xlsx | bank_details                | 235                                |
      | valid    | business_partner.xlsx | bank_details                | 236                                |
      | valid    | business_partner.xlsx | bank_details                | 237                                |
      | valid    | business_partner.xlsx | bank_details                | 238                                |
      | valid    | business_partner.xlsx | bank_details                | 239                                |
      | valid    | business_partner.xlsx | bank_details                | 240                                |
      | valid    | business_partner.xlsx | bank_details                | 241                                |
      | valid    | business_partner.xlsx | bank_details                | 242                                |
      | valid    | business_partner.xlsx | bank_details                | 243                                |
      | valid    | business_partner.xlsx | bank_details                | 244                                |
      | valid    | business_partner.xlsx | bank_details                | 245                                |
      | valid    | business_partner.xlsx | bank_details                | 246                                |
      | valid    | business_partner.xlsx | bank_details                | 247                                |
      | valid    | business_partner.xlsx | bank_details                | 248                                |
      | valid    | business_partner.xlsx | bank_details                | 249                                |
      | valid    | business_partner.xlsx | bank_details                | 250                                |
      | valid    | business_partner.xlsx | bank_details                | 251                                |
      | valid    | business_partner.xlsx | bank_details                | 252                                |
      | valid    | business_partner.xlsx | bank_details                | 253                                |
      | valid    | business_partner.xlsx | bank_details                | 254                                |
      | valid    | business_partner.xlsx | bank_details                | 255                                |
      | valid    | business_partner.xlsx | bank_details                | 256                                |
      | valid    | business_partner.xlsx | bank_details                | 257                                |
      | valid    | business_partner.xlsx | bank_details                | 258                                |
      | valid    | business_partner.xlsx | bank_details                | 259                                |
      | valid    | business_partner.xlsx | bank_details                | 260                                |
      | valid    | business_partner.xlsx | bank_details                | 261                                |
      | valid    | business_partner.xlsx | bank_details                | 262                                |
      | valid    | business_partner.xlsx | bank_details                | 263                                |
      | valid    | business_partner.xlsx | bank_details                | 264                                |
      | valid    | business_partner.xlsx | bank_details                | 265                                |
      | valid    | business_partner.xlsx | bank_details                | 266                                |
      | valid    | business_partner.xlsx | bank_details                | 267                                |
      | valid    | business_partner.xlsx | bank_details                | 268                                |
      | valid    | business_partner.xlsx | bank_details                | 269                                |
      | valid    | business_partner.xlsx | bank_details                | 270                                |
      | valid    | business_partner.xlsx | bank_details                | 271                                |
      | valid    | business_partner.xlsx | bank_details                | 272                                |
      | valid    | business_partner.xlsx | bank_details                | 273                                |
      | valid    | business_partner.xlsx | bank_details                | 274                                |
      | valid    | business_partner.xlsx | bank_details                | 275                                |
      | valid    | business_partner.xlsx | bank_details                | 276                                |
      | valid    | business_partner.xlsx | bank_details                | 277                                |
      | valid    | business_partner.xlsx | bank_details                | 278                                |
      | valid    | business_partner.xlsx | bank_details                | 279                                |
      | valid    | business_partner.xlsx | bank_details                | 280                                |
      | valid    | business_partner.xlsx | bank_details                | 281                                |
      | valid    | business_partner.xlsx | bank_details                | 282                                |
      | valid    | business_partner.xlsx | bank_details                | 283                                |
      | valid    | business_partner.xlsx | bank_details                | 284                                |
      | valid    | business_partner.xlsx | bank_details                | 285                                |
      | valid    | business_partner.xlsx | bank_details                | 286                                |
      | valid    | business_partner.xlsx | bank_details                | 287                                |
      | valid    | business_partner.xlsx | bank_details                | 288                                |
      | valid    | business_partner.xlsx | bank_details                | 289                                |
      | valid    | business_partner.xlsx | bank_details                | 290                                |
      | valid    | business_partner.xlsx | bank_details                | 291                                |
      | valid    | business_partner.xlsx | bank_details                | 292                                |
      | valid    | business_partner.xlsx | bank_details                | 293                                |
      | valid    | business_partner.xlsx | bank_details                | 294                                |
      | valid    | business_partner.xlsx | bank_details                | 295                                |
      | valid    | business_partner.xlsx | bank_details                | 296                                |
      | valid    | business_partner.xlsx | bank_details                | 297                                |
      | valid    | business_partner.xlsx | bank_details                | 298                                |
      | valid    | business_partner.xlsx | bank_details                | 299                                |
      | valid    | business_partner.xlsx | bank_details                | 300                                |
      | valid    | business_partner.xlsx | bank_details                | 301                                |
      | valid    | business_partner.xlsx | bank_details                | 302                                |
      | valid    | business_partner.xlsx | bank_details                | 303                                |
      | valid    | business_partner.xlsx | bank_details                | 304                                |
      | valid    | business_partner.xlsx | bank_details                | 305                                |
      | valid    | business_partner.xlsx | bank_details                | 306                                |
      | valid    | business_partner.xlsx | bank_details                | 307                                |
      | valid    | business_partner.xlsx | bank_details                | 308                                |
      | valid    | business_partner.xlsx | bank_details                | 309                                |
      | valid    | business_partner.xlsx | bank_details                | 310                                |
      | valid    | business_partner.xlsx | bank_details                | 311                                |
      | valid    | business_partner.xlsx | bank_details                | 312                                |
      | valid    | business_partner.xlsx | bank_details                | 313                                |
      | valid    | business_partner.xlsx | bank_details                | 314                                |
      | valid    | business_partner.xlsx | bank_details                | 315                                |
      | valid    | business_partner.xlsx | bank_details                | 316                                |
      | valid    | business_partner.xlsx | bank_details                | 317                                |
      | valid    | business_partner.xlsx | bank_details                | 318                                |
      | valid    | business_partner.xlsx | bank_details                | 319                                |
      | valid    | business_partner.xlsx | bank_details                | 320                                |
      | valid    | business_partner.xlsx | bank_details                | 321                                |
      | valid    | business_partner.xlsx | bank_details                | 322                                |
      | valid    | business_partner.xlsx | bank_details                | 323                                |
      | valid    | business_partner.xlsx | bank_details                | 324                                |
      | valid    | business_partner.xlsx | bank_details                | 325                                |
      | valid    | business_partner.xlsx | bank_details                | 326                                |
      | valid    | business_partner.xlsx | bank_details                | 327                                |
      | valid    | business_partner.xlsx | bank_details                | 328                                |
      | valid    | business_partner.xlsx | bank_details                | 329                                |
      | valid    | business_partner.xlsx | bank_details                | 330                                |
      | valid    | business_partner.xlsx | bank_details                | 331                                |
      | valid    | business_partner.xlsx | bank_details                | 332                                |
      | valid    | business_partner.xlsx | bank_details                | 333                                |
      | valid    | business_partner.xlsx | bank_details                | 334                                |
      | valid    | business_partner.xlsx | bank_details                | 335                                |
      | valid    | business_partner.xlsx | bank_details                | 336                                |
      | valid    | business_partner.xlsx | bank_details                | 337                                |
      | valid    | business_partner.xlsx | bank_details                | 338                                |
      | valid    | business_partner.xlsx | bank_details                | 339                                |
      | valid    | business_partner.xlsx | bank_details                | 340                                |
      | valid    | business_partner.xlsx | bank_details                | 341                                |
      | valid    | business_partner.xlsx | bank_details                | 342                                |
      | valid    | business_partner.xlsx | bank_details                | 343                                |
      | valid    | business_partner.xlsx | bank_details                | 344                                |
      | valid    | business_partner.xlsx | bank_details                | 345                                |
      | valid    | business_partner.xlsx | bank_details                | 346                                |
      | valid    | business_partner.xlsx | bank_details                | 347                                |
      | valid    | business_partner.xlsx | bank_details                | 348                                |
      | valid    | business_partner.xlsx | bank_details                | 349                                |
      | valid    | business_partner.xlsx | bank_details                | 350                                |
      | valid    | business_partner.xlsx | bank_details                | 351                                |
      | valid    | business_partner.xlsx | bank_details                | 352                                |
      | valid    | business_partner.xlsx | bank_details                | 353                                |
      | valid    | business_partner.xlsx | bank_details                | 354                                |
      | valid    | business_partner.xlsx | bank_details                | 355                                |
      | valid    | business_partner.xlsx | bank_details                | 356                                |
      | valid    | business_partner.xlsx | bank_details                | 357                                |
      | valid    | business_partner.xlsx | bank_details                | 358                                |
      | valid    | business_partner.xlsx | bank_details                | 359                                |
      | valid    | business_partner.xlsx | bank_details                | 360                                |
      | valid    | business_partner.xlsx | bank_details                | 361                                |
      | valid    | business_partner.xlsx | bank_details                | 362                                |
      | valid    | business_partner.xlsx | bank_details                | 363                                |
      | valid    | business_partner.xlsx | bank_details                | 364                                |
      | valid    | business_partner.xlsx | bank_details                | 365                                |
      | valid    | business_partner.xlsx | bank_details                | 366                                |
      | valid    | business_partner.xlsx | bank_details                | 367                                |
      | valid    | business_partner.xlsx | bank_details                | 368                                |
      | valid    | business_partner.xlsx | bank_details                | 369                                |
      | valid    | business_partner.xlsx | bank_details                | 370                                |
      | valid    | business_partner.xlsx | bank_details                | 371                                |
      | valid    | business_partner.xlsx | bank_details                | 372                                |
      | valid    | business_partner.xlsx | bank_details                | 373                                |
      | valid    | business_partner.xlsx | bank_details                | 374                                |
      | valid    | business_partner.xlsx | bank_details                | 375                                |
      | valid    | business_partner.xlsx | bank_details                | 376                                |
      | valid    | business_partner.xlsx | bank_details                | 377                                |
      | valid    | business_partner.xlsx | bank_details                | 378                                |
      | valid    | business_partner.xlsx | bank_details                | 379                                |
      | valid    | business_partner.xlsx | bank_details                | 380                                |
      | valid    | business_partner.xlsx | bank_details                | 381                                |
      | valid    | business_partner.xlsx | bank_details                | 382                                |
      | valid    | business_partner.xlsx | bank_details                | 383                                |
      | valid    | business_partner.xlsx | bank_details                | 384                                |
      | valid    | business_partner.xlsx | bank_details                | 385                                |
      | valid    | business_partner.xlsx | bank_details                | 386                                |
      | valid    | business_partner.xlsx | bank_details                | 387                                |
      | valid    | business_partner.xlsx | bank_details                | 388                                |
      | valid    | business_partner.xlsx | bank_details                | 389                                |
      | valid    | business_partner.xlsx | bank_details                | 390                                |
      | valid    | business_partner.xlsx | bank_details                | 391                                |
      | valid    | business_partner.xlsx | bank_details                | 392                                |
      | valid    | business_partner.xlsx | bank_details                | 393                                |
      | valid    | business_partner.xlsx | bank_details                | 394                                |
      | valid    | business_partner.xlsx | bank_details                | 395                                |
      | valid    | business_partner.xlsx | bank_details                | 396                                |
      | valid    | business_partner.xlsx | bank_details                | 397                                |
      | valid    | business_partner.xlsx | bank_details                | 398                                |
      | valid    | business_partner.xlsx | bank_details                | 399                                |
      | valid    | business_partner.xlsx | bank_details                | 400                                |
      | valid    | business_partner.xlsx | bank_details                | 401                                |
      | valid    | business_partner.xlsx | bank_details                | 402                                |
      | valid    | business_partner.xlsx | bank_details                | 403                                |
      | valid    | business_partner.xlsx | bank_details                | 404                                |
      | valid    | business_partner.xlsx | bank_details                | 405                                |
      | valid    | business_partner.xlsx | bank_details                | 406                                |
      | valid    | business_partner.xlsx | bank_details                | 407                                |
      | valid    | business_partner.xlsx | bank_details                | 408                                |
      | valid    | business_partner.xlsx | bank_details                | 409                                |
      | valid    | business_partner.xlsx | bank_details                | 410                                |
      | valid    | business_partner.xlsx | bank_details                | 411                                |
      | valid    | business_partner.xlsx | bank_details                | 412                                |
      | valid    | business_partner.xlsx | bank_details                | 413                                |
      | valid    | business_partner.xlsx | bank_details                | 414                                |
      | valid    | business_partner.xlsx | bank_details                | 415                                |
      | valid    | business_partner.xlsx | bank_details                | 416                                |
      | valid    | business_partner.xlsx | bank_details                | 417                                |
      | valid    | business_partner.xlsx | bank_details                | 418                                |
      | valid    | business_partner.xlsx | bank_details                | 419                                |
      | valid    | business_partner.xlsx | bank_details                | 420                                |
      | valid    | business_partner.xlsx | bank_details                | 421                                |
      | valid    | business_partner.xlsx | bank_details                | 422                                |
      | valid    | business_partner.xlsx | bank_details                | 423                                |
      | valid    | business_partner.xlsx | bank_details                | 424                                |
      | valid    | business_partner.xlsx | bank_details                | 425                                |
      | valid    | business_partner.xlsx | bank_details                | 426                                |
      | valid    | business_partner.xlsx | bank_details                | 427                                |
      | valid    | business_partner.xlsx | bank_details                | 428                                |
      | valid    | business_partner.xlsx | bank_details                | 429                                |
      | valid    | business_partner.xlsx | bank_details                | 430                                |
      | valid    | business_partner.xlsx | bank_details                | 431                                |
      | valid    | business_partner.xlsx | bank_details                | 432                                |
      | valid    | business_partner.xlsx | bank_details                | 433                                |
      | valid    | business_partner.xlsx | bank_details                | 434                                |
      | valid    | business_partner.xlsx | bank_details                | 435                                |
      | valid    | business_partner.xlsx | bank_details                | 436                                |
      | valid    | business_partner.xlsx | bank_details                | 437                                |
      | valid    | business_partner.xlsx | bank_details                | 438                                |
      | valid    | business_partner.xlsx | bank_details                | 439                                |
      | valid    | business_partner.xlsx | bank_details                | 440                                |
      | valid    | business_partner.xlsx | bank_details                | 441                                |
      | valid    | business_partner.xlsx | bank_details                | 442                                |
      | valid    | business_partner.xlsx | bank_details                | 443                                |
      | valid    | business_partner.xlsx | bank_details                | 444                                |
      | valid    | business_partner.xlsx | bank_details                | 445                                |
      | valid    | business_partner.xlsx | bank_details                | 446                                |
      | valid    | business_partner.xlsx | bank_details                | 447                                |
      | valid    | business_partner.xlsx | bank_details                | 448                                |
      | valid    | business_partner.xlsx | bank_details                | 449                                |
      | valid    | business_partner.xlsx | bank_details                | 450                                |
      | valid    | business_partner.xlsx | bank_details                | 451                                |
      | valid    | business_partner.xlsx | bank_details                | 452                                |
      | valid    | business_partner.xlsx | bank_details                | 453                                |
      | valid    | business_partner.xlsx | bank_details                | 454                                |
      | valid    | business_partner.xlsx | bank_details                | 455                                |
      | valid    | business_partner.xlsx | bank_details                | 456                                |
      | valid    | business_partner.xlsx | bank_details                | 457                                |
      | valid    | business_partner.xlsx | bank_details                | 458                                |
      | valid    | business_partner.xlsx | bank_details                | 459                                |
      | valid    | business_partner.xlsx | bank_details                | 460                                |
      | valid    | business_partner.xlsx | bank_details                | 461                                |
      | valid    | business_partner.xlsx | bank_details                | 462                                |
      | valid    | business_partner.xlsx | bank_details                | 463                                |
      | valid    | business_partner.xlsx | bank_details                | 464                                |
      | valid    | business_partner.xlsx | bank_details                | 465                                |
      | valid    | business_partner.xlsx | bank_details                | 466                                |
      | valid    | business_partner.xlsx | bank_details                | 467                                |
      | valid    | business_partner.xlsx | bank_details                | 468                                |
      | valid    | business_partner.xlsx | bank_details                | 469                                |
      | valid    | business_partner.xlsx | bank_details                | 470                                |
      | valid    | business_partner.xlsx | bank_details                | 471                                |
      | valid    | business_partner.xlsx | bank_details                | 472                                |
      | valid    | business_partner.xlsx | bank_details                | 473                                |
      | valid    | business_partner.xlsx | bank_details                | 474                                |
      | valid    | business_partner.xlsx | bank_details                | 475                                |
      | valid    | business_partner.xlsx | bank_details                | 476                                |
      | valid    | business_partner.xlsx | bank_details                | 477                                |
      | valid    | business_partner.xlsx | bank_details                | 478                                |
      | valid    | business_partner.xlsx | bank_details                | 479                                |
      | valid    | business_partner.xlsx | bank_details                | 480                                |
      | valid    | business_partner.xlsx | bank_details                | 481                                |
      | valid    | business_partner.xlsx | bank_details                | 482                                |
      | valid    | business_partner.xlsx | bank_details                | 483                                |
      | valid    | business_partner.xlsx | bank_details                | 484                                |
      | valid    | business_partner.xlsx | bank_details                | 485                                |
      | valid    | business_partner.xlsx | bank_details                | 486                                |
      | valid    | business_partner.xlsx | bank_details                | 487                                |
      | valid    | business_partner.xlsx | bank_details                | 488                                |
      | valid    | business_partner.xlsx | bank_details                | 489                                |
      | valid    | business_partner.xlsx | bank_details                | 490                                |
      | valid    | business_partner.xlsx | bank_details                | 491                                |
      | valid    | business_partner.xlsx | bank_details                | 492                                |
      | valid    | business_partner.xlsx | bank_details                | 493                                |
      | valid    | business_partner.xlsx | bank_details                | 494                                |
      | valid    | business_partner.xlsx | bank_details                | 495                                |
      | valid    | business_partner.xlsx | bank_details                | 496                                |
      | valid    | business_partner.xlsx | bank_details                | 497                                |
      | valid    | business_partner.xlsx | bank_details                | 498                                |
      | valid    | business_partner.xlsx | bank_details                | 499                                |
      | valid    | business_partner.xlsx | bank_details                | 500                                |
      | valid    | business_partner.xlsx | bank_details                | 501                                |
      | valid    | business_partner.xlsx | bank_details                | 502                                |
      | valid    | business_partner.xlsx | bank_details                | 503                                |
      | valid    | business_partner.xlsx | bank_details                | 504                                |
      | valid    | business_partner.xlsx | bank_details                | 505                                |
      | valid    | business_partner.xlsx | bank_details                | 506                                |
      | valid    | business_partner.xlsx | bank_details                | 507                                |
      | valid    | business_partner.xlsx | bank_details                | 508                                |
      | valid    | business_partner.xlsx | bank_details                | 509                                |
      | valid    | business_partner.xlsx | bank_details                | 510                                |
      | valid    | business_partner.xlsx | bank_details                | 511                                |
      | valid    | business_partner.xlsx | bank_details                | 512                                |
      | valid    | business_partner.xlsx | bank_details                | 513                                |
      | valid    | business_partner.xlsx | bank_details                | 514                                |
      | valid    | business_partner.xlsx | bank_details                | 515                                |
      | valid    | business_partner.xlsx | bank_details                | 516                                |
      | valid    | business_partner.xlsx | bank_details                | 517                                |
      | valid    | business_partner.xlsx | bank_details                | 518                                |
      | valid    | business_partner.xlsx | bank_details                | 519                                |
      | valid    | business_partner.xlsx | bank_details                | 520                                |
      | valid    | business_partner.xlsx | bank_details                | 521                                |
      | valid    | business_partner.xlsx | bank_details                | 522                                |
      | valid    | business_partner.xlsx | bank_details                | 523                                |
      | valid    | business_partner.xlsx | bank_details                | 524                                |
      | valid    | business_partner.xlsx | bank_details                | 525                                |
      | valid    | business_partner.xlsx | bank_details                | 526                                |
      | valid    | business_partner.xlsx | bank_details                | 527                                |
      | valid    | business_partner.xlsx | bank_details                | 528                                |
      | valid    | business_partner.xlsx | bank_details                | 529                                |
      | valid    | business_partner.xlsx | bank_details                | 530                                |
      | valid    | business_partner.xlsx | bank_details                | 531                                |
      | valid    | business_partner.xlsx | bank_details                | 532                                |
      | valid    | business_partner.xlsx | bank_details                | 533                                |
      | valid    | business_partner.xlsx | bank_details                | 534                                |
      | valid    | business_partner.xlsx | bank_details                | 535                                |
      | valid    | business_partner.xlsx | bank_details                | 536                                |
      | valid    | business_partner.xlsx | bank_details                | 537                                |
      | valid    | business_partner.xlsx | bank_details                | 538                                |
      | valid    | business_partner.xlsx | bank_details                | 539                                |
      | valid    | business_partner.xlsx | bank_details                | 540                                |
      | valid    | business_partner.xlsx | bank_details                | 541                                |
      | valid    | business_partner.xlsx | bank_details                | 542                                |
      | valid    | business_partner.xlsx | bank_details                | 543                                |
      | valid    | business_partner.xlsx | bank_details                | 544                                |
      | valid    | business_partner.xlsx | bank_details                | 545                                |
      | valid    | business_partner.xlsx | bank_details                | 546                                |
      | valid    | business_partner.xlsx | bank_details                | 547                                |
      | valid    | business_partner.xlsx | bank_details                | 548                                |
      | valid    | business_partner.xlsx | bank_details                | 549                                |
      | valid    | business_partner.xlsx | bank_details                | 550                                |
      | valid    | business_partner.xlsx | bank_details                | 551                                |
      | valid    | business_partner.xlsx | bank_details                | 552                                |
      | valid    | business_partner.xlsx | bank_details                | 553                                |
      | valid    | business_partner.xlsx | bank_details                | 554                                |
      | valid    | business_partner.xlsx | bank_details                | 555                                |
      | valid    | business_partner.xlsx | bank_details                | 556                                |
      | valid    | business_partner.xlsx | bank_details                | 557                                |
      | valid    | business_partner.xlsx | bank_details                | 558                                |
      | valid    | business_partner.xlsx | bank_details                | 559                                |
      | valid    | business_partner.xlsx | bank_details                | 560                                |
      | valid    | business_partner.xlsx | bank_details                | 561                                |
      | valid    | business_partner.xlsx | bank_details                | 562                                |
      | valid    | business_partner.xlsx | bank_details                | 563                                |
      | valid    | business_partner.xlsx | bank_details                | 564                                |
      | valid    | business_partner.xlsx | bank_details                | 565                                |
      | valid    | business_partner.xlsx | bank_details                | 566                                |
      | valid    | business_partner.xlsx | bank_details                | 567                                |
      | valid    | business_partner.xlsx | bank_details                | 568                                |
      | valid    | business_partner.xlsx | bank_details                | 569                                |
      | valid    | business_partner.xlsx | bank_details                | 570                                |
      | valid    | business_partner.xlsx | bank_details                | 571                                |
      | valid    | business_partner.xlsx | bank_details                | 572                                |
      | valid    | business_partner.xlsx | bank_details                | 573                                |
      | valid    | business_partner.xlsx | bank_details                | 574                                |
      | valid    | business_partner.xlsx | bank_details                | 575                                |
      | valid    | business_partner.xlsx | bank_details                | 576                                |
      | valid    | business_partner.xlsx | bank_details                | 577                                |
      | valid    | business_partner.xlsx | bank_details                | 578                                |
      | valid    | business_partner.xlsx | bank_details                | 579                                |
      | valid    | business_partner.xlsx | bank_details                | 580                                |
      | valid    | business_partner.xlsx | bank_details                | 581                                |
      | valid    | business_partner.xlsx | bank_details                | 582                                |
      | valid    | business_partner.xlsx | bank_details                | 583                                |
      | valid    | business_partner.xlsx | bank_details                | 584                                |
      | valid    | business_partner.xlsx | bank_details                | 585                                |
      | valid    | business_partner.xlsx | bank_details                | 586                                |
      | valid    | business_partner.xlsx | bank_details                | 587                                |
      | valid    | business_partner.xlsx | bank_details                | 588                                |
      | valid    | business_partner.xlsx | bank_details                | 589                                |
      | valid    | business_partner.xlsx | bank_details                | 590                                |
      | valid    | business_partner.xlsx | bank_details                | 591                                |
      | valid    | business_partner.xlsx | bank_details                | 592                                |
      | valid    | business_partner.xlsx | bank_details                | 593                                |
      | valid    | business_partner.xlsx | bank_details                | 594                                |
      | valid    | business_partner.xlsx | bank_details                | 595                                |
      | valid    | business_partner.xlsx | bank_details                | 596                                |
      | valid    | business_partner.xlsx | bank_details                | 597                                |
      | valid    | business_partner.xlsx | bank_details                | 598                                |
      | valid    | business_partner.xlsx | bank_details                | 599                                |
      | valid    | business_partner.xlsx | bank_details                | 600                                |
      | valid    | business_partner.xlsx | bank_details                | 601                                |
      | valid    | business_partner.xlsx | bank_details                | 602                                |
      | valid    | business_partner.xlsx | bank_details                | 603                                |
      | valid    | business_partner.xlsx | bank_details                | 604                                |
      | valid    | business_partner.xlsx | bank_details                | 605                                |
      | valid    | business_partner.xlsx | bank_details                | 606                                |
      | valid    | business_partner.xlsx | bank_details                | 607                                |
      | valid    | business_partner.xlsx | bank_details                | 608                                |
      | valid    | business_partner.xlsx | bank_details                | 609                                |
      | valid    | business_partner.xlsx | bank_details                | 610                                |
      | valid    | business_partner.xlsx | bank_details                | 611                                |
      | valid    | business_partner.xlsx | bank_details                | 612                                |
      | valid    | business_partner.xlsx | bank_details                | 613                                |
      | valid    | business_partner.xlsx | bank_details                | 614                                |
      | valid    | business_partner.xlsx | bank_details                | 615                                |
      | valid    | business_partner.xlsx | bank_details                | 616                                |
      | valid    | business_partner.xlsx | bank_details                | 617                                |
      | valid    | business_partner.xlsx | bank_details                | 618                                |
      | valid    | business_partner.xlsx | bank_details                | 619                                |
      | valid    | business_partner.xlsx | bank_details                | 620                                |
      | valid    | business_partner.xlsx | bank_details                | 621                                |
      | valid    | business_partner.xlsx | bank_details                | 622                                |
      | valid    | business_partner.xlsx | bank_details                | 623                                |
      | valid    | business_partner.xlsx | bank_details                | 624                                |
      | valid    | business_partner.xlsx | bank_details                | 625                                |
      | valid    | business_partner.xlsx | bank_details                | 626                                |
      | valid    | business_partner.xlsx | bank_details                | 627                                |
      | valid    | business_partner.xlsx | bank_details                | 628                                |
      | valid    | business_partner.xlsx | bank_details                | 629                                |
      | valid    | business_partner.xlsx | bank_details                | 630                                |
      | valid    | business_partner.xlsx | bank_details                | 631                                |
      | valid    | business_partner.xlsx | bank_details                | 632                                |
      | valid    | business_partner.xlsx | bank_details                | 633                                |
      | valid    | business_partner.xlsx | bank_details                | 634                                |
      | valid    | business_partner.xlsx | bank_details                | 635                                |
      | valid    | business_partner.xlsx | bank_details                | 636                                |
      | valid    | business_partner.xlsx | bank_details                | 637                                |
      | valid    | business_partner.xlsx | bank_details                | 638                                |
      | valid    | business_partner.xlsx | bank_details                | 639                                |
      | valid    | business_partner.xlsx | bank_details                | 640                                |
      | valid    | business_partner.xlsx | bank_details                | 641                                |
      | valid    | business_partner.xlsx | bank_details                | 642                                |
      | valid    | business_partner.xlsx | bank_details                | 643                                |
      | valid    | business_partner.xlsx | bank_details                | 644                                |
      | valid    | business_partner.xlsx | bank_details                | 645                                |
      | valid    | business_partner.xlsx | bank_details                | 646                                |
      | valid    | business_partner.xlsx | bank_details                | 647                                |
      | valid    | business_partner.xlsx | bank_details                | 648                                |
      | valid    | business_partner.xlsx | bank_details                | 649                                |
      | valid    | business_partner.xlsx | bank_details                | 650                                |
      | valid    | business_partner.xlsx | bank_details                | 651                                |
      | valid    | business_partner.xlsx | bank_details                | 652                                |
      | valid    | business_partner.xlsx | bank_details                | 653                                |
      | valid    | business_partner.xlsx | bank_details                | 654                                |
      | valid    | business_partner.xlsx | bank_details                | 655                                |
      | valid    | business_partner.xlsx | bank_details                | 656                                |
      | valid    | business_partner.xlsx | bank_details                | 657                                |
      | valid    | business_partner.xlsx | bank_details                | 658                                |
      | valid    | business_partner.xlsx | bank_details                | 659                                |
      | valid    | business_partner.xlsx | bank_details                | 660                                |
      | valid    | business_partner.xlsx | bank_details                | 661                                |
      | valid    | business_partner.xlsx | bank_details                | 662                                |
      | valid    | business_partner.xlsx | bank_details                | 663                                |
      | valid    | business_partner.xlsx | bank_details                | 664                                |
      | valid    | business_partner.xlsx | bank_details                | 665                                |
      | valid    | business_partner.xlsx | bank_details                | 666                                |
      | valid    | business_partner.xlsx | bank_details                | 667                                |
      | valid    | business_partner.xlsx | bank_details                | 668                                |
      | valid    | business_partner.xlsx | bank_details                | 669                                |
      | valid    | business_partner.xlsx | bank_details                | 670                                |
      | valid    | business_partner.xlsx | bank_details                | 671                                |
      | valid    | business_partner.xlsx | bank_details                | 672                                |
      | valid    | business_partner.xlsx | bank_details                | 673                                |
      | valid    | business_partner.xlsx | bank_details                | 674                                |
      | valid    | business_partner.xlsx | bank_details                | 675                                |
      | valid    | business_partner.xlsx | bank_details                | 676                                |
      | valid    | business_partner.xlsx | bank_details                | 677                                |
      | valid    | business_partner.xlsx | bank_details                | 678                                |
      | valid    | business_partner.xlsx | bank_details                | 679                                |
      | valid    | business_partner.xlsx | bank_details                | 680                                |
      | valid    | business_partner.xlsx | bank_details                | 681                                |
      | valid    | business_partner.xlsx | bank_details                | 682                                |
      | valid    | business_partner.xlsx | bank_details                | 683                                |
      | valid    | business_partner.xlsx | bank_details                | 684                                |
      | valid    | business_partner.xlsx | bank_details                | 685                                |
      | valid    | business_partner.xlsx | bank_details                | 686                                |
      | valid    | business_partner.xlsx | bank_details                | 687                                |
      | valid    | business_partner.xlsx | bank_details                | 688                                |
      | valid    | business_partner.xlsx | bank_details                | 689                                |
      | valid    | business_partner.xlsx | bank_details                | 690                                |
      | valid    | business_partner.xlsx | bank_details                | 691                                |
      | valid    | business_partner.xlsx | bank_details                | 692                                |
      | valid    | business_partner.xlsx | bank_details                | 693                                |
      | valid    | business_partner.xlsx | bank_details                | 694                                |
      | valid    | business_partner.xlsx | bank_details                | 695                                |
      | valid    | business_partner.xlsx | bank_details                | 696                                |
      | valid    | business_partner.xlsx | bank_details                | 697                                |
      | valid    | business_partner.xlsx | bank_details                | 698                                |
      | valid    | business_partner.xlsx | bank_details                | 699                                |
      | valid    | business_partner.xlsx | bank_details                | 700                                |
      | valid    | business_partner.xlsx | bank_details                | 701                                |
      | valid    | business_partner.xlsx | bank_details                | 702                                |
      | valid    | business_partner.xlsx | bank_details                | 703                                |
      | valid    | business_partner.xlsx | bank_details                | 704                                |
      | valid    | business_partner.xlsx | bank_details                | 705                                |
      | valid    | business_partner.xlsx | bank_details                | 706                                |
      | valid    | business_partner.xlsx | bank_details                | 707                                |
      | valid    | business_partner.xlsx | bank_details                | 708                                |
      | valid    | business_partner.xlsx | bank_details                | 709                                |
      | valid    | business_partner.xlsx | bank_details                | 710                                |
      | valid    | business_partner.xlsx | bank_details                | 711                                |
      | valid    | business_partner.xlsx | bank_details                | 712                                |
      | valid    | business_partner.xlsx | bank_details                | 713                                |
      | valid    | business_partner.xlsx | bank_details                | 714                                |
      | valid    | business_partner.xlsx | bank_details                | 715                                |
      | valid    | business_partner.xlsx | bank_details                | 716                                |
      | valid    | business_partner.xlsx | bank_details                | 717                                |
      | valid    | business_partner.xlsx | bank_details                | 718                                |
      | valid    | business_partner.xlsx | bank_details                | 719                                |
      | valid    | business_partner.xlsx | bank_details                | 720                                |
      | valid    | business_partner.xlsx | bank_details                | 721                                |
      | valid    | business_partner.xlsx | bank_details                | 722                                |
      | valid    | business_partner.xlsx | bank_details                | 723                                |
      | valid    | business_partner.xlsx | bank_details                | 724                                |
      | valid    | business_partner.xlsx | bank_details                | 725                                |
      | valid    | business_partner.xlsx | bank_details                | 726                                |
      | valid    | business_partner.xlsx | bank_details                | 727                                |
      | valid    | business_partner.xlsx | bank_details                | 728                                |
      | valid    | business_partner.xlsx | bank_details                | 729                                |
      | valid    | business_partner.xlsx | bank_details                | 730                                |
      | valid    | business_partner.xlsx | bank_details                | 731                                |
      | valid    | business_partner.xlsx | bank_details                | 732                                |
      | valid    | business_partner.xlsx | bank_details                | 733                                |
      | valid    | business_partner.xlsx | bank_details                | 734                                |
      | valid    | business_partner.xlsx | bank_details                | 735                                |
      | valid    | business_partner.xlsx | bank_details                | 736                                |
      | valid    | business_partner.xlsx | bank_details                | 737                                |
      | valid    | business_partner.xlsx | bank_details                | 738                                |
      | valid    | business_partner.xlsx | bank_details                | 739                                |
      | valid    | business_partner.xlsx | bank_details                | 740                                |
      | valid    | business_partner.xlsx | bank_details                | 741                                |
      | valid    | business_partner.xlsx | bank_details                | 742                                |
      | valid    | business_partner.xlsx | bank_details                | 743                                |
      | valid    | business_partner.xlsx | bank_details                | 744                                |
      | valid    | business_partner.xlsx | bank_details                | 745                                |
      | valid    | business_partner.xlsx | bank_details                | 746                                |
      | valid    | business_partner.xlsx | bank_details                | 747                                |
      | valid    | business_partner.xlsx | bank_details                | 748                                |
      | valid    | business_partner.xlsx | bank_details                | 749                                |
      | valid    | business_partner.xlsx | bank_details                | 750                                |
      | valid    | business_partner.xlsx | bank_details                | 751                                |
      | valid    | business_partner.xlsx | bank_details                | 752                                |
      | valid    | business_partner.xlsx | bank_details                | 753                                |
      | valid    | business_partner.xlsx | bank_details                | 754                                |
      | valid    | business_partner.xlsx | bank_details                | 755                                |
      | valid    | business_partner.xlsx | bank_details                | 756                                |
      | valid    | business_partner.xlsx | bank_details                | 757                                |
      | valid    | business_partner.xlsx | bank_details                | 758                                |
      | valid    | business_partner.xlsx | bank_details                | 759                                |
      | valid    | business_partner.xlsx | bank_details                | 760                                |
      | valid    | business_partner.xlsx | bank_details                | 761                                |
      | valid    | business_partner.xlsx | bank_details                | 762                                |
      | valid    | business_partner.xlsx | bank_details                | 763                                |
      | valid    | business_partner.xlsx | bank_details                | 764                                |
      | valid    | business_partner.xlsx | bank_details                | 765                                |
      | valid    | business_partner.xlsx | bank_details                | 766                                |
      | valid    | business_partner.xlsx | bank_details                | 767                                |
      | valid    | business_partner.xlsx | bank_details                | 768                                |
      | valid    | business_partner.xlsx | bank_details                | 769                                |
      | valid    | business_partner.xlsx | bank_details                | 770                                |
      | valid    | business_partner.xlsx | bank_details                | 771                                |
      | valid    | business_partner.xlsx | bank_details                | 772                                |
      | valid    | business_partner.xlsx | bank_details                | 773                                |
      | valid    | business_partner.xlsx | bank_details                | 774                                |
      | valid    | business_partner.xlsx | bank_details                | 775                                |
      | valid    | business_partner.xlsx | bank_details                | 776                                |
      | valid    | business_partner.xlsx | bank_details                | 777                                |
      | valid    | business_partner.xlsx | bank_details                | 778                                |
      | valid    | business_partner.xlsx | bank_details                | 779                                |
      | valid    | business_partner.xlsx | bank_details                | 780                                |
      | valid    | business_partner.xlsx | bank_details                | 781                                |
      | valid    | business_partner.xlsx | bank_details                | 782                                |
      | valid    | business_partner.xlsx | bank_details                | 783                                |
      | valid    | business_partner.xlsx | bank_details                | 784                                |
      | valid    | business_partner.xlsx | bank_details                | 785                                |
      | valid    | business_partner.xlsx | bank_details                | 786                                |
      | valid    | business_partner.xlsx | bank_details                | 787                                |
      | valid    | business_partner.xlsx | bank_details                | 788                                |
      | valid    | business_partner.xlsx | bank_details                | 789                                |
      | valid    | business_partner.xlsx | bank_details                | 790                                |
      | valid    | business_partner.xlsx | bank_details                | 791                                |
      | valid    | business_partner.xlsx | bank_details                | 792                                |
      | valid    | business_partner.xlsx | bank_details                | 793                                |
      | valid    | business_partner.xlsx | bank_details                | 794                                |
      | valid    | business_partner.xlsx | bank_details                | 795                                |
      | valid    | business_partner.xlsx | bank_details                | 796                                |
      | valid    | business_partner.xlsx | bank_details                | 797                                |
      | valid    | business_partner.xlsx | bank_details                | 798                                |
      | valid    | business_partner.xlsx | bank_details                | 799                                |
      | valid    | business_partner.xlsx | bank_details                | 800                                |
      | valid    | business_partner.xlsx | bank_details                | 801                                |
      | valid    | business_partner.xlsx | bank_details                | 802                                |
      | valid    | business_partner.xlsx | bank_details                | 803                                |
      | valid    | business_partner.xlsx | bank_details                | 804                                |
      | valid    | business_partner.xlsx | bank_details                | 805                                |
      | valid    | business_partner.xlsx | bank_details                | 806                                |
      | valid    | business_partner.xlsx | bank_details                | 807                                |
      | valid    | business_partner.xlsx | bank_details                | 808                                |
      | valid    | business_partner.xlsx | bank_details                | 809                                |
      | valid    | business_partner.xlsx | bank_details                | 810                                |
      | valid    | business_partner.xlsx | bank_details                | 811                                |
      | valid    | business_partner.xlsx | bank_details                | 812                                |
      | valid    | business_partner.xlsx | bank_details                | 813                                |
      | valid    | business_partner.xlsx | bank_details                | 814                                |
      | valid    | business_partner.xlsx | bank_details                | 815                                |
      | valid    | business_partner.xlsx | bank_details                | 816                                |
      | valid    | business_partner.xlsx | bank_details                | 817                                |
      | valid    | business_partner.xlsx | bank_details                | 818                                |
      | valid    | business_partner.xlsx | bank_details                | 819                                |
      | valid    | business_partner.xlsx | bank_details                | 820                                |
      | valid    | business_partner.xlsx | bank_details                | 821                                |
      | valid    | business_partner.xlsx | bank_details                | 822                                |
      | valid    | business_partner.xlsx | bank_details                | 823                                |
      | valid    | business_partner.xlsx | bank_details                | 824                                |
      | valid    | business_partner.xlsx | bank_details                | 825                                |
      | valid    | business_partner.xlsx | bank_details                | 826                                |
      | valid    | business_partner.xlsx | bank_details                | 827                                |
      | valid    | business_partner.xlsx | bank_details                | 828                                |
      | valid    | business_partner.xlsx | bank_details                | 829                                |
      | valid    | business_partner.xlsx | bank_details                | 830                                |
      | valid    | business_partner.xlsx | bank_details                | 831                                |
      | valid    | business_partner.xlsx | bank_details                | 832                                |
      | valid    | business_partner.xlsx | bank_details                | 833                                |
      | valid    | business_partner.xlsx | bank_details                | 834                                |
      | valid    | business_partner.xlsx | bank_details                | 835                                |
      | valid    | business_partner.xlsx | bank_details                | 836                                |
      | valid    | business_partner.xlsx | bank_details                | 837                                |
      | valid    | business_partner.xlsx | bank_details                | 838                                |
      | valid    | business_partner.xlsx | bank_details                | 839                                |
      | valid    | business_partner.xlsx | bank_details                | 840                                |
      | valid    | business_partner.xlsx | bank_details                | 841                                |
      | valid    | business_partner.xlsx | bank_details                | 842                                |
      | valid    | business_partner.xlsx | bank_details                | 843                                |
      | valid    | business_partner.xlsx | bank_details                | 844                                |
      | valid    | business_partner.xlsx | bank_details                | 845                                |
      | valid    | business_partner.xlsx | bank_details                | 846                                |
      | valid    | business_partner.xlsx | bank_details                | 847                                |
      | valid    | business_partner.xlsx | bank_details                | 848                                |
      | valid    | business_partner.xlsx | bank_details                | 849                                |
      | valid    | business_partner.xlsx | bank_details                | 850                                |
      | valid    | business_partner.xlsx | bank_details                | 851                                |
      | valid    | business_partner.xlsx | bank_details                | 852                                |
      | valid    | business_partner.xlsx | bank_details                | 853                                |
      | valid    | business_partner.xlsx | bank_details                | 854                                |
      | valid    | business_partner.xlsx | bank_details                | 855                                |
      | valid    | business_partner.xlsx | bank_details                | 856                                |
      | valid    | business_partner.xlsx | bank_details                | 857                                |
      | valid    | business_partner.xlsx | bank_details                | 858                                |
      | valid    | business_partner.xlsx | bank_details                | 859                                |
      | valid    | business_partner.xlsx | bank_details                | 860                                |
      | valid    | business_partner.xlsx | bank_details                | 861                                |
      | valid    | business_partner.xlsx | bank_details                | 862                                |
      | valid    | business_partner.xlsx | bank_details                | 863                                |
      | valid    | business_partner.xlsx | bank_details                | 864                                |
      | valid    | business_partner.xlsx | bank_details                | 865                                |
      | valid    | business_partner.xlsx | bank_details                | 866                                |
      | valid    | business_partner.xlsx | bank_details                | 867                                |
      | valid    | business_partner.xlsx | bank_details                | 868                                |
      | valid    | business_partner.xlsx | bank_details                | 869                                |
      | valid    | business_partner.xlsx | bank_details                | 870                                |
      | valid    | business_partner.xlsx | bank_details                | 871                                |
      | valid    | business_partner.xlsx | bank_details                | 872                                |
      | valid    | business_partner.xlsx | bank_details                | 873                                |
      | valid    | business_partner.xlsx | bank_details                | 874                                |
      | valid    | business_partner.xlsx | bank_details                | 875                                |
      | valid    | business_partner.xlsx | bank_details                | 876                                |
      | valid    | business_partner.xlsx | bank_details                | 877                                |
      | valid    | business_partner.xlsx | bank_details                | 878                                |
      | valid    | business_partner.xlsx | bank_details                | 879                                |
      | valid    | business_partner.xlsx | bank_details                | 880                                |
      | valid    | business_partner.xlsx | bank_details                | 881                                |
      | valid    | business_partner.xlsx | bank_details                | 882                                |
      | valid    | business_partner.xlsx | bank_details                | 883                                |
      | valid    | business_partner.xlsx | bank_details                | 884                                |
      | valid    | business_partner.xlsx | bank_details                | 885                                |
      | valid    | business_partner.xlsx | bank_details                | 886                                |
      | valid    | business_partner.xlsx | bank_details                | 887                                |
      | valid    | business_partner.xlsx | bank_details                | 888                                |
      | valid    | business_partner.xlsx | bank_details                | 889                                |
      | valid    | business_partner.xlsx | bank_details                | 890                                |
      | valid    | business_partner.xlsx | bank_details                | 891                                |
      | valid    | business_partner.xlsx | bank_details                | 892                                |
      | valid    | business_partner.xlsx | bank_details                | 893                                |
      | valid    | business_partner.xlsx | bank_details                | 894                                |
      | valid    | business_partner.xlsx | bank_details                | 895                                |
      | valid    | business_partner.xlsx | bank_details                | 896                                |
      | valid    | business_partner.xlsx | bank_details                | 897                                |
      | valid    | business_partner.xlsx | bank_details                | 898                                |
      | valid    | business_partner.xlsx | bank_details                | 899                                |
      | valid    | business_partner.xlsx | bank_details                | 900                                |
      | valid    | business_partner.xlsx | bank_details                | 901                                |
      | valid    | business_partner.xlsx | bank_details                | 902                                |
      | valid    | business_partner.xlsx | bank_details                | 903                                |
      | valid    | business_partner.xlsx | bank_details                | 904                                |
      | valid    | business_partner.xlsx | bank_details                | 905                                |
      | valid    | business_partner.xlsx | bank_details                | 906                                |
      | valid    | business_partner.xlsx | bank_details                | 907                                |
      | valid    | business_partner.xlsx | bank_details                | 908                                |
      | valid    | business_partner.xlsx | bank_details                | 909                                |
      | valid    | business_partner.xlsx | bank_details                | 910                                |
      | valid    | business_partner.xlsx | bank_details                | 911                                |
      | valid    | business_partner.xlsx | bank_details                | 912                                |
      | valid    | business_partner.xlsx | bank_details                | 913                                |
      | valid    | business_partner.xlsx | bank_details                | 914                                |
      | valid    | business_partner.xlsx | bank_details                | 915                                |
      | valid    | business_partner.xlsx | bank_details                | 916                                |
      | valid    | business_partner.xlsx | bank_details                | 917                                |
      | valid    | business_partner.xlsx | bank_details                | 918                                |
      | valid    | business_partner.xlsx | bank_details                | 919                                |
      | valid    | business_partner.xlsx | bank_details                | 920                                |
      | valid    | business_partner.xlsx | bank_details                | 921                                |
      | valid    | business_partner.xlsx | bank_details                | 922                                |
      | valid    | business_partner.xlsx | bank_details                | 923                                |
      | valid    | business_partner.xlsx | bank_details                | 924                                |
      | valid    | business_partner.xlsx | bank_details                | 925                                |
      | valid    | business_partner.xlsx | bank_details                | 926                                |
      | valid    | business_partner.xlsx | bank_details                | 927                                |
      | valid    | business_partner.xlsx | bank_details                | 928                                |
      | valid    | business_partner.xlsx | bank_details                | 929                                |
      | valid    | business_partner.xlsx | bank_details                | 930                                |
      | valid    | business_partner.xlsx | bank_details                | 931                                |
      | valid    | business_partner.xlsx | bank_details                | 932                                |
      | valid    | business_partner.xlsx | bank_details                | 933                                |
      | valid    | business_partner.xlsx | bank_details                | 934                                |
      | valid    | business_partner.xlsx | bank_details                | 935                                |
      | valid    | business_partner.xlsx | bank_details                | 936                                |
      | valid    | business_partner.xlsx | bank_details                | 937                                |
      | valid    | business_partner.xlsx | bank_details                | 938                                |
      | valid    | business_partner.xlsx | bank_details                | 939                                |
      | valid    | business_partner.xlsx | bank_details                | 940                                |
      | valid    | business_partner.xlsx | bank_details                | 941                                |
      | valid    | business_partner.xlsx | bank_details                | 942                                |
      | valid    | business_partner.xlsx | bank_details                | 943                                |
      | valid    | business_partner.xlsx | bank_details                | 944                                |
      | valid    | business_partner.xlsx | bank_details                | 945                                |
      | valid    | business_partner.xlsx | bank_details                | 946                                |
      | valid    | business_partner.xlsx | bank_details                | 947                                |
      | valid    | business_partner.xlsx | bank_details                | 948                                |
      | valid    | business_partner.xlsx | bank_details                | 949                                |
      | valid    | business_partner.xlsx | bank_details                | 950                                |
      | valid    | business_partner.xlsx | bank_details                | 951                                |


Scenario Outline: ACAUTOCAS-17972:Saving business partner record with <Validity> Iban data
    And user creates a Business Partner
    And user reads data from the excel file "<BusinessPartnerWB>" under sheet "<BusinessPartnerWB_SheetName>" and row <BusinessPartnerWB_SheetName_rowNum>
    And user fills required fields present in business partner screen
    And user marks the status for record
    And user selects mode for this record
    And user clicks on Address tab in business partner
    And user fills address details in business partner
    And user clicks on bank account tab
    And user clicks on Add External Bank Branch
    And user fills bank details with "<Validity>" data
    And user clicks on done button of bank account tab
    And user clicks on Branch tab
    And user selects bank branch in branch details
    And user clicks on product tab
    And user selects product in business partner
    When user saves business partner details
    Then Record should be created for business partner master
    Examples:
      | Validity | BusinessPartnerWB     | BusinessPartnerWB_SheetName | BusinessPartnerWB_SheetName_rowNum |
      | valid    | business_partner.xlsx | bank_details                | 0                                  |
      | valid    | business_partner.xlsx | bank_details                | 1                                  |
      | valid    | business_partner.xlsx | bank_details                | 2                                  |
      | valid    | business_partner.xlsx | bank_details                | 3                                  |
      | valid    | business_partner.xlsx | bank_details                | 4                                  |
      | valid    | business_partner.xlsx | bank_details                | 5                                  |
      | valid    | business_partner.xlsx | bank_details                | 6                                  |
      | valid    | business_partner.xlsx | bank_details                | 7                                  |
      | valid    | business_partner.xlsx | bank_details                | 8                                  |
      | valid    | business_partner.xlsx | bank_details                | 9                                  |
      | valid    | business_partner.xlsx | bank_details                | 10                                 |
      | valid    | business_partner.xlsx | bank_details                | 11                                 |
      | valid    | business_partner.xlsx | bank_details                | 12                                 |
      | valid    | business_partner.xlsx | bank_details                | 13                                 |
      | valid    | business_partner.xlsx | bank_details                | 14                                 |
      | valid    | business_partner.xlsx | bank_details                | 15                                 |
      | valid    | business_partner.xlsx | bank_details                | 16                                 |
      | valid    | business_partner.xlsx | bank_details                | 17                                 |
      | valid    | business_partner.xlsx | bank_details                | 18                                 |
      | valid    | business_partner.xlsx | bank_details                | 19                                 |
      | valid    | business_partner.xlsx | bank_details                | 20                                 |
      | valid    | business_partner.xlsx | bank_details                | 21                                 |
      | valid    | business_partner.xlsx | bank_details                | 22                                 |
      | valid    | business_partner.xlsx | bank_details                | 23                                 |
      | valid    | business_partner.xlsx | bank_details                | 24                                 |
      | valid    | business_partner.xlsx | bank_details                | 25                                 |
      | valid    | business_partner.xlsx | bank_details                | 26                                 |
      | valid    | business_partner.xlsx | bank_details                | 27                                 |
      | valid    | business_partner.xlsx | bank_details                | 28                                 |
      | valid    | business_partner.xlsx | bank_details                | 29                                 |
      | valid    | business_partner.xlsx | bank_details                | 30                                 |
      | valid    | business_partner.xlsx | bank_details                | 31                                 |
      | valid    | business_partner.xlsx | bank_details                | 32                                 |
      | valid    | business_partner.xlsx | bank_details                | 33                                 |
      | valid    | business_partner.xlsx | bank_details                | 34                                 |
      | valid    | business_partner.xlsx | bank_details                | 35                                 |
      | valid    | business_partner.xlsx | bank_details                | 36                                 |
      | valid    | business_partner.xlsx | bank_details                | 37                                 |
      | valid    | business_partner.xlsx | bank_details                | 38                                 |
      | valid    | business_partner.xlsx | bank_details                | 39                                 |
      | valid    | business_partner.xlsx | bank_details                | 40                                 |
      | valid    | business_partner.xlsx | bank_details                | 41                                 |
      | valid    | business_partner.xlsx | bank_details                | 42                                 |
      | valid    | business_partner.xlsx | bank_details                | 43                                 |
      | valid    | business_partner.xlsx | bank_details                | 44                                 |
      | valid    | business_partner.xlsx | bank_details                | 45                                 |
      | valid    | business_partner.xlsx | bank_details                | 46                                 |
      | valid    | business_partner.xlsx | bank_details                | 47                                 |
      | valid    | business_partner.xlsx | bank_details                | 48                                 |
      | valid    | business_partner.xlsx | bank_details                | 49                                 |
      | valid    | business_partner.xlsx | bank_details                | 50                                 |
      | valid    | business_partner.xlsx | bank_details                | 51                                 |
      | valid    | business_partner.xlsx | bank_details                | 52                                 |
      | valid    | business_partner.xlsx | bank_details                | 53                                 |
      | valid    | business_partner.xlsx | bank_details                | 54                                 |
      | valid    | business_partner.xlsx | bank_details                | 55                                 |
      | valid    | business_partner.xlsx | bank_details                | 56                                 |
      | valid    | business_partner.xlsx | bank_details                | 57                                 |
      | valid    | business_partner.xlsx | bank_details                | 58                                 |
      | valid    | business_partner.xlsx | bank_details                | 59                                 |
      | valid    | business_partner.xlsx | bank_details                | 60                                 |
      | valid    | business_partner.xlsx | bank_details                | 61                                 |
      | valid    | business_partner.xlsx | bank_details                | 62                                 |
      | valid    | business_partner.xlsx | bank_details                | 63                                 |
      | valid    | business_partner.xlsx | bank_details                | 64                                 |
      | valid    | business_partner.xlsx | bank_details                | 65                                 |
      | valid    | business_partner.xlsx | bank_details                | 66                                 |
      | valid    | business_partner.xlsx | bank_details                | 67                                 |
      | valid    | business_partner.xlsx | bank_details                | 68                                 |
      | valid    | business_partner.xlsx | bank_details                | 69                                 |
      | valid    | business_partner.xlsx | bank_details                | 70                                 |
      | valid    | business_partner.xlsx | bank_details                | 71                                 |
      | valid    | business_partner.xlsx | bank_details                | 72                                 |
      | valid    | business_partner.xlsx | bank_details                | 73                                 |
      | valid    | business_partner.xlsx | bank_details                | 74                                 |
      | valid    | business_partner.xlsx | bank_details                | 75                                 |
      | valid    | business_partner.xlsx | bank_details                | 76                                 |
      | valid    | business_partner.xlsx | bank_details                | 77                                 |
      | valid    | business_partner.xlsx | bank_details                | 78                                 |
      | valid    | business_partner.xlsx | bank_details                | 79                                 |
      | valid    | business_partner.xlsx | bank_details                | 80                                 |
      | valid    | business_partner.xlsx | bank_details                | 81                                 |
      | valid    | business_partner.xlsx | bank_details                | 82                                 |
      | valid    | business_partner.xlsx | bank_details                | 83                                 |
      | valid    | business_partner.xlsx | bank_details                | 84                                 |
      | valid    | business_partner.xlsx | bank_details                | 85                                 |
      | valid    | business_partner.xlsx | bank_details                | 86                                 |
      | valid    | business_partner.xlsx | bank_details                | 87                                 |
      | valid    | business_partner.xlsx | bank_details                | 88                                 |
      | valid    | business_partner.xlsx | bank_details                | 89                                 |
      | valid    | business_partner.xlsx | bank_details                | 90                                 |
      | valid    | business_partner.xlsx | bank_details                | 91                                 |
      | valid    | business_partner.xlsx | bank_details                | 92                                 |
      | valid    | business_partner.xlsx | bank_details                | 93                                 |
      | valid    | business_partner.xlsx | bank_details                | 94                                 |
      | valid    | business_partner.xlsx | bank_details                | 95                                 |
      | valid    | business_partner.xlsx | bank_details                | 96                                 |
      | valid    | business_partner.xlsx | bank_details                | 97                                 |
      | valid    | business_partner.xlsx | bank_details                | 98                                 |
      | valid    | business_partner.xlsx | bank_details                | 99                                 |
      | valid    | business_partner.xlsx | bank_details                | 100                                |
      | valid    | business_partner.xlsx | bank_details                | 101                                |
      | valid    | business_partner.xlsx | bank_details                | 102                                |
      | valid    | business_partner.xlsx | bank_details                | 103                                |
      | valid    | business_partner.xlsx | bank_details                | 104                                |
      | valid    | business_partner.xlsx | bank_details                | 105                                |
      | valid    | business_partner.xlsx | bank_details                | 106                                |
      | valid    | business_partner.xlsx | bank_details                | 107                                |
      | valid    | business_partner.xlsx | bank_details                | 108                                |
      | valid    | business_partner.xlsx | bank_details                | 109                                |
      | valid    | business_partner.xlsx | bank_details                | 110                                |
      | valid    | business_partner.xlsx | bank_details                | 111                                |
      | valid    | business_partner.xlsx | bank_details                | 112                                |
      | valid    | business_partner.xlsx | bank_details                | 113                                |
      | valid    | business_partner.xlsx | bank_details                | 114                                |
      | valid    | business_partner.xlsx | bank_details                | 115                                |
      | valid    | business_partner.xlsx | bank_details                | 116                                |
      | valid    | business_partner.xlsx | bank_details                | 117                                |
      | valid    | business_partner.xlsx | bank_details                | 118                                |
      | valid    | business_partner.xlsx | bank_details                | 119                                |
      | valid    | business_partner.xlsx | bank_details                | 120                                |
      | valid    | business_partner.xlsx | bank_details                | 121                                |
      | valid    | business_partner.xlsx | bank_details                | 122                                |
      | valid    | business_partner.xlsx | bank_details                | 123                                |
      | valid    | business_partner.xlsx | bank_details                | 124                                |
      | valid    | business_partner.xlsx | bank_details                | 125                                |
      | valid    | business_partner.xlsx | bank_details                | 126                                |
      | valid    | business_partner.xlsx | bank_details                | 127                                |
      | valid    | business_partner.xlsx | bank_details                | 128                                |
      | valid    | business_partner.xlsx | bank_details                | 129                                |
      | valid    | business_partner.xlsx | bank_details                | 130                                |
      | valid    | business_partner.xlsx | bank_details                | 131                                |
      | valid    | business_partner.xlsx | bank_details                | 132                                |
      | valid    | business_partner.xlsx | bank_details                | 133                                |
      | valid    | business_partner.xlsx | bank_details                | 134                                |
      | valid    | business_partner.xlsx | bank_details                | 135                                |
      | valid    | business_partner.xlsx | bank_details                | 136                                |
      | valid    | business_partner.xlsx | bank_details                | 137                                |
      | valid    | business_partner.xlsx | bank_details                | 138                                |
      | valid    | business_partner.xlsx | bank_details                | 139                                |
      | valid    | business_partner.xlsx | bank_details                | 140                                |
      | valid    | business_partner.xlsx | bank_details                | 141                                |
      | valid    | business_partner.xlsx | bank_details                | 142                                |
      | valid    | business_partner.xlsx | bank_details                | 143                                |
      | valid    | business_partner.xlsx | bank_details                | 144                                |
      | valid    | business_partner.xlsx | bank_details                | 145                                |
      | valid    | business_partner.xlsx | bank_details                | 146                                |
      | valid    | business_partner.xlsx | bank_details                | 147                                |
      | valid    | business_partner.xlsx | bank_details                | 148                                |
      | valid    | business_partner.xlsx | bank_details                | 149                                |
      | valid    | business_partner.xlsx | bank_details                | 150                                |
      | valid    | business_partner.xlsx | bank_details                | 151                                |
      | valid    | business_partner.xlsx | bank_details                | 152                                |
      | valid    | business_partner.xlsx | bank_details                | 153                                |
      | valid    | business_partner.xlsx | bank_details                | 154                                |
      | valid    | business_partner.xlsx | bank_details                | 155                                |
      | valid    | business_partner.xlsx | bank_details                | 156                                |
      | valid    | business_partner.xlsx | bank_details                | 157                                |
      | valid    | business_partner.xlsx | bank_details                | 158                                |
      | valid    | business_partner.xlsx | bank_details                | 159                                |
      | valid    | business_partner.xlsx | bank_details                | 160                                |
      | valid    | business_partner.xlsx | bank_details                | 161                                |
      | valid    | business_partner.xlsx | bank_details                | 162                                |
      | valid    | business_partner.xlsx | bank_details                | 163                                |
      | valid    | business_partner.xlsx | bank_details                | 164                                |
      | valid    | business_partner.xlsx | bank_details                | 165                                |
      | valid    | business_partner.xlsx | bank_details                | 166                                |
      | valid    | business_partner.xlsx | bank_details                | 167                                |
      | valid    | business_partner.xlsx | bank_details                | 168                                |
      | valid    | business_partner.xlsx | bank_details                | 169                                |
      | valid    | business_partner.xlsx | bank_details                | 170                                |
      | valid    | business_partner.xlsx | bank_details                | 171                                |
      | valid    | business_partner.xlsx | bank_details                | 172                                |
      | valid    | business_partner.xlsx | bank_details                | 173                                |
      | valid    | business_partner.xlsx | bank_details                | 174                                |
      | valid    | business_partner.xlsx | bank_details                | 175                                |
      | valid    | business_partner.xlsx | bank_details                | 176                                |
      | valid    | business_partner.xlsx | bank_details                | 177                                |
      | valid    | business_partner.xlsx | bank_details                | 178                                |
      | valid    | business_partner.xlsx | bank_details                | 179                                |
      | valid    | business_partner.xlsx | bank_details                | 180                                |
      | valid    | business_partner.xlsx | bank_details                | 181                                |
      | valid    | business_partner.xlsx | bank_details                | 182                                |
      | valid    | business_partner.xlsx | bank_details                | 183                                |
      | valid    | business_partner.xlsx | bank_details                | 184                                |
      | valid    | business_partner.xlsx | bank_details                | 185                                |
      | valid    | business_partner.xlsx | bank_details                | 186                                |
      | valid    | business_partner.xlsx | bank_details                | 187                                |
      | valid    | business_partner.xlsx | bank_details                | 188                                |
      | valid    | business_partner.xlsx | bank_details                | 189                                |
      | valid    | business_partner.xlsx | bank_details                | 190                                |
      | valid    | business_partner.xlsx | bank_details                | 191                                |
      | valid    | business_partner.xlsx | bank_details                | 192                                |
      | valid    | business_partner.xlsx | bank_details                | 193                                |
      | valid    | business_partner.xlsx | bank_details                | 194                                |
      | valid    | business_partner.xlsx | bank_details                | 195                                |
      | valid    | business_partner.xlsx | bank_details                | 196                                |
      | valid    | business_partner.xlsx | bank_details                | 197                                |
      | valid    | business_partner.xlsx | bank_details                | 198                                |
      | valid    | business_partner.xlsx | bank_details                | 199                                |
      | valid    | business_partner.xlsx | bank_details                | 200                                |
      | valid    | business_partner.xlsx | bank_details                | 201                                |
      | valid    | business_partner.xlsx | bank_details                | 202                                |
      | valid    | business_partner.xlsx | bank_details                | 203                                |
      | valid    | business_partner.xlsx | bank_details                | 204                                |
      | valid    | business_partner.xlsx | bank_details                | 205                                |
      | valid    | business_partner.xlsx | bank_details                | 206                                |
      | valid    | business_partner.xlsx | bank_details                | 207                                |
      | valid    | business_partner.xlsx | bank_details                | 208                                |
      | valid    | business_partner.xlsx | bank_details                | 209                                |
      | valid    | business_partner.xlsx | bank_details                | 210                                |
      | valid    | business_partner.xlsx | bank_details                | 211                                |
      | valid    | business_partner.xlsx | bank_details                | 212                                |
      | valid    | business_partner.xlsx | bank_details                | 213                                |
      | valid    | business_partner.xlsx | bank_details                | 214                                |
      | valid    | business_partner.xlsx | bank_details                | 215                                |
      | valid    | business_partner.xlsx | bank_details                | 216                                |
      | valid    | business_partner.xlsx | bank_details                | 217                                |
      | valid    | business_partner.xlsx | bank_details                | 218                                |
      | valid    | business_partner.xlsx | bank_details                | 219                                |
      | valid    | business_partner.xlsx | bank_details                | 220                                |
      | valid    | business_partner.xlsx | bank_details                | 221                                |
      | valid    | business_partner.xlsx | bank_details                | 222                                |
      | valid    | business_partner.xlsx | bank_details                | 223                                |
      | valid    | business_partner.xlsx | bank_details                | 224                                |
      | valid    | business_partner.xlsx | bank_details                | 225                                |
      | valid    | business_partner.xlsx | bank_details                | 226                                |
      | valid    | business_partner.xlsx | bank_details                | 227                                |
      | valid    | business_partner.xlsx | bank_details                | 228                                |
      | valid    | business_partner.xlsx | bank_details                | 229                                |
      | valid    | business_partner.xlsx | bank_details                | 230                                |
      | valid    | business_partner.xlsx | bank_details                | 231                                |
      | valid    | business_partner.xlsx | bank_details                | 232                                |
      | valid    | business_partner.xlsx | bank_details                | 233                                |
      | valid    | business_partner.xlsx | bank_details                | 234                                |
      | valid    | business_partner.xlsx | bank_details                | 235                                |
      | valid    | business_partner.xlsx | bank_details                | 236                                |
      | valid    | business_partner.xlsx | bank_details                | 237                                |
      | valid    | business_partner.xlsx | bank_details                | 238                                |
      | valid    | business_partner.xlsx | bank_details                | 239                                |
      | valid    | business_partner.xlsx | bank_details                | 240                                |
      | valid    | business_partner.xlsx | bank_details                | 241                                |
      | valid    | business_partner.xlsx | bank_details                | 242                                |
      | valid    | business_partner.xlsx | bank_details                | 243                                |
      | valid    | business_partner.xlsx | bank_details                | 244                                |
      | valid    | business_partner.xlsx | bank_details                | 245                                |
      | valid    | business_partner.xlsx | bank_details                | 246                                |
      | valid    | business_partner.xlsx | bank_details                | 247                                |
      | valid    | business_partner.xlsx | bank_details                | 248                                |
      | valid    | business_partner.xlsx | bank_details                | 249                                |
      | valid    | business_partner.xlsx | bank_details                | 250                                |
      | valid    | business_partner.xlsx | bank_details                | 251                                |
      | valid    | business_partner.xlsx | bank_details                | 252                                |
      | valid    | business_partner.xlsx | bank_details                | 253                                |
      | valid    | business_partner.xlsx | bank_details                | 254                                |
      | valid    | business_partner.xlsx | bank_details                | 255                                |
      | valid    | business_partner.xlsx | bank_details                | 256                                |
      | valid    | business_partner.xlsx | bank_details                | 257                                |
      | valid    | business_partner.xlsx | bank_details                | 258                                |
      | valid    | business_partner.xlsx | bank_details                | 259                                |
      | valid    | business_partner.xlsx | bank_details                | 260                                |
      | valid    | business_partner.xlsx | bank_details                | 261                                |
      | valid    | business_partner.xlsx | bank_details                | 262                                |
      | valid    | business_partner.xlsx | bank_details                | 263                                |
      | valid    | business_partner.xlsx | bank_details                | 264                                |
      | valid    | business_partner.xlsx | bank_details                | 265                                |
      | valid    | business_partner.xlsx | bank_details                | 266                                |
      | valid    | business_partner.xlsx | bank_details                | 267                                |
      | valid    | business_partner.xlsx | bank_details                | 268                                |
      | valid    | business_partner.xlsx | bank_details                | 269                                |
      | valid    | business_partner.xlsx | bank_details                | 270                                |
      | valid    | business_partner.xlsx | bank_details                | 271                                |
      | valid    | business_partner.xlsx | bank_details                | 272                                |
      | valid    | business_partner.xlsx | bank_details                | 273                                |
      | valid    | business_partner.xlsx | bank_details                | 274                                |
      | valid    | business_partner.xlsx | bank_details                | 275                                |
      | valid    | business_partner.xlsx | bank_details                | 276                                |
      | valid    | business_partner.xlsx | bank_details                | 277                                |
      | valid    | business_partner.xlsx | bank_details                | 278                                |
      | valid    | business_partner.xlsx | bank_details                | 279                                |
      | valid    | business_partner.xlsx | bank_details                | 280                                |
      | valid    | business_partner.xlsx | bank_details                | 281                                |
      | valid    | business_partner.xlsx | bank_details                | 282                                |
      | valid    | business_partner.xlsx | bank_details                | 283                                |
      | valid    | business_partner.xlsx | bank_details                | 284                                |
      | valid    | business_partner.xlsx | bank_details                | 285                                |
      | valid    | business_partner.xlsx | bank_details                | 286                                |
      | valid    | business_partner.xlsx | bank_details                | 287                                |
      | valid    | business_partner.xlsx | bank_details                | 288                                |
      | valid    | business_partner.xlsx | bank_details                | 289                                |
      | valid    | business_partner.xlsx | bank_details                | 290                                |
      | valid    | business_partner.xlsx | bank_details                | 291                                |
      | valid    | business_partner.xlsx | bank_details                | 292                                |
      | valid    | business_partner.xlsx | bank_details                | 293                                |
      | valid    | business_partner.xlsx | bank_details                | 294                                |
      | valid    | business_partner.xlsx | bank_details                | 295                                |
      | valid    | business_partner.xlsx | bank_details                | 296                                |
      | valid    | business_partner.xlsx | bank_details                | 297                                |
      | valid    | business_partner.xlsx | bank_details                | 298                                |
      | valid    | business_partner.xlsx | bank_details                | 299                                |
      | valid    | business_partner.xlsx | bank_details                | 300                                |
      | valid    | business_partner.xlsx | bank_details                | 301                                |
      | valid    | business_partner.xlsx | bank_details                | 302                                |
      | valid    | business_partner.xlsx | bank_details                | 303                                |
      | valid    | business_partner.xlsx | bank_details                | 304                                |
      | valid    | business_partner.xlsx | bank_details                | 305                                |
      | valid    | business_partner.xlsx | bank_details                | 306                                |
      | valid    | business_partner.xlsx | bank_details                | 307                                |
      | valid    | business_partner.xlsx | bank_details                | 308                                |
      | valid    | business_partner.xlsx | bank_details                | 309                                |
      | valid    | business_partner.xlsx | bank_details                | 310                                |
      | valid    | business_partner.xlsx | bank_details                | 311                                |
      | valid    | business_partner.xlsx | bank_details                | 312                                |
      | valid    | business_partner.xlsx | bank_details                | 313                                |
      | valid    | business_partner.xlsx | bank_details                | 314                                |
      | valid    | business_partner.xlsx | bank_details                | 315                                |
      | valid    | business_partner.xlsx | bank_details                | 316                                |
      | valid    | business_partner.xlsx | bank_details                | 317                                |
      | valid    | business_partner.xlsx | bank_details                | 318                                |
      | valid    | business_partner.xlsx | bank_details                | 319                                |
      | valid    | business_partner.xlsx | bank_details                | 320                                |
      | valid    | business_partner.xlsx | bank_details                | 321                                |
      | valid    | business_partner.xlsx | bank_details                | 322                                |
      | valid    | business_partner.xlsx | bank_details                | 323                                |
      | valid    | business_partner.xlsx | bank_details                | 324                                |
      | valid    | business_partner.xlsx | bank_details                | 325                                |
      | valid    | business_partner.xlsx | bank_details                | 326                                |
      | valid    | business_partner.xlsx | bank_details                | 327                                |
      | valid    | business_partner.xlsx | bank_details                | 328                                |
      | valid    | business_partner.xlsx | bank_details                | 329                                |
      | valid    | business_partner.xlsx | bank_details                | 330                                |
      | valid    | business_partner.xlsx | bank_details                | 331                                |
      | valid    | business_partner.xlsx | bank_details                | 332                                |
      | valid    | business_partner.xlsx | bank_details                | 333                                |
      | valid    | business_partner.xlsx | bank_details                | 334                                |
      | valid    | business_partner.xlsx | bank_details                | 335                                |
      | valid    | business_partner.xlsx | bank_details                | 336                                |
      | valid    | business_partner.xlsx | bank_details                | 337                                |
      | valid    | business_partner.xlsx | bank_details                | 338                                |
      | valid    | business_partner.xlsx | bank_details                | 339                                |
      | valid    | business_partner.xlsx | bank_details                | 340                                |
      | valid    | business_partner.xlsx | bank_details                | 341                                |
      | valid    | business_partner.xlsx | bank_details                | 342                                |
      | valid    | business_partner.xlsx | bank_details                | 343                                |
      | valid    | business_partner.xlsx | bank_details                | 344                                |
      | valid    | business_partner.xlsx | bank_details                | 345                                |
      | valid    | business_partner.xlsx | bank_details                | 346                                |
      | valid    | business_partner.xlsx | bank_details                | 347                                |
      | valid    | business_partner.xlsx | bank_details                | 348                                |
      | valid    | business_partner.xlsx | bank_details                | 349                                |
      | valid    | business_partner.xlsx | bank_details                | 350                                |
      | valid    | business_partner.xlsx | bank_details                | 351                                |
      | valid    | business_partner.xlsx | bank_details                | 352                                |
      | valid    | business_partner.xlsx | bank_details                | 353                                |
      | valid    | business_partner.xlsx | bank_details                | 354                                |
      | valid    | business_partner.xlsx | bank_details                | 355                                |
      | valid    | business_partner.xlsx | bank_details                | 356                                |
      | valid    | business_partner.xlsx | bank_details                | 357                                |
      | valid    | business_partner.xlsx | bank_details                | 358                                |
      | valid    | business_partner.xlsx | bank_details                | 359                                |
      | valid    | business_partner.xlsx | bank_details                | 360                                |
      | valid    | business_partner.xlsx | bank_details                | 361                                |
      | valid    | business_partner.xlsx | bank_details                | 362                                |
      | valid    | business_partner.xlsx | bank_details                | 363                                |
      | valid    | business_partner.xlsx | bank_details                | 364                                |
      | valid    | business_partner.xlsx | bank_details                | 365                                |
      | valid    | business_partner.xlsx | bank_details                | 366                                |
      | valid    | business_partner.xlsx | bank_details                | 367                                |
      | valid    | business_partner.xlsx | bank_details                | 368                                |
      | valid    | business_partner.xlsx | bank_details                | 369                                |
      | valid    | business_partner.xlsx | bank_details                | 370                                |
      | valid    | business_partner.xlsx | bank_details                | 371                                |
      | valid    | business_partner.xlsx | bank_details                | 372                                |
      | valid    | business_partner.xlsx | bank_details                | 373                                |
      | valid    | business_partner.xlsx | bank_details                | 374                                |
      | valid    | business_partner.xlsx | bank_details                | 375                                |
      | valid    | business_partner.xlsx | bank_details                | 376                                |
      | valid    | business_partner.xlsx | bank_details                | 377                                |
      | valid    | business_partner.xlsx | bank_details                | 378                                |
      | valid    | business_partner.xlsx | bank_details                | 379                                |
      | valid    | business_partner.xlsx | bank_details                | 380                                |
      | valid    | business_partner.xlsx | bank_details                | 381                                |
      | valid    | business_partner.xlsx | bank_details                | 382                                |
      | valid    | business_partner.xlsx | bank_details                | 383                                |
      | valid    | business_partner.xlsx | bank_details                | 384                                |
      | valid    | business_partner.xlsx | bank_details                | 385                                |
      | valid    | business_partner.xlsx | bank_details                | 386                                |
      | valid    | business_partner.xlsx | bank_details                | 387                                |
      | valid    | business_partner.xlsx | bank_details                | 388                                |
      | valid    | business_partner.xlsx | bank_details                | 389                                |
      | valid    | business_partner.xlsx | bank_details                | 390                                |
      | valid    | business_partner.xlsx | bank_details                | 391                                |
      | valid    | business_partner.xlsx | bank_details                | 392                                |
      | valid    | business_partner.xlsx | bank_details                | 393                                |
      | valid    | business_partner.xlsx | bank_details                | 394                                |
      | valid    | business_partner.xlsx | bank_details                | 395                                |
      | valid    | business_partner.xlsx | bank_details                | 396                                |
      | valid    | business_partner.xlsx | bank_details                | 397                                |
      | valid    | business_partner.xlsx | bank_details                | 398                                |
      | valid    | business_partner.xlsx | bank_details                | 399                                |
      | valid    | business_partner.xlsx | bank_details                | 400                                |
      | valid    | business_partner.xlsx | bank_details                | 401                                |
      | valid    | business_partner.xlsx | bank_details                | 402                                |
      | valid    | business_partner.xlsx | bank_details                | 403                                |
      | valid    | business_partner.xlsx | bank_details                | 404                                |
      | valid    | business_partner.xlsx | bank_details                | 405                                |
      | valid    | business_partner.xlsx | bank_details                | 406                                |
      | valid    | business_partner.xlsx | bank_details                | 407                                |
      | valid    | business_partner.xlsx | bank_details                | 408                                |
      | valid    | business_partner.xlsx | bank_details                | 409                                |
      | valid    | business_partner.xlsx | bank_details                | 410                                |
      | valid    | business_partner.xlsx | bank_details                | 411                                |
      | valid    | business_partner.xlsx | bank_details                | 412                                |
      | valid    | business_partner.xlsx | bank_details                | 413                                |
      | valid    | business_partner.xlsx | bank_details                | 414                                |
      | valid    | business_partner.xlsx | bank_details                | 415                                |
      | valid    | business_partner.xlsx | bank_details                | 416                                |
      | valid    | business_partner.xlsx | bank_details                | 417                                |
      | valid    | business_partner.xlsx | bank_details                | 418                                |
      | valid    | business_partner.xlsx | bank_details                | 419                                |
      | valid    | business_partner.xlsx | bank_details                | 420                                |
      | valid    | business_partner.xlsx | bank_details                | 421                                |
      | valid    | business_partner.xlsx | bank_details                | 422                                |
      | valid    | business_partner.xlsx | bank_details                | 423                                |
      | valid    | business_partner.xlsx | bank_details                | 424                                |
      | valid    | business_partner.xlsx | bank_details                | 425                                |
      | valid    | business_partner.xlsx | bank_details                | 426                                |
      | valid    | business_partner.xlsx | bank_details                | 427                                |
      | valid    | business_partner.xlsx | bank_details                | 428                                |
      | valid    | business_partner.xlsx | bank_details                | 429                                |
      | valid    | business_partner.xlsx | bank_details                | 430                                |
      | valid    | business_partner.xlsx | bank_details                | 431                                |
      | valid    | business_partner.xlsx | bank_details                | 432                                |
      | valid    | business_partner.xlsx | bank_details                | 433                                |
      | valid    | business_partner.xlsx | bank_details                | 434                                |
      | valid    | business_partner.xlsx | bank_details                | 435                                |
      | valid    | business_partner.xlsx | bank_details                | 436                                |
      | valid    | business_partner.xlsx | bank_details                | 437                                |
      | valid    | business_partner.xlsx | bank_details                | 438                                |
      | valid    | business_partner.xlsx | bank_details                | 439                                |
      | valid    | business_partner.xlsx | bank_details                | 440                                |
      | valid    | business_partner.xlsx | bank_details                | 441                                |
      | valid    | business_partner.xlsx | bank_details                | 442                                |
      | valid    | business_partner.xlsx | bank_details                | 443                                |
      | valid    | business_partner.xlsx | bank_details                | 444                                |
      | valid    | business_partner.xlsx | bank_details                | 445                                |
      | valid    | business_partner.xlsx | bank_details                | 446                                |
      | valid    | business_partner.xlsx | bank_details                | 447                                |
      | valid    | business_partner.xlsx | bank_details                | 448                                |
      | valid    | business_partner.xlsx | bank_details                | 449                                |
      | valid    | business_partner.xlsx | bank_details                | 450                                |
      | valid    | business_partner.xlsx | bank_details                | 451                                |
      | valid    | business_partner.xlsx | bank_details                | 452                                |
      | valid    | business_partner.xlsx | bank_details                | 453                                |
      | valid    | business_partner.xlsx | bank_details                | 454                                |
      | valid    | business_partner.xlsx | bank_details                | 455                                |
      | valid    | business_partner.xlsx | bank_details                | 456                                |
      | valid    | business_partner.xlsx | bank_details                | 457                                |
      | valid    | business_partner.xlsx | bank_details                | 458                                |
      | valid    | business_partner.xlsx | bank_details                | 459                                |
      | valid    | business_partner.xlsx | bank_details                | 460                                |
      | valid    | business_partner.xlsx | bank_details                | 461                                |
      | valid    | business_partner.xlsx | bank_details                | 462                                |
      | valid    | business_partner.xlsx | bank_details                | 463                                |
      | valid    | business_partner.xlsx | bank_details                | 464                                |
      | valid    | business_partner.xlsx | bank_details                | 465                                |
      | valid    | business_partner.xlsx | bank_details                | 466                                |
      | valid    | business_partner.xlsx | bank_details                | 467                                |
      | valid    | business_partner.xlsx | bank_details                | 468                                |
      | valid    | business_partner.xlsx | bank_details                | 469                                |
      | valid    | business_partner.xlsx | bank_details                | 470                                |
      | valid    | business_partner.xlsx | bank_details                | 471                                |
      | valid    | business_partner.xlsx | bank_details                | 472                                |
      | valid    | business_partner.xlsx | bank_details                | 473                                |
      | valid    | business_partner.xlsx | bank_details                | 474                                |
      | valid    | business_partner.xlsx | bank_details                | 475                                |
      | valid    | business_partner.xlsx | bank_details                | 476                                |
      | valid    | business_partner.xlsx | bank_details                | 477                                |
      | valid    | business_partner.xlsx | bank_details                | 478                                |
      | valid    | business_partner.xlsx | bank_details                | 479                                |
      | valid    | business_partner.xlsx | bank_details                | 480                                |
      | valid    | business_partner.xlsx | bank_details                | 481                                |
      | valid    | business_partner.xlsx | bank_details                | 482                                |
      | valid    | business_partner.xlsx | bank_details                | 483                                |
      | valid    | business_partner.xlsx | bank_details                | 484                                |
      | valid    | business_partner.xlsx | bank_details                | 485                                |
      | valid    | business_partner.xlsx | bank_details                | 486                                |
      | valid    | business_partner.xlsx | bank_details                | 487                                |
      | valid    | business_partner.xlsx | bank_details                | 488                                |
      | valid    | business_partner.xlsx | bank_details                | 489                                |
      | valid    | business_partner.xlsx | bank_details                | 490                                |
      | valid    | business_partner.xlsx | bank_details                | 491                                |
      | valid    | business_partner.xlsx | bank_details                | 492                                |
      | valid    | business_partner.xlsx | bank_details                | 493                                |
      | valid    | business_partner.xlsx | bank_details                | 494                                |
      | valid    | business_partner.xlsx | bank_details                | 495                                |
      | valid    | business_partner.xlsx | bank_details                | 496                                |
      | valid    | business_partner.xlsx | bank_details                | 497                                |
      | valid    | business_partner.xlsx | bank_details                | 498                                |
      | valid    | business_partner.xlsx | bank_details                | 499                                |
      | valid    | business_partner.xlsx | bank_details                | 500                                |
      | valid    | business_partner.xlsx | bank_details                | 501                                |
      | valid    | business_partner.xlsx | bank_details                | 502                                |
      | valid    | business_partner.xlsx | bank_details                | 503                                |
      | valid    | business_partner.xlsx | bank_details                | 504                                |
      | valid    | business_partner.xlsx | bank_details                | 505                                |
      | valid    | business_partner.xlsx | bank_details                | 506                                |
      | valid    | business_partner.xlsx | bank_details                | 507                                |
      | valid    | business_partner.xlsx | bank_details                | 508                                |
      | valid    | business_partner.xlsx | bank_details                | 509                                |
      | valid    | business_partner.xlsx | bank_details                | 510                                |
      | valid    | business_partner.xlsx | bank_details                | 511                                |
      | valid    | business_partner.xlsx | bank_details                | 512                                |
      | valid    | business_partner.xlsx | bank_details                | 513                                |
      | valid    | business_partner.xlsx | bank_details                | 514                                |
      | valid    | business_partner.xlsx | bank_details                | 515                                |
      | valid    | business_partner.xlsx | bank_details                | 516                                |
      | valid    | business_partner.xlsx | bank_details                | 517                                |
      | valid    | business_partner.xlsx | bank_details                | 518                                |
      | valid    | business_partner.xlsx | bank_details                | 519                                |
      | valid    | business_partner.xlsx | bank_details                | 520                                |
      | valid    | business_partner.xlsx | bank_details                | 521                                |
      | valid    | business_partner.xlsx | bank_details                | 522                                |
      | valid    | business_partner.xlsx | bank_details                | 523                                |
      | valid    | business_partner.xlsx | bank_details                | 524                                |
      | valid    | business_partner.xlsx | bank_details                | 525                                |
      | valid    | business_partner.xlsx | bank_details                | 526                                |
      | valid    | business_partner.xlsx | bank_details                | 527                                |
      | valid    | business_partner.xlsx | bank_details                | 528                                |
      | valid    | business_partner.xlsx | bank_details                | 529                                |
      | valid    | business_partner.xlsx | bank_details                | 530                                |
      | valid    | business_partner.xlsx | bank_details                | 531                                |
      | valid    | business_partner.xlsx | bank_details                | 532                                |
      | valid    | business_partner.xlsx | bank_details                | 533                                |
      | valid    | business_partner.xlsx | bank_details                | 534                                |
      | valid    | business_partner.xlsx | bank_details                | 535                                |
      | valid    | business_partner.xlsx | bank_details                | 536                                |
      | valid    | business_partner.xlsx | bank_details                | 537                                |
      | valid    | business_partner.xlsx | bank_details                | 538                                |
      | valid    | business_partner.xlsx | bank_details                | 539                                |
      | valid    | business_partner.xlsx | bank_details                | 540                                |
      | valid    | business_partner.xlsx | bank_details                | 541                                |
      | valid    | business_partner.xlsx | bank_details                | 542                                |
      | valid    | business_partner.xlsx | bank_details                | 543                                |
      | valid    | business_partner.xlsx | bank_details                | 544                                |
      | valid    | business_partner.xlsx | bank_details                | 545                                |
      | valid    | business_partner.xlsx | bank_details                | 546                                |
      | valid    | business_partner.xlsx | bank_details                | 547                                |
      | valid    | business_partner.xlsx | bank_details                | 548                                |
      | valid    | business_partner.xlsx | bank_details                | 549                                |
      | valid    | business_partner.xlsx | bank_details                | 550                                |
      | valid    | business_partner.xlsx | bank_details                | 551                                |
      | valid    | business_partner.xlsx | bank_details                | 552                                |
      | valid    | business_partner.xlsx | bank_details                | 553                                |
      | valid    | business_partner.xlsx | bank_details                | 554                                |
      | valid    | business_partner.xlsx | bank_details                | 555                                |
      | valid    | business_partner.xlsx | bank_details                | 556                                |
      | valid    | business_partner.xlsx | bank_details                | 557                                |
      | valid    | business_partner.xlsx | bank_details                | 558                                |
      | valid    | business_partner.xlsx | bank_details                | 559                                |
      | valid    | business_partner.xlsx | bank_details                | 560                                |
      | valid    | business_partner.xlsx | bank_details                | 561                                |
      | valid    | business_partner.xlsx | bank_details                | 562                                |
      | valid    | business_partner.xlsx | bank_details                | 563                                |
      | valid    | business_partner.xlsx | bank_details                | 564                                |
      | valid    | business_partner.xlsx | bank_details                | 565                                |
      | valid    | business_partner.xlsx | bank_details                | 566                                |
      | valid    | business_partner.xlsx | bank_details                | 567                                |
      | valid    | business_partner.xlsx | bank_details                | 568                                |
      | valid    | business_partner.xlsx | bank_details                | 569                                |
      | valid    | business_partner.xlsx | bank_details                | 570                                |
      | valid    | business_partner.xlsx | bank_details                | 571                                |
      | valid    | business_partner.xlsx | bank_details                | 572                                |
      | valid    | business_partner.xlsx | bank_details                | 573                                |
      | valid    | business_partner.xlsx | bank_details                | 574                                |
      | valid    | business_partner.xlsx | bank_details                | 575                                |
      | valid    | business_partner.xlsx | bank_details                | 576                                |
      | valid    | business_partner.xlsx | bank_details                | 577                                |
      | valid    | business_partner.xlsx | bank_details                | 578                                |
      | valid    | business_partner.xlsx | bank_details                | 579                                |
      | valid    | business_partner.xlsx | bank_details                | 580                                |
      | valid    | business_partner.xlsx | bank_details                | 581                                |
      | valid    | business_partner.xlsx | bank_details                | 582                                |
      | valid    | business_partner.xlsx | bank_details                | 583                                |
      | valid    | business_partner.xlsx | bank_details                | 584                                |
      | valid    | business_partner.xlsx | bank_details                | 585                                |
      | valid    | business_partner.xlsx | bank_details                | 586                                |
      | valid    | business_partner.xlsx | bank_details                | 587                                |
      | valid    | business_partner.xlsx | bank_details                | 588                                |
      | valid    | business_partner.xlsx | bank_details                | 589                                |
      | valid    | business_partner.xlsx | bank_details                | 590                                |
      | valid    | business_partner.xlsx | bank_details                | 591                                |
      | valid    | business_partner.xlsx | bank_details                | 592                                |
      | valid    | business_partner.xlsx | bank_details                | 593                                |
      | valid    | business_partner.xlsx | bank_details                | 594                                |
      | valid    | business_partner.xlsx | bank_details                | 595                                |
      | valid    | business_partner.xlsx | bank_details                | 596                                |
      | valid    | business_partner.xlsx | bank_details                | 597                                |
      | valid    | business_partner.xlsx | bank_details                | 598                                |
      | valid    | business_partner.xlsx | bank_details                | 599                                |
      | valid    | business_partner.xlsx | bank_details                | 600                                |
      | valid    | business_partner.xlsx | bank_details                | 601                                |
      | valid    | business_partner.xlsx | bank_details                | 602                                |
      | valid    | business_partner.xlsx | bank_details                | 603                                |
      | valid    | business_partner.xlsx | bank_details                | 604                                |
      | valid    | business_partner.xlsx | bank_details                | 605                                |
      | valid    | business_partner.xlsx | bank_details                | 606                                |
      | valid    | business_partner.xlsx | bank_details                | 607                                |
      | valid    | business_partner.xlsx | bank_details                | 608                                |
      | valid    | business_partner.xlsx | bank_details                | 609                                |
      | valid    | business_partner.xlsx | bank_details                | 610                                |
      | valid    | business_partner.xlsx | bank_details                | 611                                |
      | valid    | business_partner.xlsx | bank_details                | 612                                |
      | valid    | business_partner.xlsx | bank_details                | 613                                |
      | valid    | business_partner.xlsx | bank_details                | 614                                |
      | valid    | business_partner.xlsx | bank_details                | 615                                |
      | valid    | business_partner.xlsx | bank_details                | 616                                |
      | valid    | business_partner.xlsx | bank_details                | 617                                |
      | valid    | business_partner.xlsx | bank_details                | 618                                |
      | valid    | business_partner.xlsx | bank_details                | 619                                |
      | valid    | business_partner.xlsx | bank_details                | 620                                |
      | valid    | business_partner.xlsx | bank_details                | 621                                |
      | valid    | business_partner.xlsx | bank_details                | 622                                |
      | valid    | business_partner.xlsx | bank_details                | 623                                |
      | valid    | business_partner.xlsx | bank_details                | 624                                |
      | valid    | business_partner.xlsx | bank_details                | 625                                |
      | valid    | business_partner.xlsx | bank_details                | 626                                |
      | valid    | business_partner.xlsx | bank_details                | 627                                |
      | valid    | business_partner.xlsx | bank_details                | 628                                |
      | valid    | business_partner.xlsx | bank_details                | 629                                |
      | valid    | business_partner.xlsx | bank_details                | 630                                |
      | valid    | business_partner.xlsx | bank_details                | 631                                |
      | valid    | business_partner.xlsx | bank_details                | 632                                |
      | valid    | business_partner.xlsx | bank_details                | 633                                |
      | valid    | business_partner.xlsx | bank_details                | 634                                |
      | valid    | business_partner.xlsx | bank_details                | 635                                |
      | valid    | business_partner.xlsx | bank_details                | 636                                |
      | valid    | business_partner.xlsx | bank_details                | 637                                |
      | valid    | business_partner.xlsx | bank_details                | 638                                |
      | valid    | business_partner.xlsx | bank_details                | 639                                |
      | valid    | business_partner.xlsx | bank_details                | 640                                |
      | valid    | business_partner.xlsx | bank_details                | 641                                |
      | valid    | business_partner.xlsx | bank_details                | 642                                |
      | valid    | business_partner.xlsx | bank_details                | 643                                |
      | valid    | business_partner.xlsx | bank_details                | 644                                |
      | valid    | business_partner.xlsx | bank_details                | 645                                |
      | valid    | business_partner.xlsx | bank_details                | 646                                |
      | valid    | business_partner.xlsx | bank_details                | 647                                |
      | valid    | business_partner.xlsx | bank_details                | 648                                |
      | valid    | business_partner.xlsx | bank_details                | 649                                |
      | valid    | business_partner.xlsx | bank_details                | 650                                |
      | valid    | business_partner.xlsx | bank_details                | 651                                |
      | valid    | business_partner.xlsx | bank_details                | 652                                |
      | valid    | business_partner.xlsx | bank_details                | 653                                |
      | valid    | business_partner.xlsx | bank_details                | 654                                |
      | valid    | business_partner.xlsx | bank_details                | 655                                |
      | valid    | business_partner.xlsx | bank_details                | 656                                |
      | valid    | business_partner.xlsx | bank_details                | 657                                |
      | valid    | business_partner.xlsx | bank_details                | 658                                |
      | valid    | business_partner.xlsx | bank_details                | 659                                |
      | valid    | business_partner.xlsx | bank_details                | 660                                |
      | valid    | business_partner.xlsx | bank_details                | 661                                |
      | valid    | business_partner.xlsx | bank_details                | 662                                |
      | valid    | business_partner.xlsx | bank_details                | 663                                |
      | valid    | business_partner.xlsx | bank_details                | 664                                |
      | valid    | business_partner.xlsx | bank_details                | 665                                |
      | valid    | business_partner.xlsx | bank_details                | 666                                |
      | valid    | business_partner.xlsx | bank_details                | 667                                |
      | valid    | business_partner.xlsx | bank_details                | 668                                |
      | valid    | business_partner.xlsx | bank_details                | 669                                |
      | valid    | business_partner.xlsx | bank_details                | 670                                |
      | valid    | business_partner.xlsx | bank_details                | 671                                |
      | valid    | business_partner.xlsx | bank_details                | 672                                |
      | valid    | business_partner.xlsx | bank_details                | 673                                |
      | valid    | business_partner.xlsx | bank_details                | 674                                |
      | valid    | business_partner.xlsx | bank_details                | 675                                |
      | valid    | business_partner.xlsx | bank_details                | 676                                |
      | valid    | business_partner.xlsx | bank_details                | 677                                |
      | valid    | business_partner.xlsx | bank_details                | 678                                |
      | valid    | business_partner.xlsx | bank_details                | 679                                |
      | valid    | business_partner.xlsx | bank_details                | 680                                |
      | valid    | business_partner.xlsx | bank_details                | 681                                |
      | valid    | business_partner.xlsx | bank_details                | 682                                |
      | valid    | business_partner.xlsx | bank_details                | 683                                |
      | valid    | business_partner.xlsx | bank_details                | 684                                |
      | valid    | business_partner.xlsx | bank_details                | 685                                |
      | valid    | business_partner.xlsx | bank_details                | 686                                |
      | valid    | business_partner.xlsx | bank_details                | 687                                |
      | valid    | business_partner.xlsx | bank_details                | 688                                |
      | valid    | business_partner.xlsx | bank_details                | 689                                |
      | valid    | business_partner.xlsx | bank_details                | 690                                |
      | valid    | business_partner.xlsx | bank_details                | 691                                |
      | valid    | business_partner.xlsx | bank_details                | 692                                |
      | valid    | business_partner.xlsx | bank_details                | 693                                |
      | valid    | business_partner.xlsx | bank_details                | 694                                |
      | valid    | business_partner.xlsx | bank_details                | 695                                |
      | valid    | business_partner.xlsx | bank_details                | 696                                |
      | valid    | business_partner.xlsx | bank_details                | 697                                |
      | valid    | business_partner.xlsx | bank_details                | 698                                |
      | valid    | business_partner.xlsx | bank_details                | 699                                |
      | valid    | business_partner.xlsx | bank_details                | 700                                |
      | valid    | business_partner.xlsx | bank_details                | 701                                |
      | valid    | business_partner.xlsx | bank_details                | 702                                |
      | valid    | business_partner.xlsx | bank_details                | 703                                |
      | valid    | business_partner.xlsx | bank_details                | 704                                |
      | valid    | business_partner.xlsx | bank_details                | 705                                |
      | valid    | business_partner.xlsx | bank_details                | 706                                |
      | valid    | business_partner.xlsx | bank_details                | 707                                |
      | valid    | business_partner.xlsx | bank_details                | 708                                |
      | valid    | business_partner.xlsx | bank_details                | 709                                |
      | valid    | business_partner.xlsx | bank_details                | 710                                |
      | valid    | business_partner.xlsx | bank_details                | 711                                |
      | valid    | business_partner.xlsx | bank_details                | 712                                |
      | valid    | business_partner.xlsx | bank_details                | 713                                |
      | valid    | business_partner.xlsx | bank_details                | 714                                |
      | valid    | business_partner.xlsx | bank_details                | 715                                |
      | valid    | business_partner.xlsx | bank_details                | 716                                |
      | valid    | business_partner.xlsx | bank_details                | 717                                |
      | valid    | business_partner.xlsx | bank_details                | 718                                |
      | valid    | business_partner.xlsx | bank_details                | 719                                |
      | valid    | business_partner.xlsx | bank_details                | 720                                |
      | valid    | business_partner.xlsx | bank_details                | 721                                |
      | valid    | business_partner.xlsx | bank_details                | 722                                |
      | valid    | business_partner.xlsx | bank_details                | 723                                |
      | valid    | business_partner.xlsx | bank_details                | 724                                |
      | valid    | business_partner.xlsx | bank_details                | 725                                |
      | valid    | business_partner.xlsx | bank_details                | 726                                |
      | valid    | business_partner.xlsx | bank_details                | 727                                |
      | valid    | business_partner.xlsx | bank_details                | 728                                |
      | valid    | business_partner.xlsx | bank_details                | 729                                |
      | valid    | business_partner.xlsx | bank_details                | 730                                |
      | valid    | business_partner.xlsx | bank_details                | 731                                |
      | valid    | business_partner.xlsx | bank_details                | 732                                |
      | valid    | business_partner.xlsx | bank_details                | 733                                |
      | valid    | business_partner.xlsx | bank_details                | 734                                |
      | valid    | business_partner.xlsx | bank_details                | 735                                |
      | valid    | business_partner.xlsx | bank_details                | 736                                |
      | valid    | business_partner.xlsx | bank_details                | 737                                |
      | valid    | business_partner.xlsx | bank_details                | 738                                |
      | valid    | business_partner.xlsx | bank_details                | 739                                |
      | valid    | business_partner.xlsx | bank_details                | 740                                |
      | valid    | business_partner.xlsx | bank_details                | 741                                |
      | valid    | business_partner.xlsx | bank_details                | 742                                |
      | valid    | business_partner.xlsx | bank_details                | 743                                |
      | valid    | business_partner.xlsx | bank_details                | 744                                |
      | valid    | business_partner.xlsx | bank_details                | 745                                |
      | valid    | business_partner.xlsx | bank_details                | 746                                |
      | valid    | business_partner.xlsx | bank_details                | 747                                |
      | valid    | business_partner.xlsx | bank_details                | 748                                |
      | valid    | business_partner.xlsx | bank_details                | 749                                |
      | valid    | business_partner.xlsx | bank_details                | 750                                |
      | valid    | business_partner.xlsx | bank_details                | 751                                |
      | valid    | business_partner.xlsx | bank_details                | 752                                |
      | valid    | business_partner.xlsx | bank_details                | 753                                |
      | valid    | business_partner.xlsx | bank_details                | 754                                |
      | valid    | business_partner.xlsx | bank_details                | 755                                |
      | valid    | business_partner.xlsx | bank_details                | 756                                |
      | valid    | business_partner.xlsx | bank_details                | 757                                |
      | valid    | business_partner.xlsx | bank_details                | 758                                |
      | valid    | business_partner.xlsx | bank_details                | 759                                |
      | valid    | business_partner.xlsx | bank_details                | 760                                |
      | valid    | business_partner.xlsx | bank_details                | 761                                |
      | valid    | business_partner.xlsx | bank_details                | 762                                |
      | valid    | business_partner.xlsx | bank_details                | 763                                |
      | valid    | business_partner.xlsx | bank_details                | 764                                |
      | valid    | business_partner.xlsx | bank_details                | 765                                |
      | valid    | business_partner.xlsx | bank_details                | 766                                |
      | valid    | business_partner.xlsx | bank_details                | 767                                |
      | valid    | business_partner.xlsx | bank_details                | 768                                |
      | valid    | business_partner.xlsx | bank_details                | 769                                |
      | valid    | business_partner.xlsx | bank_details                | 770                                |
      | valid    | business_partner.xlsx | bank_details                | 771                                |
      | valid    | business_partner.xlsx | bank_details                | 772                                |
      | valid    | business_partner.xlsx | bank_details                | 773                                |
      | valid    | business_partner.xlsx | bank_details                | 774                                |
      | valid    | business_partner.xlsx | bank_details                | 775                                |
      | valid    | business_partner.xlsx | bank_details                | 776                                |
      | valid    | business_partner.xlsx | bank_details                | 777                                |
      | valid    | business_partner.xlsx | bank_details                | 778                                |
      | valid    | business_partner.xlsx | bank_details                | 779                                |
      | valid    | business_partner.xlsx | bank_details                | 780                                |
      | valid    | business_partner.xlsx | bank_details                | 781                                |
      | valid    | business_partner.xlsx | bank_details                | 782                                |
      | valid    | business_partner.xlsx | bank_details                | 783                                |
      | valid    | business_partner.xlsx | bank_details                | 784                                |
      | valid    | business_partner.xlsx | bank_details                | 785                                |
      | valid    | business_partner.xlsx | bank_details                | 786                                |
      | valid    | business_partner.xlsx | bank_details                | 787                                |
      | valid    | business_partner.xlsx | bank_details                | 788                                |
      | valid    | business_partner.xlsx | bank_details                | 789                                |
      | valid    | business_partner.xlsx | bank_details                | 790                                |
      | valid    | business_partner.xlsx | bank_details                | 791                                |
      | valid    | business_partner.xlsx | bank_details                | 792                                |
      | valid    | business_partner.xlsx | bank_details                | 793                                |
      | valid    | business_partner.xlsx | bank_details                | 794                                |
      | valid    | business_partner.xlsx | bank_details                | 795                                |
      | valid    | business_partner.xlsx | bank_details                | 796                                |
      | valid    | business_partner.xlsx | bank_details                | 797                                |
      | valid    | business_partner.xlsx | bank_details                | 798                                |
      | valid    | business_partner.xlsx | bank_details                | 799                                |
      | valid    | business_partner.xlsx | bank_details                | 800                                |
      | valid    | business_partner.xlsx | bank_details                | 801                                |
      | valid    | business_partner.xlsx | bank_details                | 802                                |
      | valid    | business_partner.xlsx | bank_details                | 803                                |
      | valid    | business_partner.xlsx | bank_details                | 804                                |
      | valid    | business_partner.xlsx | bank_details                | 805                                |
      | valid    | business_partner.xlsx | bank_details                | 806                                |
      | valid    | business_partner.xlsx | bank_details                | 807                                |
      | valid    | business_partner.xlsx | bank_details                | 808                                |
      | valid    | business_partner.xlsx | bank_details                | 809                                |
      | valid    | business_partner.xlsx | bank_details                | 810                                |
      | valid    | business_partner.xlsx | bank_details                | 811                                |
      | valid    | business_partner.xlsx | bank_details                | 812                                |
      | valid    | business_partner.xlsx | bank_details                | 813                                |
      | valid    | business_partner.xlsx | bank_details                | 814                                |
      | valid    | business_partner.xlsx | bank_details                | 815                                |
      | valid    | business_partner.xlsx | bank_details                | 816                                |
      | valid    | business_partner.xlsx | bank_details                | 817                                |
      | valid    | business_partner.xlsx | bank_details                | 818                                |
      | valid    | business_partner.xlsx | bank_details                | 819                                |
      | valid    | business_partner.xlsx | bank_details                | 820                                |
      | valid    | business_partner.xlsx | bank_details                | 821                                |
      | valid    | business_partner.xlsx | bank_details                | 822                                |
      | valid    | business_partner.xlsx | bank_details                | 823                                |
      | valid    | business_partner.xlsx | bank_details                | 824                                |
      | valid    | business_partner.xlsx | bank_details                | 825                                |
      | valid    | business_partner.xlsx | bank_details                | 826                                |
      | valid    | business_partner.xlsx | bank_details                | 827                                |
      | valid    | business_partner.xlsx | bank_details                | 828                                |
      | valid    | business_partner.xlsx | bank_details                | 829                                |
      | valid    | business_partner.xlsx | bank_details                | 830                                |
      | valid    | business_partner.xlsx | bank_details                | 831                                |
      | valid    | business_partner.xlsx | bank_details                | 832                                |
      | valid    | business_partner.xlsx | bank_details                | 833                                |
      | valid    | business_partner.xlsx | bank_details                | 834                                |
      | valid    | business_partner.xlsx | bank_details                | 835                                |
      | valid    | business_partner.xlsx | bank_details                | 836                                |
      | valid    | business_partner.xlsx | bank_details                | 837                                |
      | valid    | business_partner.xlsx | bank_details                | 838                                |
      | valid    | business_partner.xlsx | bank_details                | 839                                |
      | valid    | business_partner.xlsx | bank_details                | 840                                |
      | valid    | business_partner.xlsx | bank_details                | 841                                |
      | valid    | business_partner.xlsx | bank_details                | 842                                |
      | valid    | business_partner.xlsx | bank_details                | 843                                |
      | valid    | business_partner.xlsx | bank_details                | 844                                |
      | valid    | business_partner.xlsx | bank_details                | 845                                |
      | valid    | business_partner.xlsx | bank_details                | 846                                |
      | valid    | business_partner.xlsx | bank_details                | 847                                |
      | valid    | business_partner.xlsx | bank_details                | 848                                |
      | valid    | business_partner.xlsx | bank_details                | 849                                |
      | valid    | business_partner.xlsx | bank_details                | 850                                |
      | valid    | business_partner.xlsx | bank_details                | 851                                |
      | valid    | business_partner.xlsx | bank_details                | 852                                |
      | valid    | business_partner.xlsx | bank_details                | 853                                |
      | valid    | business_partner.xlsx | bank_details                | 854                                |
      | valid    | business_partner.xlsx | bank_details                | 855                                |
      | valid    | business_partner.xlsx | bank_details                | 856                                |
      | valid    | business_partner.xlsx | bank_details                | 857                                |
      | valid    | business_partner.xlsx | bank_details                | 858                                |
      | valid    | business_partner.xlsx | bank_details                | 859                                |
      | valid    | business_partner.xlsx | bank_details                | 860                                |
      | valid    | business_partner.xlsx | bank_details                | 861                                |
      | valid    | business_partner.xlsx | bank_details                | 862                                |
      | valid    | business_partner.xlsx | bank_details                | 863                                |
      | valid    | business_partner.xlsx | bank_details                | 864                                |
      | valid    | business_partner.xlsx | bank_details                | 865                                |
      | valid    | business_partner.xlsx | bank_details                | 866                                |
      | valid    | business_partner.xlsx | bank_details                | 867                                |
      | valid    | business_partner.xlsx | bank_details                | 868                                |
      | valid    | business_partner.xlsx | bank_details                | 869                                |
      | valid    | business_partner.xlsx | bank_details                | 870                                |
      | valid    | business_partner.xlsx | bank_details                | 871                                |
      | valid    | business_partner.xlsx | bank_details                | 872                                |
      | valid    | business_partner.xlsx | bank_details                | 873                                |
      | valid    | business_partner.xlsx | bank_details                | 874                                |
      | valid    | business_partner.xlsx | bank_details                | 875                                |
      | valid    | business_partner.xlsx | bank_details                | 876                                |
      | valid    | business_partner.xlsx | bank_details                | 877                                |
      | valid    | business_partner.xlsx | bank_details                | 878                                |
      | valid    | business_partner.xlsx | bank_details                | 879                                |
      | valid    | business_partner.xlsx | bank_details                | 880                                |
      | valid    | business_partner.xlsx | bank_details                | 881                                |
      | valid    | business_partner.xlsx | bank_details                | 882                                |
      | valid    | business_partner.xlsx | bank_details                | 883                                |
      | valid    | business_partner.xlsx | bank_details                | 884                                |
      | valid    | business_partner.xlsx | bank_details                | 885                                |
      | valid    | business_partner.xlsx | bank_details                | 886                                |
      | valid    | business_partner.xlsx | bank_details                | 887                                |
      | valid    | business_partner.xlsx | bank_details                | 888                                |
      | valid    | business_partner.xlsx | bank_details                | 889                                |
      | valid    | business_partner.xlsx | bank_details                | 890                                |
      | valid    | business_partner.xlsx | bank_details                | 891                                |
      | valid    | business_partner.xlsx | bank_details                | 892                                |
      | valid    | business_partner.xlsx | bank_details                | 893                                |
      | valid    | business_partner.xlsx | bank_details                | 894                                |
      | valid    | business_partner.xlsx | bank_details                | 895                                |
      | valid    | business_partner.xlsx | bank_details                | 896                                |
      | valid    | business_partner.xlsx | bank_details                | 897                                |
      | valid    | business_partner.xlsx | bank_details                | 898                                |
      | valid    | business_partner.xlsx | bank_details                | 899                                |
      | valid    | business_partner.xlsx | bank_details                | 900                                |
      | valid    | business_partner.xlsx | bank_details                | 901                                |
      | valid    | business_partner.xlsx | bank_details                | 902                                |
      | valid    | business_partner.xlsx | bank_details                | 903                                |
      | valid    | business_partner.xlsx | bank_details                | 904                                |
      | valid    | business_partner.xlsx | bank_details                | 905                                |
      | valid    | business_partner.xlsx | bank_details                | 906                                |
      | valid    | business_partner.xlsx | bank_details                | 907                                |
      | valid    | business_partner.xlsx | bank_details                | 908                                |
      | valid    | business_partner.xlsx | bank_details                | 909                                |
      | valid    | business_partner.xlsx | bank_details                | 910                                |
      | valid    | business_partner.xlsx | bank_details                | 911                                |
      | valid    | business_partner.xlsx | bank_details                | 912                                |
      | valid    | business_partner.xlsx | bank_details                | 913                                |
      | valid    | business_partner.xlsx | bank_details                | 914                                |
      | valid    | business_partner.xlsx | bank_details                | 915                                |
      | valid    | business_partner.xlsx | bank_details                | 916                                |
      | valid    | business_partner.xlsx | bank_details                | 917                                |
      | valid    | business_partner.xlsx | bank_details                | 918                                |
      | valid    | business_partner.xlsx | bank_details                | 919                                |
      | valid    | business_partner.xlsx | bank_details                | 920                                |
      | valid    | business_partner.xlsx | bank_details                | 921                                |
      | valid    | business_partner.xlsx | bank_details                | 922                                |
      | valid    | business_partner.xlsx | bank_details                | 923                                |
      | valid    | business_partner.xlsx | bank_details                | 924                                |
      | valid    | business_partner.xlsx | bank_details                | 925                                |
      | valid    | business_partner.xlsx | bank_details                | 926                                |
      | valid    | business_partner.xlsx | bank_details                | 927                                |
      | valid    | business_partner.xlsx | bank_details                | 928                                |
      | valid    | business_partner.xlsx | bank_details                | 929                                |
      | valid    | business_partner.xlsx | bank_details                | 930                                |
      | valid    | business_partner.xlsx | bank_details                | 931                                |
      | valid    | business_partner.xlsx | bank_details                | 932                                |
      | valid    | business_partner.xlsx | bank_details                | 933                                |
      | valid    | business_partner.xlsx | bank_details                | 934                                |
      | valid    | business_partner.xlsx | bank_details                | 935                                |
      | valid    | business_partner.xlsx | bank_details                | 936                                |
      | valid    | business_partner.xlsx | bank_details                | 937                                |
      | valid    | business_partner.xlsx | bank_details                | 938                                |
      | valid    | business_partner.xlsx | bank_details                | 939                                |
      | valid    | business_partner.xlsx | bank_details                | 940                                |
      | valid    | business_partner.xlsx | bank_details                | 941                                |
      | valid    | business_partner.xlsx | bank_details                | 942                                |
      | valid    | business_partner.xlsx | bank_details                | 943                                |
      | valid    | business_partner.xlsx | bank_details                | 944                                |
      | valid    | business_partner.xlsx | bank_details                | 945                                |
      | valid    | business_partner.xlsx | bank_details                | 946                                |
      | valid    | business_partner.xlsx | bank_details                | 947                                |
      | valid    | business_partner.xlsx | bank_details                | 948                                |
      | valid    | business_partner.xlsx | bank_details                | 949                                |
      | valid    | business_partner.xlsx | bank_details                | 950                                |
      | valid    | business_partner.xlsx | bank_details                | 951                                |

