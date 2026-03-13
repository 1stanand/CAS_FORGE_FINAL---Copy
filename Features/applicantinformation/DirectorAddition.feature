@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-rsurya.kumar
#Author:rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:
Feature: Addition of director to non individual customer

#  In this feature we will create and attach directors to a non individual customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12575:  Field label validation of Director screen of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    Then user should be able to see Director Details fields with label as:
      | partners_and_directors.xlsx | directors | 0  | Type                       |
      | partners_and_directors.xlsx | directors | 1  | Photo                      |
      | partners_and_directors.xlsx | directors | 2  | Gender                     |
      | partners_and_directors.xlsx | directors | 3  | Title                      |
      | partners_and_directors.xlsx | directors | 4  | First Name                 |
      | partners_and_directors.xlsx | directors | 5  | Middle Name                |
      | partners_and_directors.xlsx | directors | 6  | Last Name                  |
      | partners_and_directors.xlsx | directors | 7  | Is Contact Person          |
      | partners_and_directors.xlsx | directors | 8  | Designation                |
      | partners_and_directors.xlsx | directors | 9  | Director Since             |
      | partners_and_directors.xlsx | directors | 10 | Qualification              |
      | partners_and_directors.xlsx | directors | 11 | Relationship               |
      | partners_and_directors.xlsx | directors | 12 | Date of Birth              |
      | partners_and_directors.xlsx | directors | 13 | Age(years)                 |
      | partners_and_directors.xlsx | directors | 14 | Unique ID No.              |
      | partners_and_directors.xlsx | directors | 15 | Nationality                |
      | partners_and_directors.xlsx | directors | 16 | Relationship With Employee |
      | partners_and_directors.xlsx | directors | 19 | Director is a Stakeholder  |
      | partners_and_directors.xlsx | directors | 20 | Holding Percentage         |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12576:  Field "Type" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Type" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12577:  Field "Gender" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Gender" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12578:  Field "Title" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Title" on director as in excel

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12579:  Entity level validation for director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user enters the data for director
    And user saves the director data
    Then user should get a notification message

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12580:  Entity level validation 2 for director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 1
    And user enters the data for director
    And user runs dedupe on director screen
    Then user should get a notification with field level errors

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12581:  Field label validation of Identification section of Director screen of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to identification of Director
    Then user should be able to see Identification fields with label as:
      | partners_and_directors.xlsx | directors | 21 | Identification Type |
      | partners_and_directors.xlsx | directors | 22 | Identification No.  |
      | partners_and_directors.xlsx | directors | 23 | Issue Date          |
      | partners_and_directors.xlsx | directors | 24 | Expiry Date         |
      | partners_and_directors.xlsx | directors | 25 | Country of Issue    |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12582:  Field "Identification Type" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to identification of Director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Identification Type" on director as in excel

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12583:  Field "Country of Issue" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to identification of Director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Country of Issue" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12584:  Field level validation for director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user has not added partners for non individual customer
    And user has not added directors for non individual customer
    And user save the partners and directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 107
    And user enters the data for director
    And user navigates to identification of Director
    And user enters data in identification of Director
    And user runs dedupe on director screen
    Then user should get a notification with field level errors

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12585:  Field "Address Type" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to address block of Director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Address Type" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12586:  Address field label validation for residential permanent address type at Director screen of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for director
    And user navigates to address block of Director
    And user selects Address Type of director
    Then user should be able to see Address fields with label as:
      | partners_and_directors.xlsx | directors | 26 | Address Type                  |
      | partners_and_directors.xlsx | directors | 27 | Full Address                  |
      | partners_and_directors.xlsx | directors | 28 | Country                       |
      | partners_and_directors.xlsx | directors | 29 | Flat/Plot Number              |
      | partners_and_directors.xlsx | directors | 30 | Address Line 2                |
      | partners_and_directors.xlsx | directors | 31 | Address Line 3                |
      | partners_and_directors.xlsx | directors | 32 | PinCode                       |
      | partners_and_directors.xlsx | directors | 33 | Region                        |
      | partners_and_directors.xlsx | directors | 34 | State                         |
      | partners_and_directors.xlsx | directors | 35 | City                          |
      | partners_and_directors.xlsx | directors | 36 | District                      |
      | partners_and_directors.xlsx | directors | 37 | Taluka                        |
      | partners_and_directors.xlsx | directors | 38 | Village                       |
      | partners_and_directors.xlsx | directors | 50 | Residence Status              |
      | partners_and_directors.xlsx | directors | 51 | Residence Type                |
      | partners_and_directors.xlsx | directors | 52 | Address In Document           |
      | partners_and_directors.xlsx | directors | 39 | Landmark                      |
      | partners_and_directors.xlsx | directors | 40 | Current Address               |
      | partners_and_directors.xlsx | directors | 41 | Duration at this Address From |
      | partners_and_directors.xlsx | directors | 42 | Duration at this Address To   |
      | partners_and_directors.xlsx | directors | 43 | Duration at this City From    |
      | partners_and_directors.xlsx | directors | 44 | Duration at this City To      |
      | partners_and_directors.xlsx | directors | 45 | Primary Phone:                |
      | partners_and_directors.xlsx | directors | 46 | Mobile Phone                  |
      | partners_and_directors.xlsx | directors | 47 | Is address verified           |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 1                                    |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 1                                    |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    | <Category> |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 1                                    | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12587:  Address field label validation for official alternate business address type at Director screen of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for director
    And user navigates to address block of Director
    And user selects Address Type of director
    Then user should be able to see Address fields with label as:
      | partners_and_directors.xlsx | directors | 26 | Address Type                  |
      | partners_and_directors.xlsx | directors | 27 | Full Address                  |
      | partners_and_directors.xlsx | directors | 28 | Country                       |
      | partners_and_directors.xlsx | directors | 29 | Flat/Plot Number              |
      | partners_and_directors.xlsx | directors | 30 | Address Line 2                |
      | partners_and_directors.xlsx | directors | 31 | Address Line 3                |
      | partners_and_directors.xlsx | directors | 32 | PinCode                       |
      | partners_and_directors.xlsx | directors | 33 | Region                        |
      | partners_and_directors.xlsx | directors | 34 | State                         |
      | partners_and_directors.xlsx | directors | 35 | City                          |
      | partners_and_directors.xlsx | directors | 36 | District                      |
      | partners_and_directors.xlsx | directors | 37 | Taluka                        |
      | partners_and_directors.xlsx | directors | 38 | Village                       |
      | partners_and_directors.xlsx | directors | 50 | Residence Status              |
      | partners_and_directors.xlsx | directors | 51 | Residence Type                |
      | partners_and_directors.xlsx | directors | 52 | Address In Document           |
      | partners_and_directors.xlsx | directors | 39 | Landmark                      |
      | partners_and_directors.xlsx | directors | 40 | Current Address               |
      | partners_and_directors.xlsx | directors | 41 | Duration at this Address From |
      | partners_and_directors.xlsx | directors | 42 | Duration at this Address To   |
      | partners_and_directors.xlsx | directors | 43 | Duration at this City From    |
      | partners_and_directors.xlsx | directors | 44 | Duration at this City To      |
      | partners_and_directors.xlsx | directors | 45 | Primary Phone:                |
      | partners_and_directors.xlsx | directors | 46 | Mobile Phone                  |
      | partners_and_directors.xlsx | directors | 47 | Is address verified           |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 2                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 3                                    |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 2                                    |          |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 3                                    |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 2                                    | <Category> |     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 3                                    | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12588:  Field "Country" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to address block of Director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Country" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12589:  Field "Region" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_directors_rowNum>
    And user enters the data for director
    And user navigates to address block of Director
    And user select the country in address of partner director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Region" on director as in excel

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectors_directors_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 7                                     |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 8                                     |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 9                                     |          | Primary |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectors_directors_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 7                                     |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 8                                     |          | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 9                                     |          | Primary |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | ApplicantInformationWB     | ApplicantInformation_masterSetup | PartnersAndDirectors_directors_rowNum | Category   | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 7                                     | <Category> | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 8                                     | <Category> | Primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | applicant_information.xlsx | master_setup                     | 9                                     | <Category> | Primary |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12590:  Field "Residence Status" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to address block of Director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <SourceSheetRow>
    And user selects Address Type of director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Residence Status" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              |          |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              |          |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              | <Category> |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12591:  Field "Residence Type" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to address block of Director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <SourceSheetRow>
    And user selects Address Type of director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Residence Type" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              |          |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              |          |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              | <Category> |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12592:  Field "Address In Document" list validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user navigates to Partners & Directors
    When user adds a new director
    And user navigates to address block of Director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <SourceSheetRow>
    And user selects Address Type of director
    And user reads data from the excel file "<ApplicantInformationWB>" under sheet "<ApplicantInformation_masterSetup>"
    Then user should be able to see list of values for field "Address In Document" present in director masters

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              |          |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              |          |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              |          |     | applicant_information.xlsx | master_setup                     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | SourceSheetRow | Category   | Key | ApplicantInformationWB     | ApplicantInformation_masterSetup |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0              | <Category> |     | applicant_information.xlsx | master_setup                     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 7              | <Category> |     | applicant_information.xlsx | master_setup                     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12593:  Field "Relationship With Employee" validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user adds relationship with employee
    Then user should be able to see Director Details fields with label as:
      | partners_and_directors.xlsx | directors | 17 | Employee ID   |
      | partners_and_directors.xlsx | directors | 18 | Employee Name |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 1                                    |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 1                                    |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category   | Key |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    | <Category> |     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 1                                    | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12594:  Field "Relationship With Employee" validation 2 for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user adds relationship with employee
    Then user should not be able to see fields:
      | Employee ID   |
      | Employee Name |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 2                                    |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 2                                    |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 2                                    | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12595:  Addition validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for director
    And user navigates to identification of Director
    And user enters data for identification
    And user navigates to address block of Director
    And user enters data for address
    And user saves the director data
    Then user should get a notification message

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12596:  Addition validation 2 for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user enters the data for director
    And user navigates to identification of Director
    And user enters data for identification
    And user navigates to address block of Director
    And user enters data for address
    And user runs dedupe on director screen with wait
    Then user should get duplicate check result for director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_partners_rowNum | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | 0                                    | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  @Perishable
  Scenario Outline: ACAUTOCAS-12597:  Dedupe validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user creates an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user fills the identification with address in customer details of "indiv" type customer
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" in context from perishable pool
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "all" fields in director details
    And user runs dedupe on director screen with wait
    Then user should be able to view the duplicates in partner director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          | primary |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          | primary |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category   | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    | <Category> | primary |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  @Perishable
  Scenario Outline: ACAUTOCAS-12598:  Dedupe validation 1 for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user creates an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user fills the identification with address in customer details of "indiv" type customer
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" in context from perishable pool
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "all" fields in director details
    And user runs dedupe on director screen with wait
    And user views the duplicate customers of partner director
    Then user should be able to see Director Dedupe Result grid block with fields as:
      | partners_and_directors.xlsx | directors | 123 | Application ID         |
      | partners_and_directors.xlsx | directors | 124 | Strength of Match      |
      | partners_and_directors.xlsx | directors | 125 | Dedupe Source          |
      | partners_and_directors.xlsx | directors | 126 | Neo Cust ID            |
      | partners_and_directors.xlsx | directors | 127 | Customer Name          |
      | partners_and_directors.xlsx | directors | 128 | DOB/Incorporation Date |
      | partners_and_directors.xlsx | directors | 129 | Neo CIF Number         |
      | partners_and_directors.xlsx | directors | 130 | Identification Number  |
      | partners_and_directors.xlsx | directors | 131 | Applicant Type         |
      | partners_and_directors.xlsx | directors | 132 | Unique ID              |
      | partners_and_directors.xlsx | directors | 133 | Channel, Channel Name  |
      | partners_and_directors.xlsx | directors | 134 | Dealer/DSA/RM Name     |
      | partners_and_directors.xlsx | directors | 135 | Application Status     |

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          | primary |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          | primary |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category   | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    | <Category> | primary |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  @Perishable
  Scenario Outline: ACAUTOCAS-12599:  Dedupe validation 2 for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user creates an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user fills the identification with address in customer details of "indiv" type customer
    And user picks and set application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" in context from perishable pool
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_partners_rowNum>
    And user fills "all" fields in director details
    And user runs dedupe on director screen with wait
    And user views the duplicate customers of partner director
    Then user should be able to view Matched Application Details in duplicates of director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          | primary |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    |          | primary |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_partners_rowNum | Category   | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 0                                    | <Category> | primary |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  @Sanity
  Scenario Outline: ACAUTOCAS-12600:  Field validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_director_rowNum>
    And user fills "all" fields in director details
    And user runs dedupe on director screen with wait
    Then user should be able to save directors data successfully on saving

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   |          | primary |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   |          | primary |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category   | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   | <Category> | primary |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12601:  Data validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user fills "<Fields>" fields in director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the director details
    And user reconciles the director data of "<Fields>" fields
    Then user should be able to reconcile director data successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | primary |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | primary |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category   | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | <Category> | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | <Category> | primary |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12602:  Field validation 2 for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_director_rowNum>
    And user fills "all" fields in director details
    Then user should get an error message on running dedupe of director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  |          | primary |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  |          | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  |          | primary |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category   | Key     |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  | <Category> | primary |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  | <Category> | primary |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12602:  Field validation 2 for Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_director_rowNum>
    And user fills "all" fields in director details
    Then user should get an error message on running dedupe of director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category | Key         |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  |          | coapplicant |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category | Key         |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  |          | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  |          | coapplicant |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category   | Key         |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  | <Category> | coapplicant |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  | <Category> | coapplicant |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12602:  Field validation 2 for Director of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_director_rowNum>
    And user fills "all" fields in director details
    Then user should get an error message on running dedupe of director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category | Key       |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  |          | guarantor |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category | Key       |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  |          | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  |          | guarantor |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | PartnersAndDirectors_director_rowNum | Category   | Key       |
      | <ProductType> | <ApplicationStage> | nonindiv      | 89                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 90                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 91                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 92                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 93                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 94                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 95                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 96                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 97                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 98                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 99                                   | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 100                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 101                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 102                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 103                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 104                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 105                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 106                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 107                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 108                                  | <Category> | guarantor |
      | <ProductType> | <ApplicationStage> | nonindiv      | 109                                  | <Category> | guarantor |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  @Sanity
  Scenario Outline: ACAUTOCAS-12603:  Field validation for Director of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_director_rowNum>
    And user fills "all" fields in director details
    And user runs dedupe on director screen with wait
    Then user should be able to save directors data successfully on saving

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   |          | guarantor |
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

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   |          | guarantor |
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

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category   | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   | <Category> | guarantor |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12604:  Data validation for Director of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user fills "<Fields>" fields in director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the director details
    And user reconciles the director data of "<Fields>" fields
    Then user should be able to reconcile director data successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | guarantor |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | guarantor |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category   | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | <Category> | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | <Category> | guarantor |

