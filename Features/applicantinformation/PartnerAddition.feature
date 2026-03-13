@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-rsurya.kumar
#Author:rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:
@ApplicantRun
Feature: Addition of partner to non individual customer

#  In this feature we will create and attach partner to a non individual customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12658:  Entity validation for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    Then user should be able to see grid blocks for EntityName entity
      | EntityName |
      | Partners   |
      | Directors  |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12659:  Entity Directors validation for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    Then user should be able to see sections for Directors entity
      | EntityName       |
      | Composition      |
      | Type & Number of |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12660:  Field label validation of Composition for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    Then user should be able to see Composition fields with label as:
      | partners_and_directors.xlsx | home | 0 | Maximum No. |
      | partners_and_directors.xlsx | home | 1 | Minimum No. |
      | partners_and_directors.xlsx | home | 2 | Present No. |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12661:  Field data validation of Composition for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_home>" and row <PartnersAndDirectors_home_rowNum>
    And user enters the data in composition of partners and directors
    Then user should be able to save partners and directors successfully on saving partners and directors
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectorsWB      | PartnersAndDirectors_home | PartnersAndDirectors_home_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 0                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 1                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 2                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 3                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 4                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 5                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 6                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 7                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 8                                |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | partners_and_directors.xlsx | home                      | 9                                |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12662: Field data validation 2 of Composition for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    When user navigates to Partners & Directors
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_home>" and row <PartnersAndDirectors_home_rowNum>
    And user enters the data in composition of partners and directors
    And user save the partners and directors
    Then user should get a error message in field of composition of partners and directors
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_home | PartnersAndDirectors_home_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 10                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 11                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 12                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 13                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 14                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 15                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 49                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 50                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 51                               |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @LoggedBug
  Scenario Outline: ACAUTOCAS-13894:  Field data validation of value in Composition for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    When user navigates to Partners & Directors
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_home>" and row <PartnersAndDirectors_home_rowNum>
    And user enters the data in the composition having value of "<Field>" greater than "<Count>" digits
    Then user should be able to match the data in "<Field>" composition field from excel file
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Field       | Count | PartnersAndDirectorsWB      | PartnersAndDirectors_home | PartnersAndDirectors_home_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | Maximum No. | 9     | partners_and_directors.xlsx | home                      | 16                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | Minimum No. | 5     | partners_and_directors.xlsx | home                      | 17                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | Present No. | 8     | partners_and_directors.xlsx | home                      | 18                               |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12663:  Field label validation of "Type & Number of" for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    Then user should be able to see Composition fields with label as:
      | partners_and_directors.xlsx | home | 3 | Promoters    |
      | partners_and_directors.xlsx | home | 4 | Independent  |
      | partners_and_directors.xlsx | home | 5 | Professional |
      | partners_and_directors.xlsx | home | 6 | Nominees     |
      | partners_and_directors.xlsx | home | 7 | Outside      |
      | partners_and_directors.xlsx | home | 8 | Others       |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12664:  Field data validation of Type & Number of for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_home>" and row <PartnersAndDirectors_home_rowNum>
    And user enters the data in Type & Number Of of partners and directors
    Then user should be able to save partners and directors successfully on saving partners and directors
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_home | PartnersAndDirectors_home_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 19                               |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 20                               |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 21                               |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 22                               |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 23                               |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 24                               |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 25                               |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12665: Field data validation 2 of Type & Number of for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    When user navigates to Partners & Directors
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_home>" and row <PartnersAndDirectors_home_rowNum>
    And user enters the data in Type & Number Of of partners and directors
    And user save the partners and directors
    Then user should get a error message in field of Type & Number Of of partners and directors
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_home | PartnersAndDirectors_home_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 26                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 27                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 28                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 29                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 30                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 31                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 43                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 44                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 45                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 46                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 47                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | home                      | 48                               |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @LoggedBug
  Scenario Outline: ACAUTOCAS-13895:  Field data validation of value in Type & Number Of for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    When user navigates to Partners & Directors
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_home>" and row <PartnersAndDirectors_home_rowNum>
    And user enters the data in Type & Number Of having value of "<Field>" greater than "<Count>" digits
    Then user should be able to match the data in "<Field>" Type & Number Of field from excel file
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Field        | Count | PartnersAndDirectorsWB      | PartnersAndDirectors_home | PartnersAndDirectors_home_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | Promoters    | 9     | partners_and_directors.xlsx | home                      | 37                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | Independent  | 9     | partners_and_directors.xlsx | home                      | 38                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | Professional | 9     | partners_and_directors.xlsx | home                      | 39                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | Nominees     | 9     | partners_and_directors.xlsx | home                      | 40                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | Outside      | 9     | partners_and_directors.xlsx | home                      | 41                               |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | Others       | 9     | partners_and_directors.xlsx | home                      | 42                               |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12666: Partner grid validation for non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    When user navigates to Partners & Directors
    Then user should be able to see grid block for entity Partners with fields:
      | partners_and_directors.xlsx | home | 32 | Title              |
      | partners_and_directors.xlsx | home | 33 | Name               |
      | partners_and_directors.xlsx | home | 34 | Type               |
      | partners_and_directors.xlsx | home | 35 | Partner's Capital  |
      | partners_and_directors.xlsx | home | 36 | Holding Percentage |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12667:  Field label validation of Partner screen of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row 1
    And user selects "<Type>" of partner
    Then user should be able to see Partner Details fields with label as:
      | partners_and_directors.xlsx | partners | 0  | Type                       |
      | partners_and_directors.xlsx | partners | 1  | Photo                      |
      | partners_and_directors.xlsx | partners | 2  | Individual/Company         |
      | partners_and_directors.xlsx | partners | 3  | Gender                     |
      | partners_and_directors.xlsx | partners | 4  | Title                      |
      | partners_and_directors.xlsx | partners | 5  | First Name                 |
      | partners_and_directors.xlsx | partners | 6  | Middle Name                |
      | partners_and_directors.xlsx | partners | 7  | Last Name                  |
      | partners_and_directors.xlsx | partners | 8  | Experience(years)          |
      | partners_and_directors.xlsx | partners | 9  | Date of Birth              |
      | partners_and_directors.xlsx | partners | 10 | Age(years)                 |
      | partners_and_directors.xlsx | partners | 11 | Unique ID No.              |
      | partners_and_directors.xlsx | partners | 12 | Constitution               |
      | partners_and_directors.xlsx | partners | 13 | Qualification              |
      | partners_and_directors.xlsx | partners | 14 | Relationship With Employee |
      | partners_and_directors.xlsx | partners | 15 | Relation                   |
      | partners_and_directors.xlsx | partners | 16 | Is Contact Person          |
      | partners_and_directors.xlsx | partners | 17 | Nationality                |
      | partners_and_directors.xlsx | partners | 18 | Partner's Capital          |
      | partners_and_directors.xlsx | partners | 19 | Holding Percentage         |
      | partners_and_directors.xlsx | partners | 20 | Observations               |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key | Type       |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     | Individual |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12668:  Field label validation 2 of Partner screen of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    When user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row 0
    And user selects "<Type>" of partner
    Then user should be able to see Partner Details fields with label as:
      | partners_and_directors.xlsx | partners | 0  | Type                  |
      | partners_and_directors.xlsx | partners | 2  | Individual/Company    |
      | partners_and_directors.xlsx | partners | 4  | Title                 |
      | partners_and_directors.xlsx | partners | 21 | Company Name          |
      | partners_and_directors.xlsx | partners | 8  | Experience(years)     |
      | partners_and_directors.xlsx | partners | 22 | Date of Incorporation |
      | partners_and_directors.xlsx | partners | 10 | Age(years)            |
      | partners_and_directors.xlsx | partners | 11 | Unique ID No.         |
      | partners_and_directors.xlsx | partners | 12 | Constitution          |
      | partners_and_directors.xlsx | partners | 18 | Partner's Capital     |
      | partners_and_directors.xlsx | partners | 19 | Holding Percentage    |
      | partners_and_directors.xlsx | partners | 20 | Observations          |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key | Type    |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     | Company |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12669:  Field "Type" list validation for Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Type" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12670: Field "Individual Company" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Individual Company" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12671: Field "Gender" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user selects "<Type>" of partner
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Gender" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Type       | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 1                                    | Individual |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12672:  Company related fields should not be visible for individual type Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row 1
    And user selects "<Type>" of partner
    Then user should not be able to see fields related to company type partner:
      | FieldName             |
      | Company Name          |
      | Date of Incorporation |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key | Type       |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     | Individual |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12673:  Individual related fields should not be visible for company type Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row 0
    And user selects "<Type>" of partner
    Then user should not be able to see fields related to individual type partner:
      | FieldName     |
