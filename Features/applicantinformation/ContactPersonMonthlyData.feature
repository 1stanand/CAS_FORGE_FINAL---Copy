@Epic-Applicant_Information
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-
@TechReviewedBy-
#@Release2


Feature: Applicant Contact Person Key Employee Details
  # commented by anshu on 11-Jun-24 as per Dev team findings- save and next can be operated only when field validations are success
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
  #{ProductType:[ "PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
  #{ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal","Tranche Initiation","Tranche Approval","App Update Recommendation","App Update Approval"]}
  #{ApplicantType:["Pricmary Applicant","Co-Applicant","Guarantor"]}

  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval","Reconsideration"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 01_CAS-134065,06_CAS-134065
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12457: User should be able to verify Contact Person Info with Key employee details tab under applicant details tab for <ProductType> application at <ApplicationStage> for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    When user navigates to Contact Person Key Employee Details screen
    Then user should see Contact Person Info Key employee details Screen with "<Options>" to capture Contact Info Key employee details
    Examples:
      | ProductType   | ApplicationStage   | Options        | Key   |
      | <ProductType> | <ApplicationStage> | Add New Button | <Key> |
      | <ProductType> | <ApplicationStage> | Grid           | <Key> |

  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Post Approval","Tranche Initiation","Tranche Approval","App Update Recommendation","App Update Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12458: User should see Contact Person Info with Key employee details tab in disabled mode under applicant details tab for <ProductType> application at <ApplicationStage> for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    When user navigates to Contact Person Key Employee Details screen
    Then user should see Contact Person Info Key employee details in disabled mode
    Examples:
      | ProductType   | ApplicationStage   | Key   |
      | <ProductType> | <ApplicationStage> | <Key> |

  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval","Reconsideration"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # CAS-134065
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12459:  Application Search on Enquiry Screen
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user navigates to Enquiry screen menu option
    When user searches for an application on enquiry screen
    Then user should be able to view a grid on enquiry screen with stage hyperlink
    Examples:
      | ProductType   | ApplicationStage   | Key   |
      | <ProductType> | <ApplicationStage> | <Key> |

  @ImplementedBy-richa.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # CAS-134065
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12460:  User should be able to view <details> details in disabled mode on Enquiry Screen at <ApplicationStage> under applicant details tab for <ProductType> for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    And user clicks on stage hyperlink on enquiry screen
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    When user clicks on "<details>" tab in customer details
    Then user should be able to view captured "<details>" details in disabled mode
    Examples:
      | ProductType   | ApplicationStage   | details         | Key   |
      | <ProductType> | <ApplicationStage> | Creditor Debtor | <Key> |
      | <ProductType> | <ApplicationStage> | Contact Person  | <Key> |
      | <ProductType> | <ApplicationStage> | Monthly Data    | <Key> |
      | <ProductType> | Recommendation     | Creditor Debtor | <Key> |
      | <ProductType> | Recommendation     | Contact Person  | <Key> |
    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | details      | Key   |
      | <ProductType> | Recommendation   | Monthly Data | <Key> |