# EDU - Coapplicant
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  @Sanity
  Scenario Outline: ACAUTOCAS-12605:  Field validation for Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    When user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row <PartnersAndDirectors_director_rowNum>
    And user fills "all" fields in director details
    And user runs dedupe on director screen with wait
    Then user should be able to save directors data successfully on saving

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   |          | coapplicant |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   |          | coapplicant |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectors_director_rowNum | Category   | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | 53                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 54                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 55                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 56                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 57                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 58                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 59                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 60                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 61                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 62                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 63                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 64                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 65                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 66                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 67                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 68                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 69                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 70                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 71                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 72                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 73                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 74                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 75                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 76                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 77                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 78                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 79                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 80                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 81                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 82                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 83                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 84                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 85                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 86                                   | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | 87                                   | <Category> | coapplicant |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12606: Data validation for Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user fills "<Fields>" fields in director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the director details
    And user reconciles the director data of "<Fields>" fields
    Then user should be able to reconcile director data successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | coapplicant |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | coapplicant |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category   | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory | <Category> | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       | <Category> | coapplicant |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  Scenario Outline: ACAUTOCAS-12607:  Field "Holding Percentage" more than 100 validation for multiple Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the director details
    Then user should get an error message on the screen on running dedupe of director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Sanity
  Scenario Outline: ACAUTOCAS-12608:  Field "Holding Percentage" less than 100 validation for multiple Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens detailed information of "customer" in applicant information
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the director details
    Then user should be able to save directors data successfully on saving

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category   | Key |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     | <Category> |     |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  Scenario Outline: ACAUTOCAS-12609:  Field "Holding Percentage" more than 100 validation for multiple Director of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the director details
    Then user should get an error message on the screen on running dedupe of director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     |          | guarantor |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     |          | guarantor |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category   | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     | <Category> | guarantor |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Sanity
  Scenario Outline: ACAUTOCAS-12610:  Field "Holding Percentage" less than 100 validation for multiple Director of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the director details
    Then user should be able to save directors data successfully on saving

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          | guarantor |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          | guarantor |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category   | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     | <Category> | guarantor |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  Scenario Outline: ACAUTOCAS-12611:  Field "Holding Percentage" more than 100 validation for multiple Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the director details
    Then user should get an error message on the screen on running dedupe of director

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     |          | coapplicant |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     |          | coapplicant |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category   | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 0                                     | 5                                     | <Category> | coapplicant |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Sanity
  Scenario Outline: ACAUTOCAS-12612:  Field "Holding Percentage" less than 100 validation for multiple Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the director details
    Then user should be able to save directors data successfully on saving

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          | coapplicant |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          | coapplicant |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category   | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     | <Category> | coapplicant |

