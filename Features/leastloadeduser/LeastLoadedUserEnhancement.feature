@AuthoredBy-yuvraj.raghuwanshi
@ReviewedBy-Tarun.Gupta
@TechReviewedBy-
@ImplementedBy-ramesh.samanthula
#Epic- Least loaded User Enhancement
#StoryID-CAS-258320
@CAS-258320
@DevTrack
@GA-9.0
@Perishable
@LeastLoadedUser

   #${ProductType:["PF","HL","CON_VEH","AGRL","MULF","FAS","JLG","SHG"]}
   #${ApplicationStage:["Lead details", "DDE"]}
   #${ApplicantType:["indiv"]}

Feature: Least loaded User Enhancement

  # Prerequisites:
  # User maintained new role in Roles master and new Users in User master and role, branch, product & scheme access should be given to those users
  # User maintained Task assignment master with assignment matrix code "leastLoadedUser"
  # And Assignment grid should be added and "leastLoadedUser" should be selected in the user dropdown and role maintained in roles master should be added in the Roles multiselect field
  # User maintained event in the event definition master with event code "APPLICATION_ASSIGNMENT_EVENT_{ProductType}"
  # And Allocation task should be added and "leastLoadedUser" should be selected in allocation dropdown

  # Prerequisites:
  # Remove the role from one of the users in user master
  Scenario Outline: Application assignment to least loaded user which have access of role
    And user logout from "CAS"
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user saves document
    And user clicks on move to next stage
    And user verify application at "<Stage>"
    And user open application manager
    And user search application in Application Manager
    And application is assigned to a user
    And user should be least loaded
    And user logout from "CAS"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user reads data from the excel file "users.xlsx" under sheet "user_data" and row 2
    And user navigates to System Administration - User Management - Users page
    Then application should get assigned to the least loaded user which have the role access

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | LoginRowNum | Stage              |
      | JLG         | indiv         | DDE              |          |     | 0           | Pre Sanction Visit |
      | HL          | indiv         | Lead details     |          |     | 1           | Login Acceptance   |
      | PF          | indiv         | Lead details     |          |     | 2           | Login Acceptance   |
      | CON_VEH     | indiv         | Lead details     |          |     | 3           | Login Acceptance   |
      | MULF        | indiv         | DDE              |          |     | 4           | Credit Approval    |
      | FAS         | indiv         | DDE              |          |     | 5           | Credit Approval    |
      | AGRL        | indiv         | Lead details     |          |     | 6           | Login Acceptance   |
      | SHG         | indiv         | DDE              |          |     | 7           | Pre Sanction Visit |

    # Prerequisites:
    # Remove the branch access from one of the users in user master
  Scenario Outline: Application assignment to least loaded user which have access of branch
    And user logout from "CAS"
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user saves document
    And user clicks on move to next stage
    And user verify application at "<Stage>"
    And user open application manager
    And user search application in Application Manager
    And application is assigned to a user
    And user should be least loaded
    And user logout from "CAS"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user reads data from the excel file "users.xlsx" under sheet "user_data" and row 2
    And user navigates to System Administration - User Management - Users page
    Then application should get assigned to the leastloadeduser which have access of that particular branch

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | LoginRowNum | Stage            |
      | JLG         | indiv         | DDE              |          |     | 8           | Pre Sanction Visit  |
      | HL          | indiv         | Lead details     |          |     | 9           | Login Acceptance |
      | PF          | indiv         | Lead details     |          |     | 10          | Login Acceptance |
      | CON_VEH     | indiv         | Lead details     |          |     | 11          | Login Acceptance |
      | MULF        | indiv         | DDE              |          |     | 12          | Credit Approval  |
      | FAS         | indiv         | DDE              |          |     | 13          | Credit Approval  |
      | AGRL        | indiv         | Lead details     |          |     | 14          | Login Acceptance |
      | SHG         | indiv         | DDE              |          |     | 15          | Pre Sanction Visit  |

    # Prerequisites:
    # Remove the product access from one of the users in user master
  Scenario Outline: Application assignment to least loaded user which have access of product
    And user logout from "CAS"
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user selects document tab
    And user saves document
    And user set product in context
    And user clicks on move to next stage
    And user verify application at "<Stage>"
    And user open application manager
    And user search application in Application Manager
    And application is assigned to a user
    And user should be least loaded
    And user logout from "CAS"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user navigates to System Administration - User Management - Users page
    Then application should get assigned to the leastloadeduser which have access of that particular product

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | LoginRowNum | Stage            |
      | JLG         | indiv         | DDE              |          |     | 16          | Pre Sanction Visit  |
      | HL          | indiv         | Lead details     |          |     | 17          | Login Acceptance |
      | PF          | indiv         | Lead details     |          |     | 18          | Login Acceptance |
      | CON_VEH     | indiv         | Lead details     |          |     | 19          | Login Acceptance |
      | MULF        | indiv         | DDE              |          |     | 20          | Credit Approval  |
      | FAS         | indiv         | DDE              |          |     | 21          | Credit Approval  |
      | AGRL        | indiv         | Lead details     |          |     | 22          | Login Acceptance |
      | SHG         | indiv         | DDE              |          |     | 23          | Pre Sanction Visit  |

    # Prerequisites:
    # Remove the scheme access from one of the users in user master
  @runpls
  Scenario Outline: Application assignment to least loaded user which have access of scheme
    And user logout from "CAS"
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and <LoginRowNum>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "home" and row 0
    And user enters personal information details
    And user clicks on proceed
    And user fills identification details on personal information
      | personal_information_end_flow.xlsx | identification_details | 11 |
    And user enters address details on personal information
      | personal_information_end_flow.xlsx | address_details | 0 |
    And user checks for duplicates
    And user clicks on communication details
    And user selects Primary Address
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row 0
    And user fills communication details with "mandatory data"
    And user saves the applicant information details
    And user clicks on save and next
    And user navigates to Employment Details tab
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 69
    And user enters employment details for "Others" type on personal information
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "identification_details" and row 11
    And user fills kyc details of applicant information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fills all required details on Sourcing Details screen without save
    And user clicks on save button
    And user set product in context
    And user set scheme in context
    And user clicks on move to next stage
    And user verify application at "<Stage>"
    And user open application manager
    And user search application in Application Manager
    And application is assigned to a user
    And user should be least loaded
    And user logout from "CAS"
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and <LoginRowNum>
    And user navigates to System Administration - User Management - Users page
    Then application should get assigned to the leastloadeduser which have access of that particular scheme

    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | LoginRowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Stage            |
      | HL          | indiv         | Lead details     |          |     | 25          | sourcing_details.xlsx | home                 | 387                         | Login Acceptance |
      | PF          | indiv         | Lead details     |          |     | 26          | sourcing_details.xlsx | home                 | 388                         | Login Acceptance |
      | CON_VEH     | indiv         | Lead details     |          |     | 27          | sourcing_details.xlsx | home                 | 389                         | Login Acceptance |
      | AGRL        | indiv         | Lead details     |          |     | 30          | sourcing_details.xlsx | home                 | 392                         | Login Acceptance |
