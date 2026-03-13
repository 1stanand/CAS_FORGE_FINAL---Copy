@AuthoredBy-yuvraj.raghuwanshi
@ReviewedBy-Tarun.Gupta
@TechReviewedBy-
@CAS-248157
@ImplementedBy-ramesh.samanthula
#Epic- RM enquiry access
#StoryID-CAS-248157
@DevTrack
@GA-9.0
@RMEnquiryAccess

Feature: RM enquiry access

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 0 user creates an application and L0 user searches the application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 301                         | 0           |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 302                         | 1           |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 303                         | 2           |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 304                         | 3           |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 0 user creates an application and RM L1user searches the application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 305                         | 4           |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 306                         | 5           |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 307                         | 6           |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 308                         | 7           |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 0 user creates an application and Level 0 user searches the application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 309                         | 8           |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 310                         | 9           |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 311                         | 10          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 312                         | 11          |


#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 0 user creates an application and Level 1 user searches the application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 313                         | 12          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 314                         | 13          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 315                         | 14          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 316                         | 15          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 0 user creates an application and Level 2 user who is part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 317                         | 16          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 318                         | 17          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 319                         | 18          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 320                         | 19          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 1 user creates an application and L0 user which is in the hierarchy searches the application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 321                         | 20          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 322                         | 21          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 323                         | 22          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 324                         | 23          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 1 user creates an application and L1 user searches the application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 325                         | 24          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 326                         | 25          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 327                         | 26          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 328                         | 27          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 1 user creates an application and L0 user which is in the hierarchy searches the application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 329                         | 28          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 330                         | 29          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 331                         | 30          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 332                         | 31          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 2 user creates an application and L2 user searches the application on enquiry screen
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 333                         | 32          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 334                         | 33          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 335                         | 34          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 336                         | 35          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 2 user creates an application and L0 user searches the application on enquiry screen
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 337                         | 36          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 338                         | 37          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 339                         | 38          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 340                         | 39          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 2 user creates an application and L2 user searches the application on enquiry screen
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 341                         | 40          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 342                         | 41          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 343                         | 42          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 344                         | 43          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Level 2 user creates an application and L0 user searches the application on enquiry screen
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 345                         | 44          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 346                         | 45          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 347                         | 46          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 348                         | 47          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: system user creates an application and L0 user which is part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 349                         | 48          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 350                         | 49          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 351                         | 50          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 352                         | 51          |
#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: system user creates an application and any user which is not part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 353                         | 52          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 354                         | 53          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 355                         | 54          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 356                         | 55          |

#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: system user creates an application and L0 user which is part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 357                         | 56          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 358                         | 57          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 359                         | 58          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 360                         | 59          |
#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: system user creates an application and any user which is not part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And RM L1user is added on sourcing which is mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 361                         | 60          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 362                         | 61          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 363                         | 62          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 364                         | 63          |
#    Prerequisites
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: User who is not part of the hierarchy creates an application and L0 user which is part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should not get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 365                         | 64          |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 366                         | 65          |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 367                         | 66          |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 368                         | 67          |
#    Prerequisites
#    And the user who created application is marked inactive
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Inactive user who is part of the hierarchy creates an application and L1 user which is part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "rm_enquiry_access.xlsx" under "RMEnquiryAccess" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And set user to be marked in the context
    And RM L1user is added on sourcing which is mapped in the hierarchy
    And user logout from "CAS"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user reads data from the excel file "users.xlsx" under sheet "user_data" and row 0
    And user navigates to System Administration - User Management - Users page
    And mark user inactive
    And user logout from "Common Masters"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user navigates to System Administration - User Management - Users page
    And approve the marked user
    And user logout from "Common Masters"
    And user logged in "CAS" with username and password present in "rm_enquiry_access.xlsx" under "RMEnquiryAccess" and <LoginRowNum>
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 369                         | 0           |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 370                         | 1           |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 371                         | 2           |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 372                         | 3           |
#    Prerequisites
#    And the user who created the application is blocked
#    And Enquiry_Limited_Access_Hierarchy authority is given to all the users
#    And user maps access to all products, branches and schemes in user master
  Scenario Outline: Blocked user creates an application and L1 user which is part of the hierarchy searches application
    And user logged in CAS with valid username and password present in "rm_enquiry_access.xlsx" under "RMEnquiryAccess" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set application in context
    And set user to be marked in the context
    And RM L1user is added on sourcing which is not mapped in the hierarchy
    And user logout from "CAS"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user reads data from the excel file "users.xlsx" under sheet "user_data" and row 0
    And user navigates to System Administration - User Management - Users page
    And mark user blocked
    And user logout from "Common Masters"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user navigates to System Administration - User Management - Users page
    And approve the marked user
    And user logout from "Common Masters"
    And user logged in "CAS" with username and password present in "rm_enquiry_access.xlsx" under "RMEnquiryAccess" and <LoginRowNum>
    When user navigates to "Enquiry" grid
    And user searches the application on enquiry screen
    Then application should get searched

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoginRowNum |
      | HL          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 373                         | 4           |
      | PF          | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 374                         | 5           |
      | CON_VEH     | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 375                         | 6           |
      | AGRL        | indiv         | Lead details     |          |     | sourcing_details.xlsx | home                 | 376                         | 7           |