###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8502
  @Sanity
  Scenario Outline: ACAUTOCAS-12613:  Field "Holding Percentage" validation  for multiple Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage in expanded mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user selects Expanded Mode in applicant information
    And user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum1>
    And user fills the director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user adds a new director
    And user reads data from the excel file "<PartnersAndDirectorsWB>" under sheet "<PartnersAndDirectors_partners>" and row <PartnersAndDirectors_partners_rowNum2>
    And user fills the director details
    Then user should be able to save directors data successfully on saving

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Conventional @Release @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          | coapplicant |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Recommendation","Reconsideration"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     |          | coapplicant |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | PartnersAndDirectorsWB      | PartnersAndDirectors_partners | PartnersAndDirectors_partners_rowNum1 | PartnersAndDirectors_partners_rowNum2 | Category   | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | partners_and_directors.xlsx | directors                     | 1                                     | 6                                     | <Category> | coapplicant |


#---------------------------------------Not Implemented ---------------------------------------------------
# Scenarios need to be done when workflow driven capability is developed.
# On Hold

  @OnHold
    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12614:  Data validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual customer
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user has already added director from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow>
    And user has already added director identification from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow2>
    And user has already added director address from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow3>
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user views customer information
    When user navigates to "Partners & Directors"
    And user reconciles data with excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow> row <SourceSheetRow2> row <SourceSheetRow3>
    Then user should be able to reconcile successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet | SourceSheetRow | SourceSheetRow2 | SourceSheetRow3 |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 0              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 1              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 2              | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 5              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 10             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 13             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 14             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 15             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 18             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 19             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 23             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 28             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 29             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 33             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 35             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 37             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 38             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 40             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 42             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 43             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 45             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 47             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 49             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 51             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 53             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 54             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 56             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 57             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 60             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 64             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 65             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 66             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 68             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 73             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 74             | 101             | 129             |

  @OnHold
    # ${ProductType:["EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12615:  Data validation for Director of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual guarantor
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user has already added director from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow>
    And user has already added director identification from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow2>
    And user has already added director address from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow3>
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user views guarantor information
    When user navigates to "Partners & Directors"
    And user reconciles data with excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow> row <SourceSheetRow2> row <SourceSheetRow3>
    Then user should be able to reconcile successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet | SourceSheetRow | SourceSheetRow2 | SourceSheetRow3 |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 0              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 1              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 2              | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 5              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 10             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 13             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 14             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 15             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 18             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 19             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 23             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 28             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 29             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 33             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 35             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 37             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 38             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 40             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 42             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 43             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 45             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 47             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 49             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 51             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 53             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 54             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 56             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 57             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 60             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 64             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 65             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 66             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 68             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 73             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 74             | 101             | 129             |

  @OnHold
    # ${ProductType:["EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12616:  Data validation for Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage
    And user has created "<ProductType>" application for non individual coapplicant
    And user has moved the "<ProductType>" application to "<ApplicationStage>" stage
    And user has already added director from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow>
    And user has already added director identification from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow2>
    And user has already added director address from excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow3>
    And user opens the "<ProductType>" application from application menu
    And user navigates to "Applicant Information"
    And user views coapplicant information
    When user navigates to "Partners & Directors"
    And user reconciles data with excel file "<SourceDataFile>" sheet "<SourceSheet>" row <SourceSheetRow> row <SourceSheetRow2> row <SourceSheetRow3>
    Then user should be able to reconcile successfully
    Examples:
      | ProductType   | ApplicationStage   | SourceDataFile            | SourceSheet | SourceSheetRow | SourceSheetRow2 | SourceSheetRow3 |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 0              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 1              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 2              | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 5              | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 10             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 13             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 14             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 15             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 18             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 19             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 23             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 28             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 29             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 33             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 35             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 37             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 38             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 40             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 42             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 43             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 45             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 47             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 49             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 51             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 53             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 54             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 56             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 57             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 60             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 64             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 65             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 66             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 68             | 101             | 129             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 73             | 100             | 125             |
      | <ProductType> | <ApplicationStage> | ApplicantInformation.xlsx | Director    | 74             | 101             | 129             |

  @OnHold
    # ${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12601:  Data validation for Director of non individual customer of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user fills "<Fields>" fields in director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the director details
    And user reconciles the director data of "<Fields>" fields
    Then user should be able to reconcile director data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields | Category | Key     |
      | <ProductType> | nonindiv      | <ApplicationStage> | all    |          | primary |
      | <ProductType> | nonindiv      | <ApplicationStage> | all    |          | primary |


  @OnHold
    # ${ProductType:["EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12604:  Data validation for Director of non individual guarantor of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user fills "<Fields>" fields in director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the director details
    And user reconciles the director data of "<Fields>" fields
    Then user should be able to reconcile director data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key       |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | guarantor |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | guarantor |


  @OnHold
    # ${ProductType:["EDU"]}
# ${ApplicationStage:["Send To Ops","App Recommendation","App Recommendation Approval","Tranche Initiation","Tranche Approval","Post Approval"]}
# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-8503
  Scenario Outline: ACAUTOCAS-12606: Data validation for Director of non individual coapplicant of "<ProductType>" application at "<ApplicationStage>" stage at Enquiry screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user adds a new director
    And user reads data from the excel file "partners_and_directors.xlsx" under sheet "directors" and row 0
    And user fills "<Fields>" fields in director details
    And user runs dedupe on director screen with wait
    And user saves the director data
    When user opens the application from Enquiry
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<Key>" applicant type
    And user navigates to Partners & Directors
    And user view the director details
    And user reconciles the director data of "<Fields>" fields
    Then user should be able to reconcile director data successfully
    Examples:
      | ProductType   | ApplicantType | ApplicationStage   | Fields    | Category | Key         |
      | <ProductType> | nonindiv      | <ApplicationStage> | mandatory |          | coapplicant |
      | <ProductType> | nonindiv      | <ApplicationStage> | all       |          | coapplicant |