#      | Title         |
      | Gender        |
      | First Name    |
      | Middle Name   |
      | Last Name     |
#      | Qualification |
      | Date of Birth |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key | Type    |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     | Company |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12674: Field "Title" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user selects "<Type>" of partner
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Title" as in excel
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Type       | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 1                                    | Individual |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 0                                    | Company    |          | Primary |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12675:  Entity level validation for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    Then user should get a notification message on saving partner data
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 1                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 0                                    |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12676:  Entity level validation 1 for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user adds a new partner
    When user navigates to identification of Partners
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row 2
    Then user should get an error message in Partners & Directors
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12677:  Entity level validation 2 for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user has not added partners for non individual customer
    And user has not added directors for non individual customer
    And user save the partners and directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    Then user should get a notification with field level errors on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 3                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 4                                    |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12678: Field label validation of Identification section of Partner screen of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user selects "<Type>" of partner
    And user navigates to identification of Partners
    Then user should be able to see Identification fields with label as:
      | partners_and_directors.xlsx | partners | 23 | Identification Type |
      | partners_and_directors.xlsx | partners | 24 | Identification No.  |
      | partners_and_directors.xlsx | partners | 25 | Issue Date          |
      | partners_and_directors.xlsx | partners | 26 | Expiry Date         |
      | partners_and_directors.xlsx | partners | 27 | Country of Issue    |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Type       | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | Individual | partners_and_directors.xlsx | partners                      | 1                                    |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12679: Field "Identification Type" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to identification of Partners
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Identification Type" as in excel
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 1                                    |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 0                                    |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12680: Field "Country of Issue" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to identification of Partners
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Country of Issue" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 1                                    |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 0                                    |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12681:  Field level validation for partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user has not added partners for non individual customer
    And user has not added directors for non individual customer
    And user save the partners and directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to identification of Partners
    And user enters data for identification
    Then user should get a notification with field level errors on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 5                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 6                                    |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12682: Field "Address Type" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to address block of Partners
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Address Type" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 1                                    |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 0                                    |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12683:  Address field label validation for residential and permanent address type at Partner screen of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user selects "<Type>" of partner
    And user enters the data for partner
    And user navigates to address block of Partners
    And user selects Address Type of partner
    Then user should be able to see Address fields with label as:
      | partners_and_directors.xlsx | partners | 28 | Address Type                  |
      | partners_and_directors.xlsx | partners | 29 | Full Address                  |
      | partners_and_directors.xlsx | partners | 30 | Country                       |
      | partners_and_directors.xlsx | partners | 31 | Flat/Plot Number              |
      | partners_and_directors.xlsx | partners | 32 | Address Line 2                |
      | partners_and_directors.xlsx | partners | 33 | Address Line 3                |
      | partners_and_directors.xlsx | partners | 34 | PinCode                       |
      | partners_and_directors.xlsx | partners | 35 | Region                        |
      | partners_and_directors.xlsx | partners | 36 | State                         |
      | partners_and_directors.xlsx | partners | 37 | City                          |
      | partners_and_directors.xlsx | partners | 38 | District                      |
      | partners_and_directors.xlsx | partners | 39 | Taluka                        |
      | partners_and_directors.xlsx | partners | 40 | Village                       |
      | partners_and_directors.xlsx | partners | 52 | Residence Status              |
      | partners_and_directors.xlsx | partners | 53 | Residence Type                |
      | partners_and_directors.xlsx | partners | 54 | Address In Document           |
      | partners_and_directors.xlsx | partners | 41 | Landmark                      |
      | partners_and_directors.xlsx | partners | 42 | Current Address               |
      | partners_and_directors.xlsx | partners | 43 | Duration at this Address From |
      | partners_and_directors.xlsx | partners | 44 | Duration at this Address To   |
      | partners_and_directors.xlsx | partners | 45 | Duration at this City From    |
      | partners_and_directors.xlsx | partners | 46 | Duration at this City To      |
      | partners_and_directors.xlsx | partners | 47 | Primary Phone:                |
      | partners_and_directors.xlsx | partners | 48 | Mobile Phone                  |
      | partners_and_directors.xlsx | partners | 49 | Is address verified           |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key | Type       |
      | <ProductType> | nonindiv      | <ApplicationStage> | 9                                    |          |     | Individual |
      | <ProductType> | nonindiv      | <ApplicationStage> | 10                                   |          |     | Company    |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12684:  Address field label validation for official and alternate business address type at Partner screen of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to address block of Partners
    And user selects Address Type of partner
    Then user should be able to see Address fields with label as:
      | partners_and_directors.xlsx | partners | 28 | Address Type                  |
      | partners_and_directors.xlsx | partners | 29 | Full Address                  |
      | partners_and_directors.xlsx | partners | 30 | Country                       |
      | partners_and_directors.xlsx | partners | 31 | Flat/Plot Number              |
      | partners_and_directors.xlsx | partners | 32 | Address Line 2                |
      | partners_and_directors.xlsx | partners | 33 | Address Line 3                |
      | partners_and_directors.xlsx | partners | 34 | PinCode                       |
      | partners_and_directors.xlsx | partners | 35 | Region                        |
      | partners_and_directors.xlsx | partners | 36 | State                         |
      | partners_and_directors.xlsx | partners | 37 | City                          |
      | partners_and_directors.xlsx | partners | 38 | District                      |
      | partners_and_directors.xlsx | partners | 39 | Taluka                        |
      | partners_and_directors.xlsx | partners | 40 | Village                       |
      | partners_and_directors.xlsx | partners | 41 | Landmark                      |
      | partners_and_directors.xlsx | partners | 42 | Current Address               |
      | partners_and_directors.xlsx | partners | 43 | Duration at this Address From |
      | partners_and_directors.xlsx | partners | 44 | Duration at this Address To   |
      | partners_and_directors.xlsx | partners | 45 | Duration at this City From    |
      | partners_and_directors.xlsx | partners | 46 | Duration at this City To      |
      | partners_and_directors.xlsx | partners | 47 | Primary Phone:                |
      | partners_and_directors.xlsx | partners | 48 | Mobile Phone                  |
      | partners_and_directors.xlsx | partners | 49 | Is address verified           |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 11                                   |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 12                                   |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12685: Field "Country" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to address block of Partners
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Country" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 1                                    |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12686: Field "Region" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to address block of Partners
    And user select the country in address of partner director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Region" as in excel
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 21                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 22                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 23                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12687: Field "Residence Status" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to address block of Partners
    And user selects Address Type of partner
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Residence Status" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 9                                    |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 10                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12688: Field "Residence Type" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to address block of Partners
    And user selects Address Type of partner
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Residence Type" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 9                                    |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 10                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12689: Field "Address In Document" list validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to address block of Partners
    And user selects Address Type of partner
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Address In Document" present in masters
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 9                                    |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | partners_and_directors.xlsx | partners                      | 10                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12690:  Field Relationship With Employee validation for Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user enters data in Relationship With Employee in partner
    Then user should be able to see Partner Details fields with label as:
      | partners_and_directors.xlsx | partners | 50 | Employee ID   |
      | partners_and_directors.xlsx | partners | 51 | Employee Name |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 12                                   |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 13                                   |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12691:  Field Relationship With Employee validation 2 for Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user enters data in Relationship With Employee in partner
    Then user should not be able to see fields:
      | FieldName     |
      | Employee ID   |
      | Employee Name |
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 14                                   |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12692:  Addition validation for Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters data for address
    Then user should get a notification message on saving partner data
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 7                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 8                                    |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12693:  Addition validation 2 for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters data for address
    And user runs dedupe of partner
    Then user should get duplicate check result
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 7                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 8                                    |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12694:  Dedupe validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType1>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType1>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType1>" "<Key>" applicant type
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills the identification with address in customer details of "<ApplicantType1>" type customer
    And user picks and set application of "<ProductType>" product type as "<ApplicantType2>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" in context from perishable pool
    And user opens an application of "<ProductType>" product type as "<ApplicantType2>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType2>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "all" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to view the duplicates in partner director
    Examples:
      | ProductType   | ApplicantType1 | ApplicantType2 | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | indiv          | nonindiv       | <ApplicationStage> | 19                                   |          | Primary |
      | <ProductType> | nonindiv       | nonindiv       | <ApplicationStage> | 20                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12695: Dedupe validation 1 for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType1>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType1>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType1>" "<Key>" applicant type
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills the identification with address in customer details of "<ApplicantType1>" type customer
    And user picks and set application of "<ProductType>" product type as "<ApplicantType2>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" in context from perishable pool
    And user opens an application of "<ProductType>" product type as "<ApplicantType2>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType2>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "all" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user views the duplicate customers of partner director
    Then user should be able to see Partner Dedupe Result grid block with fields as:
      | partners_and_directors.xlsx | partners | 131 | Application ID         |
      | partners_and_directors.xlsx | partners | 132 | Strength of Match      |
      | partners_and_directors.xlsx | partners | 133 | Dedupe Source          |
      | partners_and_directors.xlsx | partners | 134 | Neo Cust ID            |
      | partners_and_directors.xlsx | partners | 135 | Customer Name          |
      | partners_and_directors.xlsx | partners | 136 | DOB/Incorporation Date |
      | partners_and_directors.xlsx | partners | 137 | Neo CIF Number         |
      | partners_and_directors.xlsx | partners | 138 | Identification Number  |
      | partners_and_directors.xlsx | partners | 139 | Applicant Type         |
      | partners_and_directors.xlsx | partners | 140 | Unique ID              |
      | partners_and_directors.xlsx | partners | 141 | Channel, Channel Name  |
      | partners_and_directors.xlsx | partners | 142 | Dealer/DSA/RM Name     |
      | partners_and_directors.xlsx | partners | 143 | Application Status     |
    Examples:
      | ProductType   | ApplicantType1 | ApplicantType2 | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | indiv          | nonindiv       | <ApplicationStage> | 19                                   |          | Primary |
      | <ProductType> | nonindiv       | nonindiv       | <ApplicationStage> | 20                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12696:  Dedupe validation 2 for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user creates an application of "<ProductType>" product type as "<ApplicantType1>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType1>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType1>" "<Key>" applicant type
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills the identification with address in customer details of "<ApplicantType1>" type customer
    And user picks and set application of "<ProductType>" product type as "<ApplicantType2>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" in context from perishable pool
    And user opens an application of "<ProductType>" product type as "<ApplicantType2>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType2>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "all" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user views the duplicate customers of partner director
    Then user should be able to view Matched Application Details in duplicates of partner
    Examples:
      | ProductType   | ApplicantType1 | ApplicantType2 | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | indiv          | nonindiv       | <ApplicationStage> | 19                                   |          | Primary |
      | <ProductType> | nonindiv       | nonindiv       | <ApplicationStage> | 20                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12697:  Field validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data in all the fields of partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters the data in all the fields of address
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to save partners data successfully on saving
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 88                                   |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 89                                   |          | Primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12698:  Field Holding Percentage validation for multiple Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the partner details
    Then user should get an error message on the screen on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | partners                      | 7                                     | 15                                    |          |     |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12699:  Field Holding Percentage validation 2 for multiple Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to save partners data successfully on saving
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     | partners_and_directors.xlsx | partners                      | 7                                     | 16                                    |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12700:  Field Holding Percentage validation 2 for multiple Partner of non individual customer of <ProductType> application at <ApplicationStage> stage in expanded mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user selects Expanded Mode in applicant information
    And user navigates to Partners & Directors in expanded mode
    And user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to save partners data successfully on saving
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     | partners_and_directors.xlsx | partners                      | 7                                     | 16                                    |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12701:  Field Holding Percentage validation for multiple Partner of non individual guarantor of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the partner details
    Then user should get an error message on the screen on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key       | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 |
      | <ProductType> | nonindiv      | <ApplicationStage> |          | guarantor | partners_and_directors.xlsx | partners                      | 7                                     | 15                                    |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12702:  Field Holding Percentage validation 2 for multiple Partner of non individual guarantor of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to save partners data successfully on saving
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key       | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 |
      | <ProductType> | nonindiv      | <ApplicationStage> |          | guarantor | partners_and_directors.xlsx | partners                      | 7                                     | 16                                    |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12703:  Field Holding Percentage validation for multiple Partner of non individual coapplicant of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the partner details
    Then user should get an error message on the screen on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key         | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 |
      | <ProductType> | nonindiv      | <ApplicationStage> |          | coapplicant | partners_and_directors.xlsx | partners                      | 7                                     | 15                                    |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12704:  Field Holding Percentage validation 2 for multiple Partner of non individual coapplicant of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to save partners data successfully on saving
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key         | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 |
      | <ProductType> | nonindiv      | <ApplicationStage> |          | coapplicant | partners_and_directors.xlsx | partners                      | 7                                     | 16                                    |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12705:  Data validation for Partner of non individual customer of <ProductType> application at <ApplicationStage> stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "<Fields>" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the partner details
    And user reconciles the partner data of "<Fields>" fields
    Then user should be able to reconcile partner data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 17                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 18                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 19                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 20                                   |          | primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12706: Field validation 2 for Partner of non individual customer of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data in all the fields of partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters the data in all the fields of address
    Then user should get an error message on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 91                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 92                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 93                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 94                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 95                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 96                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 97                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 98                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 99                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 100                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 101                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 102                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 103                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 104                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 108                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 109                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 111                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 112                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 113                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 114                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 115                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 116                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 117                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 118                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 119                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 120                                  |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 121                                  |          | primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12707: Field validation 2 for Partner of non individual coapplicant of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data in all the fields of partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters the data in all the fields of address
    Then user should get an error message on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | 91                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 92                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 93                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 94                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 95                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 96                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 97                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 98                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 99                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 100                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 101                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 102                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 103                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 104                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 108                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 109                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 111                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 112                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 113                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 114                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 115                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 116                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 117                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 118                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 119                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 120                                  |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 121                                  |          | coapplicant |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12708: Field validation 2 for Partner of non individual guarantor of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data in all the fields of partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters the data in all the fields of address
    Then user should get an error message on running dedupe of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | 91                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 92                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 93                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 94                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 95                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 96                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 97                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 98                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 99                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 100                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 101                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 102                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 103                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 104                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 108                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 109                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 111                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 112                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 113                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 114                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 115                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 116                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 117                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 118                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 119                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 120                                  |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 121                                  |          | guarantor |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${Key:["Primary","Coapplicant","Guarantor"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12706: Field validation 3 for Partner of non individual <Key> of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user selects "<Type>" of partner
    And user enters the invalid data in the "<Field>" of partner
    Then user should get an error message in the "<Field>" of partner
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Type       | Field                      | PartnersAndDirectors_partners_rowNum | Category | Key   |
      | <ProductType> | nonindiv      | <ApplicationStage> | Individual | Constitution               | 105                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Individual | Qualification              | 106                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Individual | Relationship With Employee | 107                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Individual | Nationality                | 110                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Company    | Constitution               | 122                                  |          | <Key> |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12709:  Field validation for Partner of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data in all the fields of partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters the data in all the fields of address
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to save partners data successfully on saving
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 88                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 89                                   |          | guarantor |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12710:  Data validation for Partner of non individual guarantor of <ProductType> application at <ApplicationStage> stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "<Fields>" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the partner details
    And user reconciles the partner data of "<Fields>" fields
    Then user should be able to reconcile partner data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | PartnersAndDirectors_partners_rowNum | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 17                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 18                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 19                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 20                                   |          | guarantor |

# EDU - Coapplicant
# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-12711:  Field validation for Partner of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data in all the fields of partner
    And user navigates to identification of Partners
    And user enters data for identification
    And user navigates to address block of Partners
    And user enters the data in all the fields of address
    And user runs dedupe of partner
    And user gets duplicate check result
    Then user should be able to save partners data successfully on saving
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 88                                   |          | Coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 89                                   |          | Coapplicant |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  @Perishable
  Scenario Outline: ACAUTOCAS-12712:  Data validation for Partner of non individual coapplicant of <ProductType> application at <ApplicationStage> stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "<Fields>" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the partner details
    And user reconciles the partner data of "<Fields>" fields
    Then user should be able to reconcile partner data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | PartnersAndDirectors_partners_rowNum | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 17                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 18                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 19                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 20                                   |          | coapplicant |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
# ${Key:["Primary","Coapplicant","Guarantor"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
  @Sanity
#FeatureID-ACAUTOCAS-8502
  @Release3
  @Conventional @Release @Part-3
  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-13896:  Field validation of length for Partner of non individual <Key> of <ProductType> application at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new partner
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data in the partner having length of "<Field>" greater than "<Count>" characters
    Then user should be able to match the data with first "<Count>" characters of data in "<Field>" partner field from excel file
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Field         | Count | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum | Category | Key   |
      | <ProductType> | nonindiv      | <ApplicationStage> | First Name    | 255   | partners_and_directors.xlsx | partners                      | 123                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Middle Name   | 255   | partners_and_directors.xlsx | partners                      | 124                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Last Name     | 255   | partners_and_directors.xlsx | partners                      | 125                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Unique ID No. | 255   | partners_and_directors.xlsx | partners                      | 126                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Employee ID   | 255   | partners_and_directors.xlsx | partners                      | 127                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Employee Name | 255   | partners_and_directors.xlsx | partners                      | 128                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Relation      | 255   | partners_and_directors.xlsx | partners                      | 129                                  |          | <Key> |
      | <ProductType> | nonindiv      | <ApplicationStage> | Observations  | 255   | partners_and_directors.xlsx | partners                      | 130                                  |          | <Key> |

#---------------------------------------Not Implemented ---------------------------------------------------
# Scenarios need to be done when workflow driven capability is developed.
# On Hold

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @OnHold
  Scenario Outline: ACAUTOCAS-12713:  Data validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual customer
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user has already added partner from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow>
    And user has already added partner identification from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow2>
    And user has already added partner address from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow3>
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user views customer information
    When user navigates to "Partners & Directors"
    And user reconciles data with excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow> row <SourceSheetRow2> row <SourceSheetRow3>
    Then user should be able to reconcile successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet | SourceSheetRow | SourceSheetRow2 | SourceSheetRow3 |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 0              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 10             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 1              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 2              | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 5              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 11             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 12             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 13             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 14             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 15             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 18             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 19             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 23             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 28             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 29             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 33             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 35             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 37             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 38             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 40             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 42             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 43             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 45             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 47             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 49             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 51             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 53             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 54             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 56             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 57             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 64             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 65             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 66             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 69             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 74             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 76             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 77             | 100             | 125             |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @OnHold
  Scenario Outline: ACAUTOCAS-12714:  Data validation for Partner of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual coapplicant
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user has already added partner from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow>
    And user has already added partner identification from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow2>
    And user has already added partner address from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow3>
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user views coapplicant information
    When user navigates to "Partners & Directors"
    And user reconciles data with excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow> row <SourceSheetRow2> row <SourceSheetRow3>
    Then user should be able to reconcile successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet | SourceSheetRow | SourceSheetRow2 | SourceSheetRow3 |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 0              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 10             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 1              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 2              | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 5              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 11             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 12             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 13             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 14             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 15             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 18             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 19             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 23             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 28             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 29             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 33             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 35             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 37             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 38             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 40             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 42             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 43             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 45             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 47             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 49             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 51             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 53             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 54             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 56             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 57             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 64             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 65             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 66             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 69             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 74             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 76             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 77             | 100             | 125             |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @OnHold
  Scenario Outline: ACAUTOCAS-12715:  Data validation for Partner of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual guarantor
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user has already added partner from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow>
    And user has already added partner identification from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow2>
    And user has already added partner address from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow3>
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user views guarantor information
    When user navigates to "Partners & Directors"
    And user reconciles data with excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow> row <SourceSheetRow2> row <SourceSheetRow3>
    Then user should be able to reconcile successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet | SourceSheetRow | SourceSheetRow2 | SourceSheetRow3 |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 0              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 10             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 1              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 2              | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 5              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 11             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 12             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 13             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 14             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 15             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 18             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 19             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 23             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 28             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 29             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 33             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 35             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 37             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 38             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 40             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 42             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 43             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 45             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 47             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 49             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 51             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 53             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 54             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 56             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 57             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 64             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 65             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 66             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 69             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 74             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 76             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Partner     | 77             | 100             | 125             |


# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @OnHold
  Scenario Outline: ACAUTOCAS-12716:  Data validation for Partner of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "<Fields>" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the partner details
    And user reconciles the partner data
    Then user should be able to reconcile partner data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 17                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 18                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 19                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 20                                   |          | primary |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @OnHold
  Scenario Outline: ACAUTOCAS-12717:  Data validation for Partner of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "<Fields>" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the partner details
    And user reconciles the partner data
    Then user should be able to reconcile partner data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | PartnersAndDirectors_partners_rowNum | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 17                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 18                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 19                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 20                                   |          | coapplicant |

# ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL","EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @OnHold
  Scenario Outline: ACAUTOCAS-12718:  Data validation for Partner of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new partner
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "partners" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "<Fields>" fields in partner details
    And user runs dedupe of partner
    And user gets duplicate check result
    And user saves the partner data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the partner details
    And user reconciles the partner data
    Then user should be able to reconcile partner data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | PartnersAndDirectors_partners_rowNum | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 17                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | 18                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 19                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | 20                                   |          | guarantor |
