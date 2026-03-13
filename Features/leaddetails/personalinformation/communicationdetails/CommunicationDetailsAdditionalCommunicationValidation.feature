@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@ImplementedBy-utkarsh.tiwari
@Perishable
 #FeatureID-ACAUTOCAS-155

    #${ApplicantType:["indiv","nonindiv"]}
Feature: Validating Additional Communication Details in Communication Details

  Scenario Outline: ACAUTOCAS-3999:  Primary phone number <var2> should be <var> in Communication details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user deletes all address
    And user fills address
    And user checks for duplicates
    Then primary phone number <var2> drop down should be visible
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var2    | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | country | editable | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var2    | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | country | editable | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var2    | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | country | editable | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var2    | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | country | editable | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          |

  @FixedTest28
  Scenario Outline: ACAUTOCAS-4000:  In primary phone number <var> should be of max <var2> digit
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user deletes all address
    And user fills address
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication>" and row <PersonalInfo_communication_rowNum>
    And user enters "<var>" in "<phase>"
    Then <var> of <phase> should be of max <var2> digit

    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | phase                | var2 | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | phase                | var2 | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |

    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | phase                | var2 | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | primary phone number | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | primary phone number | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | primary phone number | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | other phone number   | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | other phone number   | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | other phone number   | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | FAX Number           | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | FAX Number           | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | FAX Number           | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | phase                | var2 | var      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | primary phone number | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | other phone number   | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 4    | STD Code | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 8    | Number   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | FAX Number           | 6    | EXTN     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |

  @FixedTest28
  Scenario Outline: ACAUTOCAS-4001:  Selection of country in <var> with <check> mobile number
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication>" and row <PersonalInfo_communication_rowNum>
    And user selects country and enters "<var>" number
    Then entered "<var>" number should be "<check>"
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | check   | var            | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid   | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid   | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | check   | var            | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid   | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid   | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | check   | var            | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid   | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid   | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |

    @Deferred
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | check   | var            | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid   | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid | primary mobile | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid   | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid | other mobile   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | communication_details      | 1                                 |

  Scenario Outline: ACAUTOCAS-4002:  Selection of country in <var> with <check> ISD codes
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user deletes all address
    And user fills address
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication>" and row <PersonalInfo_communication_rowNum>
    And user selects country of <var>
    Then user validates ISD codes with <var> grid
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | check | var          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | check | var          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | check | var          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | check | var          | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid | other phones | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |

  @FixedTest28
  Scenario Outline: ACAUTOCAS-4003:  Other mobile number should <var2>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication>" and row <PersonalInfo_communication_rowNum>
    And user "<var>"
    Then entered details should "<var2>"
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | var2                         | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | enters other mobile number | be of max 10 digits          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | adds a new grid            | be able to add one more grid | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | deletes one grid           | be able to delete one grid   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | var2                         | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | enters other mobile number | be of max 10 digits          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | adds a new grid            | be able to add one more grid | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | deletes one grid           | be able to delete one grid   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                        | var2                         | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | enters other mobile number | be of max 10 digits          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | adds a new grid            | be able to add one more grid | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | deletes one grid           | be able to delete one grid   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |

    @Deferred
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                        | var2                         | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | enters other mobile number | be of max 10 digits          | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | adds a new grid            | be able to add one more grid | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | deletes one grid           | be able to delete one grid   | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |


  @FixedTest28
  Scenario Outline: ACAUTOCAS-4004:  Insert <validity> <var> in Additional Communication Detail
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user deletes all address
    And user fills address
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication>" and row <PersonalInfo_communication_rowNum>
    And user enter "<var>" <var2>
    Then "<var>" should be "<result>"
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | var               | var2                    | result | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | Primary Email ID  | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | Official Email ID | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | var               | var2                    | result | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | Primary Email ID  | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | Official Email ID | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | validity | var               | var2                    | result | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | Primary Email ID  | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | Primary Email ID  | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | Primary Email ID  | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | Primary Email ID  | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid    | Official Email ID | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | Official Email ID | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | Official Email ID | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | invalid  | Official Email ID | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | validity | var               | var2                    | result | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_communication | PersonalInfo_communication_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | Primary Email ID  | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Primary Email ID  | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid    | Official Email ID | with valid email        | passed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 0                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | without .com            | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 2                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | without @               | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 3                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | invalid  | Official Email ID | with maximum characters | failed | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 50                          | communication_details      | 4                                 |

  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-4005:  Enter <variant> as mobile verification code
    Given user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user enters the requested verification code
    Then mobile phone number should not get verified
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | variant           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 24                          | incorrect number  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 25                          | special character |

    @Islamic
    @Release
    @Part-2
    @LoggedBug-CAS-231542
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | variant           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 24                          | incorrect number  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 25                          | special character |

    @Islamic
    @Release
    @Part-2
    @LoggedBug-CAS-231542
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | variant           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | address              | 24                          | incorrect number  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | address              | 25                          | special character |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | variant           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 24                          | incorrect number  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 25                          | special character |

  @FixedTest28
  Scenario Outline: ACAUTOCAS-4006:  Enter expired Mobile Verification Code in Communication Details
    Given user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user enters the requested verification code
    Then mobile phone number should not get verified

    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 26                          |

    @Islamic
    @Release
    @LoggedBug-CAS-231542
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 26                          |

    @Islamic
    @Release
    @LoggedBug-CAS-231542
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 1                        | address              | 26                          |

    @Deferred
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | address              | 26                          |


