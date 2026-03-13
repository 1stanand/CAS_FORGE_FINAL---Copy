@Epic-Applicant_Information
@AuthoredBy-rsurya.kumar
#Author:rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:130
# ${ApplicantType:["nonindiv"]}
Feature: Addition of shareholding details to non individual customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  Scenario Outline: ACAUTOCAS-12722:  Entity validation for shareholding details of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user creates an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    Then user should be able to see fields in shareholding details with labels as in workbook "<SourceDataFile>" under sheet "<SourceSheet>" and row number "SourceSheetRow":
      | Name               | 17 |
      | Individual/Company | 1  |
      | Constitution       | 6  |
      | Unique Identifier  | 7  |
      | No of Shares       | 8  |
      | Holding Percentage | 9  |
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding | <Category> |     | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  Scenario Outline: ACAUTOCAS-12723:  Field label validation for Individual shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user creates an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user select individual_company as "Individual"
    Then user should be able to see fields in shareholding details with labels as in workbook "<SourceDataFile>" under sheet "<SourceSheet>" and row number "SourceSheetRow":
      | Type of Shareholder      | 0  |
      | Individual/Company       | 1  |
      | Title                    | 2  |
      | First Name               | 3  |
      | Middle Name              | 4  |
      | Last Name                | 5  |
      | Constitution             | 6  |
      | Unique Identifier        | 7  |
      | No of Shares             | 8  |
      | Holding Percentage       | 9  |
      | Authorized Share Capital | 10 |
      | Paid up Share Capital    | 11 |
      | Issued Share Capital     | 12 |
      | Face Value Per Share     | 13 |
      | Current Market Price     | 14 |
      | As on Date               | 15 |
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding | <Category> |     | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  Scenario Outline: ACAUTOCAS-12724:  Field label validation for Company shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user creates an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    When user open share holding details
    And user create new share holding
    And user select individual_company as "Company"
    Then user should be able to see fields in shareholding details with labels as in workbook "<SourceDataFile>" under sheet "<SourceSheet>" and row number "SourceSheetRow":
      | Type of Shareholder      | 0  |
      | Individual/Company       | 1  |
      | Company Name             | 16 |
      | Constitution             | 6  |
      | Unique Identifier        | 7  |
      | No of Shares             | 8  |
      | Holding Percentage       | 9  |
      | Authorized Share Capital | 10 |
      | Paid up Share Capital    | 11 |
      | Issued Share Capital     | 12 |
      | Face Value Per Share     | 13 |
      | Current Market Price     | 14 |
      | As on Date               | 15 |
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet   | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding | <Category> |     | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  Scenario Outline: ACAUTOCAS-12725:  Field "Type of Shareholder" list validation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user creates an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    Then user should be able to see list of values for "Type of Shareholder"

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        | <Category> |     | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  Scenario Outline: ACAUTOCAS-12726:  Field "Individual Company" list validation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user creates an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    Then user should be able to see list of values for "Individual Company"
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        | <Category> |     | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  @Perishable
  Scenario Outline: ACAUTOCAS-12727:  Field "Title" list validation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user creates an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    Then user should be able to see list of values for "Title"

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
#      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | ShareholdingDetails | 70             | master_setup    | H4:H4          |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        | <Category> |     | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  @Perishable
  Scenario Outline: ACAUTOCAS-12728:  Field "Constitution" validation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
