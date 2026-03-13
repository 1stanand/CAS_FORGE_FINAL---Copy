#@Epic-Applicant_Information
#@ReviewedBy-None
#@AuthoredBy-utkarsh.tiwari
#@ImplementedBy-utkarsh.tiwari
#@ReviewedByDEV
#@AppInfoAdoption
#Feature: Add Mobile Phone Number
#
#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#  Scenario Outline: ACAUTOCAS-3985:  Selecting to add mobile phone number
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user navigates to applicant details page of "<ApplicationStage>"
#    And click on view edit detailed info
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
#    When user selects a country
#    Then ISD code should change accordingly
#    @Islamic
#    @Release
#@Part-1
#    #${ProductType:["IPF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 0                        | address              | 13                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 0                        | address              | 19                          |
#
#    @Islamic
#    @Release
#@Part-1
#    #${ProductType:["IHF","IAF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 13                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 19                          |
#
#    @Conventional
#    @Release @Part-1
#    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 13                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 19                          |
#
#    @Deferred
## ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 13                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 19                          |
#
#  Scenario Outline: ACAUTOCAS-3986:  Add <var> mobile phone number
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user navigates to applicant details page of "<ApplicationStage>"
#    And click on view edit detailed info
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
#    When user enters mobile phone number
#    Then the entered number should be displayed as "<var>"
#    @Islamic
#    @Release
#@Part-1
#    #${ProductType:["IPF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | var       | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | incorrect | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 0                        | address              | 14                          |
#      | correct   | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 0                        | address              | 20                          |
#
#    @Islamic
#    @Release
#@Part-1
#    #${ProductType:["IHF","IAF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | var       | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | incorrect | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 14                          |
#      | correct   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 20                          |
#
#    @Conventional
#    @Release @Part-1
#    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | var       | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | incorrect | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 14                          |
#      | correct   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 20                          |
#
#    @Deferred
## ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
#    Examples:
#      | var       | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | incorrect | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 14                          |
#      | correct   | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 20                          |