#commented by anshu on 04-Jun-24 as discussed with Sajja
#
#  # ${ApplicationStage:["Disbursal"]}
# # ${ApplicantType:["Primary Applicant","Co-Applicant","Guarantor"]}
# # Additional
# # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
#  Scenario Outline:Contact Person Info with Key employee details screen should not be visible for <ProductType> application at <ApplicationStage> for applicant type as "<Key>"
#    And Loan application is at "<ApplicationStage>" stage for application of "<ProductType>" with applicant type as "<Key>"
#    When user navigates to applicant details
#    And user verifies Contact Person Info Key employee details tab
#    Then user should not see Contact Person Info Key employee details at "<ApplicationStage>" stage
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   |
#      | <ProductType> | <ApplicationStage> | <Key> |


  @Sanity
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12461:  User should not be able to <Add_Edit> Contact Person Key employee details of <ContactPerson_home_rowNum> dataset on Contact Person screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add contact person
    When user clicks on "<Add_Edit>" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_home>" and row <ContactPerson_home_rowNum>
    And user fills contact person key employee details
    And user clicks on "<save_savenext>" button in Contact Person Key Employee Details screen
    Then user should be able to validate successfully
    Examples:
      | ProductType   | ApplicationStage   | ContactPersonWB     | ContactPerson_home | save_savenext | ContactPerson_home_rowNum | Add_Edit | Key   |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 1                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 2                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 3                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 4                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 5                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 6                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 7                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 8                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 11                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 12                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 13                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 14                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 15                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 16                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 17                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 18                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 21                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 22                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 23                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 24                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 25                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 26                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 27                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 28                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 31                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 32                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 33                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 34                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 35                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 36                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 37                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 38                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 39                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 40                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 41                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 42                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 60                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 68                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 69                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 70                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 71                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 72                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 73                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 74                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 75                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 76                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 77                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 78                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 82                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 83                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 84                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 85                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 86                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 87                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 88                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 89                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 90                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 91                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 92                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 95                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 96                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 97                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 98                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 99                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 100                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 101                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 102                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 103                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 104                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 105                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 106                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 107                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 108                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 111                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 112                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 113                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 114                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 115                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 116                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 117                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 118                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 119                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 120                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 121                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 122                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 126                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 127                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 128                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 129                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 130                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 131                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 132                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 133                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 134                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 135                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 136                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 140                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 141                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 142                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 143                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 144                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 145                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 146                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 147                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 151                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 156                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 157                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 158                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 159                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 160                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 161                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 162                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 163                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 164                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 165                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 166                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 1                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 2                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 3                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 4                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 5                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 6                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 7                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 8                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 11                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 12                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 13                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 14                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 15                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 16                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 17                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 18                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 21                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 22                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 23                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 24                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 25                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 26                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 27                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 28                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 31                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 32                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 33                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 34                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 35                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 36                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 37                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 38                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 39                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 40                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 41                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 42                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 60                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 68                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 69                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 70                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 71                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 72                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 73                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 74                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 75                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 76                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 77                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 78                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 82                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 83                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 84                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 85                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 86                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 87                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 88                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 89                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 90                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 91                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 92                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 95                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 96                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 97                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 98                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 99                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 100                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 101                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 102                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 103                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 104                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 105                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 106                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 107                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 108                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 111                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 112                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 113                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 114                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 115                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 116                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 117                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 118                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 119                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 120                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 121                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 122                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 126                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 127                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 128                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 129                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 130                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 131                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 132                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 133                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 134                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 135                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 136                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 140                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 141                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 142                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 143                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 144                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 145                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 146                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 147                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 151                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 156                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 157                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 158                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 159                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 160                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 161                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 162                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 163                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 164                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 165                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 166                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 0                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 10                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 20                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 30                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 44                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 59                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 61                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 62                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 63                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 64                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 66                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 80                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 94                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 110                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 124                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 125                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 138                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 139                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 153                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 0                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 10                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 20                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 30                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 44                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 59                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 61                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 62                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 63                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 64                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 66                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 80                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 94                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 110                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 124                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 125                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 138                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 139                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Done          | 153                       | Edit     | <Key> |
  @Sanity
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12462:  User should be able to <Add_Edit> Contact Person Key employee details of <ContactPerson_home_rowNum> dataset on Contact Person screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user deletes the existing contact person detail
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add contact person
    When user clicks on "<Add_Edit>" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_home>" and row <ContactPerson_home_rowNum>
    And user fills contact person key employee details
    And user clicks on "<save_savenext>" button in Contact Person Key Employee Details screen
    Then user should be able to "<Add_Edit>" contact detail successfully
    Examples:
      | ProductType   | ApplicationStage   | ContactPersonWB     | ContactPerson_home | save_savenext | ContactPerson_home_rowNum | Add_Edit | Key   |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 9                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 19                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 29                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 43                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 45                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 46                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 47                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 48                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 49                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 50                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 51                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 52                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 53                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 54                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 55                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 56                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 57                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 58                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 65                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 67                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 79                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 81                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 93                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 109                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 111                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 123                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 137                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 152                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 154                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 167                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 9                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 19                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 29                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 43                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 45                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 46                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 47                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 48                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 49                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 50                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 51                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 52                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 53                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 54                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 55                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 56                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 57                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 58                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 65                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 67                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 79                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 81                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 93                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 109                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 111                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 123                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 137                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 152                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 154                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save          | 167                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 9                         | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 19                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 29                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 43                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 58                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 65                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 67                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 79                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 81                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 93                        | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 109                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 111                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 123                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 137                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 152                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 154                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 167                       | Add      | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 9                         | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 19                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 29                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 43                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 58                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 65                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 67                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 79                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 81                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 93                        | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 109                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 111                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 123                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 137                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 152                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 154                       | Edit     | <Key> |
      | <ProductType> | <ApplicationStage> | contact_person.xlsx | home               | Save & Next   | 167                       | Edit     | <Key> |
  @Sanity
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 01_CAS-134065,02_CAS-134065,03_CAS-134065,04_CAS-134065
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12463:  User should get Validation while <Add_Edit> Contact Person Key employee details without opening Address accordion on Contact Person screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user deletes the existing contact person detail
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add "single" contact person detail
    When user clicks on "<Add_Edit>" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row <ContactPerson_home_rowNum>
    And user fills contact person key employee details with address accordion "<Opened_notopened>"
    And user clicks on "<Saves_MovetoNext>" button in Contact Person Key Employee Details screen
    Then user should be able to validate successfully
    Examples:
      | ProductType   | ApplicationStage   | Saves_MovetoNext | Add_Edit | Opened_notopened                                  | Key   | ContactPerson_home_rowNum |
      | <ProductType> | <ApplicationStage> | Done             | Add      | is not opened                                     | <Key> | 0                         |
      | <ProductType> | <ApplicationStage> | Done             | Edit     | is not opened                                     | <Key> | 171                       |
      | <ProductType> | <ApplicationStage> | Done             | Add      | is opened then closed without filling any details | <Key> | 169                       |
      | <ProductType> | <ApplicationStage> | Done             | Edit     | is opened then closed without filling any details | <Key> | 171                       |


  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 01_CAS-134065,02_CAS-134065,03_CAS-134065,04_CAS-134065
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12464:  Validation while <Add_Edit> Contact Person Key employee details once Identification Accordion <Opened_notopened> for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add contact person
    When user clicks on "<Add_Edit>" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 168
    And user fills contact person key employee details with identification accordion "<Opened_notopened>"
    And user clicks on "<Saves_MovetoNext>" button in Contact Person Key Employee Details screen
    Then user should be able to validate successfully
    Examples:
      | ProductType   | ApplicationStage   | Saves_MovetoNext | Add_Edit | Opened_notopened                                  | Key   |
      | <ProductType> | <ApplicationStage> | Done             | Add      | is opened then closed without filling any details | <Key> |
      | <ProductType> | <ApplicationStage> | Done             | Edit     | is opened then closed without filling any details | <Key> |
  @Sanity
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
 # ${ProductType:[ "PF","HL","MAL"]}
 # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 # ${Key:["Primary","Coapplicant","Guarantor"]}
 # 01_CAS-134065,02_CAS-134065,03_CAS-134065,04_CAS-134065
 # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12465:  User should not get any validation while <Add_Edit> Contact Person Key employee details once Identification Accordion <Opened_notopened> for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add contact person
    When user clicks on "<Add_Edit>" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 167
    And user fills contact person key employee details with identification accordion "<Opened_notopened>"
    And user clicks on "<Saves_MovetoNext>" button in Contact Person Key Employee Details screen
    Then user should be able to "<Add_Edit>" contact detail successfully
    Examples:
      | ProductType   | ApplicationStage   | Saves_MovetoNext | Add_Edit | Opened_notopened | Key   |
      | <ProductType> | <ApplicationStage> | Done             | Add      | is not opened    | <Key> |
      | <ProductType> | <ApplicationStage> | Done             | Edit     | is not opened    | <Key> |


  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12466:  Contact Person Details created should be visible in grid outside the modal window for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user deletes the existing contact person detail
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    When user add "<single_multiple>" contact person detail
    Then user should be able to view captured details in grid in "<single_multiple>" grid
    Examples:
      | ProductType   | ApplicationStage   | single_multiple | Key   |
      | <ProductType> | <ApplicationStage> | Single          | <Key> |
      | <ProductType> | <ApplicationStage> | Multiple        | <Key> |

  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Login Acceptance","Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,CAS-127637,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12467:  User should be able to view <Details> details in disabled mode for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user deletes the existing contact person detail
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    When user add "single" contact person detail
    And user clicks on Name hyperlink in grid on Contact person details screen
    Then User should be able to view already entered "<Details>" details in disabled mode
    Examples:
      | ProductType   | ApplicationStage   | Details        | Key   |
      | <ProductType> | <ApplicationStage> | Contact Person | <Key> |
      | <ProductType> | <ApplicationStage> | Identification | <Key> |
      | <ProductType> | <ApplicationStage> | Address        | <Key> |

  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-13891:  User should get Confirmation message before finally deleting the contact person key employee record from grid for an application of "<ProductType>" at "<ApplicationStage>" stage with applicant type as "<Key>"
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user deletes the existing contact person detail
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add "single" contact person detail
    When user deletes "<Details>" record available in grid
    Then Confirmation message should come before finally deleting the contact person key employee record from grid
    Examples:
      | ProductType   | ApplicationStage   | Details        | Key   |
      | <ProductType> | <ApplicationStage> | Contact Person | <Key> |