#    And user creates an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<category>" with "<key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    Then user should be able to see list of values for Constitution as in workbook
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        |          |     | <ApplicantType> |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | category   | key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        | <Category> |     | <ApplicantType> |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding_master              | 0                        | <Category> |     | <ApplicantType> |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  @Perishable
  Scenario Outline: ACAUTOCAS-12729:  Data validation to stop for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user fill the share holding details
    Then user should get error with notification highlighting the FieldName with notification "<Notification>"
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key | Notification                                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 1                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 2                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 3                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 4                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 5                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 10                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 15                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 20                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 23                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 25                       | <ApplicantType> |          |     | Decimal numbers not allowed                                                                 |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 26                       | <ApplicantType> |          |     | Negative numbers not allowed                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 28                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 31                       | <ApplicantType> |          |     | Negative numbers not allowed                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 32                       | <ApplicantType> |          |     | Please enter value between 0 to 100 upto 2 decimal places.                                  |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 33                       | <ApplicantType> |          |     | Please enter value between 0 to 100 upto 2 decimal places.                                  |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 35                       | <ApplicantType> |          |     | Authorised share capital can't be less than Issued share capital and Paid Up Share Capital. |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 36                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 37                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 42                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 43                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 44                       | <ApplicantType> |          |     | Paid up share capital can't Be greater than Issued share capital                            |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 48                       | <ApplicantType> |          |     | Paid up share capital can't Be greater than Issued share capital                            |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 50                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 51                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 56                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 57                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 62                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 63                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 67                       | <ApplicantType> |          |     | Please enter a valid date                                                                   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 69                       | <ApplicantType> |          |     | Year of Date should be greater than or equal to 1942                                        |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 71                       | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 73                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 6                        | <ApplicantType> |          |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 11                       | <ApplicantType> |          |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 16                       | <ApplicantType> |          |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 72                       | <ApplicantType> |          |     | Please input valid characters.                                                              |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key | Notification                                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 1                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 2                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 3                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 4                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 5                        | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 10                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 15                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 20                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 23                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 25                       | <ApplicantType> |          |     | Decimal numbers not allowed                                                                 |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 26                       | <ApplicantType> |          |     | Negative numbers not allowed                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 28                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 31                       | <ApplicantType> |          |     | Negative numbers not allowed                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 32                       | <ApplicantType> |          |     | Please enter value between 0 to 100 upto 2 decimal places.                                  |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 33                       | <ApplicantType> |          |     | Please enter value between 0 to 100 upto 2 decimal places.                                  |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 35                       | <ApplicantType> |          |     | Authorised share capital can't be less than Issued share capital and Paid Up Share Capital. |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 36                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 37                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 42                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 43                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 44                       | <ApplicantType> |          |     | Paid up share capital can't Be greater than Issued share capital                            |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 48                       | <ApplicantType> |          |     | Paid up share capital can't Be greater than Issued share capital                            |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 50                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 51                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 56                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 57                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 62                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 63                       | <ApplicantType> |          |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 67                       | <ApplicantType> |          |     | Please enter a valid date                                                                   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 69                       | <ApplicantType> |          |     | Year of Date should be greater than or equal to 1942                                        |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 71                       | <ApplicantType> |          |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 73                       | <ApplicantType> |          |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 6                        | <ApplicantType> |          |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 11                       | <ApplicantType> |          |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 16                       | <ApplicantType> |          |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 72                       | <ApplicantType> |          |     | Please input valid characters.                                                              |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key | Notification                                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 1                        | <ApplicantType> | <Category> |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 2                        | <ApplicantType> | <Category> |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 3                        | <ApplicantType> | <Category> |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 4                        | <ApplicantType> | <Category> |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 5                        | <ApplicantType> | <Category> |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 10                       | <ApplicantType> | <Category> |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 15                       | <ApplicantType> | <Category> |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 20                       | <ApplicantType> | <Category> |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 23                       | <ApplicantType> | <Category> |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 25                       | <ApplicantType> | <Category> |     | Decimal numbers not allowed                                                                 |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 26                       | <ApplicantType> | <Category> |     | Negative numbers not allowed                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 28                       | <ApplicantType> | <Category> |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 31                       | <ApplicantType> | <Category> |     | Negative numbers not allowed                                                                |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 32                       | <ApplicantType> | <Category> |     | Please enter value between 0 to 100 upto 2 decimal places.                                  |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 33                       | <ApplicantType> | <Category> |     | Please enter value between 0 to 100 upto 2 decimal places.                                  |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 35                       | <ApplicantType> | <Category> |     | Authorised share capital can't be less than Issued share capital and Paid Up Share Capital. |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 36                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 37                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 42                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 43                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 44                       | <ApplicantType> | <Category> |     | Paid up share capital can't Be greater than Issued share capital                            |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 48                       | <ApplicantType> | <Category> |     | Paid up share capital can't Be greater than Issued share capital                            |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 50                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 51                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 56                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 57                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 62                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 63                       | <ApplicantType> | <Category> |     | Only positive values and Upto 18 digits are allowed before decimal.                         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 67                       | <ApplicantType> | <Category> |     | Please enter a valid date                                                                   |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 69                       | <ApplicantType> | <Category> |     | Year of Date should be greater than or equal to 1942                                        |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 71                       | <ApplicantType> | <Category> |     | field required                                                                              |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 73                       | <ApplicantType> | <Category> |     | Length validation                                                                           |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 6                        | <ApplicantType> | <Category> |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 11                       | <ApplicantType> | <Category> |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 16                       | <ApplicantType> | <Category> |     | Only Alphabets,Numbers and ' . spaces are allowed.                                          |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 72                       | <ApplicantType> | <Category> |     | Please input valid characters.                                                              |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12730:  Data validation to succeed for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user fill the share holding details
    Then user should be able to add share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
#FeatureID-ACAUTOCAS-8506,CAS-120309
  @Perishable
  Scenario Outline: ACAUTOCAS-12731:  Data validation to add multiple Shareholders of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 7  |
      | 8  |
      | 9  |
      | 13 |
      | 14 |
      | 18 |
      | 19 |
      | 22 |
      | 24 |
    Then user should be able to add successfully to the grid block
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
    @Perishable
