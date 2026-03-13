#@Epic-Applicant_Information
#@ReviewedBy-None
#@AuthoredBy-utkarsh.tiwari
#@ImplementedBy-utkarsh.tiwari
#@Release1
#@ReleaseAppInfoM4
#@ReviewedByDEV
#@AppInfoAdoption
##  because of restructuring the scenario and its functionalities - 27-11-2024
#Feature: Mobile Number verification
#
#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#
##  Scenario Outline: Verify mobile no with valid variation code
##    Given user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
##    And user create new application of personal loan for individual
##    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
##    And user fills home page of personal information
##    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
##    And user fills identification section of personal information
##    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
##    When user save the address and send variation code
##    Then It Should work successfully
##
##    Examples:
##      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
##      | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | identification              | 0                                  | address              | 11                          |
#
#  Scenario Outline: ACAUTOCAS-3987:  Enter a mobile verification code
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user navigates to applicant details page of "<ApplicationStage>"
#    And click on view edit detailed info
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
#    When user enters the requested verification code
#    Then mobile phone number should not get verified
#    @Islamic
#    #${ProductType:["IPF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 0                        | address              | 24                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 0                        | address              | 25                          |
#
#    @Islamic
#    #${ProductType:["IHF","IAF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 24                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 25                          |
#
#    @Conventional
#    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 24                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 25                          |
#
#    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 24                          |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 25                          |
#
#  Scenario Outline: ACAUTOCAS-3988:  Enter expired mobile verification code
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user navigates to applicant details page of "<ApplicationStage>"
#    And click on view edit detailed info
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
#    When user enters the requested verification code
#    Then mobile phone number should not get verified
#    @Islamic
#    #${ProductType:["IPF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 0                        | address              | 26                          |
#
#    @Islamic
#    #${ProductType:["IHF","IAF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 26                          |
#
#    @Conventional
#    # ${ ProductType : ["PF","HL","AL","IHF","IAF","IPF","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 26                          |
#
#    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | address              | 26                          |