#      | <ProductType> | <ApplicationStage> | Identification | <Key> |
#      | <ProductType> | <ApplicationStage> | Address        | <Key> |

  @Sanity
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12468:  User should be able to <Add_Edit> address details of <ContactPerson_address_rowNum> dataset on Contact Person Details for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add contact person
    And user clicks on "Edit" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_address>" and row 0
    And user expands Address accordion in contact person
    And user add address detail in contact person
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_address>" and row <ContactPerson_address_rowNum>
    And user "<Add_Edit>" address details of contact person
    When user clicks on "<save_savenext>" button in Contact Person for address validation
    Then user should be able to validate successfully
    Examples:
      | ProductType   | ApplicationStage   | Add_Edit | ContactPersonWB     | ContactPerson_address | save_savenext | ContactPerson_address_rowNum | Key   |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 0                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 1                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 2                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 3                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 4                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 5                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 6                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 7                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 8                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 9                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 10                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 11                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 12                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 13                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 14                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 15                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 16                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 17                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 18                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 19                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 20                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 21                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 22                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 23                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 24                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 25                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 26                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 27                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 28                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 29                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 30                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 31                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 32                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 33                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 34                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 35                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 36                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 37                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 38                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 39                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 40                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 41                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 42                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 43                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 44                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 45                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 46                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 47                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 48                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 49                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 50                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 51                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 52                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 53                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 54                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 55                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 56                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 57                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 58                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 59                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 60                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 61                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 62                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 63                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 64                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Done          | 65                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 0                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 1                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 2                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 3                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 4                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 5                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 6                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 7                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 8                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 9                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 10                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 11                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 12                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 13                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 14                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 15                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 16                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 17                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 18                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 19                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 20                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 21                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 22                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 23                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 24                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 25                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 26                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 27                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 28                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 29                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 30                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 31                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 32                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 33                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 34                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 35                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 36                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 37                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 38                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 39                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 40                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 41                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 42                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 43                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 44                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 45                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 46                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 47                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 48                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 49                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 50                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 51                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 52                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 53                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 54                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 55                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 56                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 57                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 58                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 59                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 60                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 61                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 62                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 63                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 64                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Done          | 65                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 0                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 1                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 2                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 3                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 4                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 5                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 6                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 7                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 8                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 9                            | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 10                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 11                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 12                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 13                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 14                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 15                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 16                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 17                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 18                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 19                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 20                           | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | address               | Save & Next   | 21                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 0                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 1                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 2                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 3                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 4                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 5                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 6                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 7                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 8                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 9                            | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 10                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 11                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 12                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 13                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 14                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 15                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 16                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 17                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 18                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 19                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 20                           | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | address               | Save & Next   | 21                           | <Key> |

  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12469:  Contact Person Address Details captured should be visible in <single_multiple> grid with <PermRadio_Delete> under Address Section for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user clicks on "Add" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 0
    And user fills contact person key employee details
    And user reads data from the excel file "contact_person.xlsx" under sheet "address" and row <ContactPerson_address_rowNum>
    And user expands Address accordion in contact person
    When user add "<single_multiple>" address detail in contact person
    Then user should be able to view captured details in "<single_multiple>" grid with "<PermRadio_Delete>"
    Examples:
      | ProductType   | ApplicationStage   | single_multiple | Key   | PermRadio_Delete               | ContactPerson_address_rowNum |
      | <ProductType> | <ApplicationStage> | Single          | <Key> | Delete icon                    | 0                            |
      | <ProductType> | <ApplicationStage> | Multiple        | <Key> | Delete icon                    | 1                            |
      | <ProductType> | <ApplicationStage> | Single          | <Key> | Permanent Address Radio Button | 0                            |
      | <ProductType> | <ApplicationStage> | Multiple        | <Key> | Permanent Address Radio Button | 1                            |

  @ImplementedBy-richa.singh
  @Conventional @Release @Part-3
  @Release3
 # ${ProductType:[ "PF","HL","MAL"]}
 # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 # ${Key:["Primary","Coapplicant","Guarantor"]}
 # Additional
 # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-13892:  User should get Validation while saving address details without selecting permanent address radio button under address section for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user clicks on "Add" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 0
    And user fills contact person key employee details
    And user reads data from the excel file "contact_person.xlsx" under sheet "address" and row 0
    And user expands Address accordion in contact person
    And user add "single" address detail in contact person
    And user does not select permanent address radio button in address grid on Contact Person Key Employee Details
    #And user submits the record
    When user clicks on "<save_savenext>" button in Contact Person Key Employee Details screen
    Then user should get proper validation while saving address details without selecting permanent address radio button on Contact Person Screen
    Examples:
      | ProductType   | ApplicationStage   | Key   | save_savenext |
      | <ProductType> | <ApplicationStage> | <Key> | Done          |