#FeatureID-ACAUTOCAS-8506,CAS-120309
  Scenario Outline: ACAUTOCAS-12732:  Data validation to save multiple Shareholders of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 65 |
      | 66 |
      | 68 |
      | 70 |
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12733:  Data validation to save multiple Shareholders of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage in expanded mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user open share holding details in expand mode
    When user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 65 |
      | 66 |
      | 68 |
      | 70 |
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12734:  Entity validation to succeed with mandatory data for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user create new share holding
    And user selects required field section
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the mandatory share holding details
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfo_home_rowNum | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | 0                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 7                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 68                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 70                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfo_home_rowNum | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | 0                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 7                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 68                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 70                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfo_home_rowNum | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | 0                        | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 7                        | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 68                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 70                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12735:  Entity validation to succeed with remaining data for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user selects required field section
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the mandatory share holding details
    And user save the share Holding Details
    And user modifies the share holder
    And user clicks on All Fields in customer details
    When user fill the share holding details
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966\
  @Perishable
  Scenario Outline: ACAUTOCAS-12736:  Data reconciliation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage part 1
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfo_home_rowNum | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | 0                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 7                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 8                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 12                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 13                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 17                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 18                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 21                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 22                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 24                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 27                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 29                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 30                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 34                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 38                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 39                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 40                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 41                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 45                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 46                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 47                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 49                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 52                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 53                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 54                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 55                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 58                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 59                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 60                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 61                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 64                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 65                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 66                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 68                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 70                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfo_home_rowNum | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | 0                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 7                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 8                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 12                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 13                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 17                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 18                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 21                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 22                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 24                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 27                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 29                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 30                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 34                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 38                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 39                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 40                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 41                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 45                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 46                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 47                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 49                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 52                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 53                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 54                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 55                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 58                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 59                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 60                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 61                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 64                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 65                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 66                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 68                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 70                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfo_home_rowNum | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | 0                        | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 7                        | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 8                        | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 12                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 13                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 17                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 18                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 21                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 22                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 24                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 27                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 29                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 30                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 34                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 38                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 39                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 40                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 41                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 45                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 46                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 47                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 49                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 52                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 53                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 54                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 55                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 58                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 59                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 60                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 61                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 64                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 65                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 66                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 68                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | 70                       | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12737:  One shareholder deletion of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user deletes the shareholder
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12738:  Multiple shareholder deletion of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    When user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
  @Sanity
    @Perishable
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  Scenario Outline: ACAUTOCAS-12739:  Data reconciliation after multiple shareholder deletion of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    And user view the shareholder details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user compare the share holding data
    Then user should be able to reconcile the data successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> |     |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @Perishable
  Scenario Outline: ACAUTOCAS-12740:  Data reconciliation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen part 1
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the share holding details
    And user save the share Holding Details
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    And user clicks on stage hyperlink on enquiry screen
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          |     |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> |     |


    #----------------------------------------------Guarantor--------------------------------------------------------
####EDU - Guarantor
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12741:  Data validation to succeed for Shareholder of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user fill the share holding details
    Then user should be able to add share holding details Successfully

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Perishable
#FeatureID-ACAUTOCAS-8506,CAS-120309
  Scenario Outline: ACAUTOCAS-12742:  Data validation to save multiple Shareholders of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 65 |
      | 66 |
      | 68 |
      | 70 |
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12743:  Entity validation to succeed with mandatory data for Shareholder of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user create new share holding
    And user clicks on Required fields in customer details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the mandatory share holding details
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12744:  Entity validation to succeed with remaining data for Shareholder of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user selects required field section
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the mandatory share holding details
    And user save the share Holding Details
    And user modifies the share holder
    And user clicks on All Fields in customer details
    When user fill the share holding details
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12745:  One shareholder deletion of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user deletes the shareholder
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully


    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12746:  Multiple shareholder deletion of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    When user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @Perishable
  Scenario Outline: ACAUTOCAS-12747:  Data reconciliation after multiple shareholder deletion of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage part 1
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    And user view the shareholder details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user compare the share holding data
    Then user should be able to reconcile the data successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> | guarantor |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @Perishable
  Scenario Outline: ACAUTOCAS-12748:  Data reconciliation for Shareholder of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen part 1
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the share holding details
    And user save the share Holding Details
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    And user clicks on stage hyperlink on enquiry screen
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | guarantor |


    #--------------------------------Co-Applicant-----------------------------------------------------------------