#      | <ProductType> | <ApplicationStage> | <Key> | Save & Next   |

  @ImplementedBy-richa.singh
  @Conventional @Release @Part-3
  @Release3
  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 09_CAS-134065
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12470:  User should be able to <save_savenext> address details without capturing Landmark field under address section in Contact Person screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user clicks on "Add" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 0
    And user fills contact person key employee details
    And user reads data from the excel file "contact_person.xlsx" under sheet "address" and row 0
    And user expands Address accordion in contact person
    And user add "single" address detail in contact person
#    And user does not capture Land Mark field in address grid on Contact Person Key Employee Details
#    And user submits the record
    When user clicks on "<save_savenext>" button in Contact Person Key Employee Details screen
    Then user should be able to save address details without capturing Landmark field under address section on Contact Person Screen
    Examples:
      | ProductType   | ApplicationStage   | Key   | save_savenext |
      | <ProductType> | <ApplicationStage> | <Key> | Save          |
      | <ProductType> | <ApplicationStage> | <Key> | Save & Next   |

# commented after discussion with anshu mam
 # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 # ${ApplicantType:["Primary Applicant","Co-Applicant","Guarantor"]}
 # Additional
 # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
#  @NotImplemented
#  Scenario Outline: User should not get duplicate entries on Contact Person screen for application of "<ProductType>" at "<ApplicationStage>" stage for applicant type as "<Key>"
#    And Loan application is at "<ApplicationStage>" stage for application of "<ProductType>" with applicant type as "<Key>"
#    And user entered contact person key Employee Details
#    When user opens Contact Person Key Employee Details tab
#    Then user should not get duplicate entries on Contact Person screen
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   |
#      | <ProductType> | <ApplicationStage> | <Key> |

  @ImplementedBy-richa.singh
  @Conventional @Release @Part-3
  @Release3
 # ${ProductType:[ "PF","HL","MAL"]}
 # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 # ${Key:["Primary","Coapplicant","Guarantor"]}
 # Additional
 # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  Scenario Outline: ACAUTOCAS-12471:  User should be able to upload image files of <format> extension with dot at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 9
    And user add contact person
    And user clicks on "Edit" button in Contact Person Key Employee Details screen
    When user upload photo with "<format>" extension in contact person
    Then user should able to upload image in contact person
    Examples:
      | format | ProductType   | ApplicationStage   | Key   |
      | jpeg   | <ProductType> | <ApplicationStage> | <Key> |
      | jpg    | <ProductType> | <ApplicationStage> | <Key> |
      | gif    | <ProductType> | <ApplicationStage> | <Key> |
      | png    | <ProductType> | <ApplicationStage> | <Key> |

  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  @Sanity
  @ImplementedBy-richa.singh
  @Conventional @Release @Part-3
  @Release3
  Scenario Outline: ACAUTOCAS-12472:  User should be able to <Add_Edit> Identification details of <ContactPerson_identification_rowNum> dataset on Contact Person Details for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "contact_person.xlsx" under sheet "home" and row 170
    And user add contact person
    And user clicks on "Edit" button in Contact Person Key Employee Details screen
    And user fills identification details
    And user reads data from the excel file "contact_person.xlsx" under sheet "address" and row 21
    And user expands Address accordion in contact person
    And user add address detail in contact person
    And user clicks on "Done" button in Contact Person Key Employee Details screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_identification>" and row <ContactPerson_identification_rowNum>
    And user clicks on "Edit" button in Contact Person Key Employee Details screen
    And user expands Identification accordion
    And user "<Add_Edit>" identification details of contact person
    When user clicks on "<save_savenext>" button in contact person for identification validation
    Then user should get status successfully
    Examples:
      | ProductType   | ApplicationStage   | Add_Edit | ContactPersonWB     | ContactPerson_identification | save_savenext | ContactPerson_identification_rowNum | Key   |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 2                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 3                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 12                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 13                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 16                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 17                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 18                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 22                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 23                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 32                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 33                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 37                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 38                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 42                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 43                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 46                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 47                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 48                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 49                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 52                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 53                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 56                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 57                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 58                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 62                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 63                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 72                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 73                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 82                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 83                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 87                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 88                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 92                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 93                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 102                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 103                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 106                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 107                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 108                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 109                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 112                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 113                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 116                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 117                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 118                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 119                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 122                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 123                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 126                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 127                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 128                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 129                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 132                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 133                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 19                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 137                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 138                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 27                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 28                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 2                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 3                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 12                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 13                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 16                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 17                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 18                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 22                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 23                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 32                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 33                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 37                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 38                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 42                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 43                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 46                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 47                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 48                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 49                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 52                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 53                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 56                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 57                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 58                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 62                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 63                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 72                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 73                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 82                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 83                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 87                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 88                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 92                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 93                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 102                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 103                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 106                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 107                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 108                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 109                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 112                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 113                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 116                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 117                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 118                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 119                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 122                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 123                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 126                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 127                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 128                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 129                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 132                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 133                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 19                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 27                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 28                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 137                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 138                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 0                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 1                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 6                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 7                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 8                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 9                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 10                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 11                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 20                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 21                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 26                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 29                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 30                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 31                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 36                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 39                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 40                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 41                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 50                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 51                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 59                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 60                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 61                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 66                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 67                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 68                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 69                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 70                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 71                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 76                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 77                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 78                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 79                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 80                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 81                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 86                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 89                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 90                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 91                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 96                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 97                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 98                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 99                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 100                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 101                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 110                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 111                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 120                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 121                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 130                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 131                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 136                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 139                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 4                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 5                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 14                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 15                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 24                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 25                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 34                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 35                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 44                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 45                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 54                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 55                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 64                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 65                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 74                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 75                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 84                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 85                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 94                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 95                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 104                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 105                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 114                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 115                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 124                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 125                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 134                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Done          | 135                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 0                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 1                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 6                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 7                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 8                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 9                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 10                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 11                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 20                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 21                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 26                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 29                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 30                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 31                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 36                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 39                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 40                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 41                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 50                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 51                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 59                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 60                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 61                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 66                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 67                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 68                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 69                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 70                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 71                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 76                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 77                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 78                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 79                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 80                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 81                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 86                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 89                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 90                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 91                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 96                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 97                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 98                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 99                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 100                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 101                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 110                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 111                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 120                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 121                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 130                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 131                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 136                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 139                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 4                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 5                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 14                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 15                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 24                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 25                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 34                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 35                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 44                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 45                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 54                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 55                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 64                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 65                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 74                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 75                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 84                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 85                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 94                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 95                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 104                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 105                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 114                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 115                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 124                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 125                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 134                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Done          | 135                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 0                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 1                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 6                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 7                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 8                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 9                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 10                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 11                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 20                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 21                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 26                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 27                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 28                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 29                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 30                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 31                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 36                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 39                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 40                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 41                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 50                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 51                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 59                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 60                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 61                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 66                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 67                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 68                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 69                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 70                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 71                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 76                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 77                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 78                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 79                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 80                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 81                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 86                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 89                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 90                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 91                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 96                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 97                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 98                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 99                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 100                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 101                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 110                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 111                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 120                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 121                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 130                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 131                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 136                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 139                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Add      | contact_person.xlsx | identification               | Save & Next   | 139                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 0                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 1                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 6                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 7                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 8                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 9                                   | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 10                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 11                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 20                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 21                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 26                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 27                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 28                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 29                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 30                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 31                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 36                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 39                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 40                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 41                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 50                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 51                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 59                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 60                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 61                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 66                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 67                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 68                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 69                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 70                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 71                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 76                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 77                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 78                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 79                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 80                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 81                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 86                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 89                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 90                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 91                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 96                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 97                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 98                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 99                                  | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 100                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 101                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 110                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 111                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 120                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 121                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 130                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 131                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 136                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 139                                 | <Key> |
      | <ProductType> | <ApplicationStage> | Edit     | contact_person.xlsx | identification               | Save & Next   | 140                                 | <Key> |


  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  @Sanity
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  Scenario Outline: ACAUTOCAS-12473:  User should be able to create multiple <Address_Identification> on contact person screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_sheet>" and row <ContactPerson_home_rowNum>
    And user already captured single "<Address_Identification>" with all details on contact person screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_sheet2>" and row <ContactPerson_home_rowNum2>
    When user adds "<Address_Identification>" details again by clicking + icon
    And user clicks on "Done" button in Contact Person Key Employee Details screen
    Then user should be able to create multiple "<Address_Identification>" entries on contact person screen
    Examples:
      | ProductType   | ApplicationStage   | Address_Identification | Key   | ContactPersonWB     | ContactPerson_sheet | ContactPerson_home_rowNum | ContactPerson_sheet2 | ContactPerson_home_rowNum2 |
      | <ProductType> | <ApplicationStage> | Identification         | <Key> | contact_person.xlsx | home                | 170                       | identification       | 20                         |
      | <ProductType> | <ApplicationStage> | Address                | <Key> | contact_person.xlsx | home                | 170                       | address              | 0                          |


  # ${ProductType:[ "PF","HL","MAL"]}
  # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # Additional
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-8674
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  @Release3
  Scenario Outline: ACAUTOCAS-12474:  User should not be able to create duplicate <Address_Identification> on contact person screen for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
  #Duplicate identification details are not allowed
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user navigates to Contact Person Key Employee Details screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_sheet>" and row <ContactPerson_home_rowNum>
    And user already captured single "<Address_Identification>" with all details on contact person screen
    And user reads data from the excel file "<ContactPersonWB>" under sheet "<ContactPerson_sheet2>" and row <ContactPerson_home_rowNum2>
    When user adds "<Address_Identification>" details again by clicking + icon
    And user clicks on "Done" button in Contact Person Key Employee Details screen
    Then user should not be able to create duplicate "<Address_Identification>" entries on contact person screen
    Examples:
      | ProductType   | ApplicationStage   | Address_Identification | Key   | ContactPersonWB     | ContactPerson_sheet | ContactPerson_home_rowNum | ContactPerson_sheet2 | ContactPerson_home_rowNum2 |
      | <ProductType> | <ApplicationStage> | Identification         | <Key> | contact_person.xlsx | home                | 170                       | identification       | 0                          |
    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage   | Address_Identification | Key   | ContactPersonWB     | ContactPerson_sheet | ContactPerson_home_rowNum | ContactPerson_sheet2 | ContactPerson_home_rowNum2 |
      | <ProductType> | <ApplicationStage> | Address                | <Key> | contact_person.xlsx | home                | 170                       | address              | 20                         |