####EDU - Coapplicant
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12749:  Data validation to succeed for Shareholder of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user fill the share holding details
    Then user should be able to add share holding details Successfully

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12750:  Data validation to save multiple Shareholders of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 65 |
      | 66 |
      | 68 |
      | 70 |
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12751:  Entity validation to succeed with mandatory data for Shareholder of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user create new share holding
    And user clicks on Required fields in customer details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the mandatory share holding details
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12752:  Entity validation to succeed with remaining data for Shareholder of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user selects required field section
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the mandatory share holding details
    And user save the share Holding Details
    And user modifies the share holder
    And user clicks on All Fields in customer details
    When user fill the share holding details
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12753:  One shareholder deletion of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user deletes the shareholder
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8506,CAS-120309
    @Perishable
  Scenario Outline: ACAUTOCAS-12754:  Multiple shareholder deletion of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    When user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    Then user should be able to save share holding details Successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @Perishable
  Scenario Outline: ACAUTOCAS-12755:  Data reconciliation after multiple shareholder deletion of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage part 1
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    And user view the shareholder details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user compare the share holding data
    Then user should be able to reconcile the data successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> | coapplicant |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @Perishable
  Scenario Outline: ACAUTOCAS-12756:  Data reconciliation for Shareholder of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen part 1
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the share holding details
    And user save the share Holding Details
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    And user clicks on stage hyperlink on enquiry screen
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-ashutosh.kumar2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |
    @Islamic
    @Release
    @Part-3
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category   | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> | <Category> | coapplicant |

#------------------------------------Not Implemented ---------------------------------------------------

    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966\
  @OnHold
  Scenario Outline: ACAUTOCAS-12757:  Data reconciliation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage part 2
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfo_home_rowNum | PersonalInfoWB            | PersonalInfo_share_holding_master | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | 0                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 7                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 8                        | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 12                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 13                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 17                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 18                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 21                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 22                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 24                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 27                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 29                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 30                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 34                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 38                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 39                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 40                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 41                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 45                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 46                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 47                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 49                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 52                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 53                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 54                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 55                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 58                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 59                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 60                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 61                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 64                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 65                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 66                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 68                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | 70                       | personal_information.xlsx | share_holding                     | <ApplicantType> |          |     |


    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @OnHold
  Scenario Outline: ACAUTOCAS-12758:  Data reconciliation for Shareholder of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen part 2
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And  user fill the share holding details
    And user save the share Holding Details
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    And user clicks on stage hyperlink on enquiry screen
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          |     |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          |     |

      # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @OnHold
  Scenario Outline: ACAUTOCAS-12759:  Data reconciliation after multiple shareholder deletion of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage part 2
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    And user view the shareholder details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user compare the share holding data
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |


     # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @OnHold
  Scenario Outline: ACAUTOCAS-12760:  Data reconciliation for Shareholder of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen part 2
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the share holding details
    And user save the share Holding Details
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    And user clicks on stage hyperlink on enquiry screen
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key       |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | guarantor |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | guarantor |

    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @OnHold
  Scenario Outline: ACAUTOCAS-12761:  Data reconciliation after multiple shareholder deletion of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage part 2
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user add multiple share holding details from excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" and row
      | 0  |
      | 8  |
      | 12 |
    And user save the share Holding Details
    And user deletes the shareholder available in excel file "<PersonalInfoWB>" sheet "<PersonalInfo_share_holding_master>" with rows
      | 0 |
      | 8 |
    And user save the share Holding Details
    And user view the shareholder details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    When user compare the share holding data
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |


    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:CAS-120309
###Bug:CAS-129966
#FeatureID-ACAUTOCAS-8506,CAS-120309,CAS-129966
  @OnHold
  Scenario Outline: ACAUTOCAS-12762:  Data reconciliation for Shareholder of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen part 2
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    And user create new share holding
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_share_holding_master>" and row <PersonalInfo_home_rowNum>
    And user fill the share holding details
    And user save the share Holding Details
    And user navigates to Enquiry screen menu option
    And user searches for an application on enquiry screen
    And user clicks on stage hyperlink on enquiry screen
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user open share holding details
    When user view the shareholder details
    And user compare the share holding data
    Then user should be able to reconcile the data successfully
    Examples:
      | ProductType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_share_holding_master | PersonalInfo_home_rowNum | ApplicantType   | category | key         |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 0                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 7                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 8                        | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 12                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 13                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 17                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 18                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 21                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 22                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 24                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 27                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 29                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 30                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 34                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 38                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 39                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 40                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 41                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 45                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 46                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 47                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 49                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 52                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 53                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 54                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 55                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 58                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 59                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 60                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 61                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 64                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 65                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 66                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 68                       | <ApplicantType> |          | coapplicant |
      | <ProductType> | <ApplicationStage> | personal_information.xlsx | share_holding                     | 70                       | <ApplicantType> |          | coapplicant |

