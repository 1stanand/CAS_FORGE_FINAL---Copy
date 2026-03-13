@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-utkarsh.tiwari
@Reconciled
@ReviewedByDEV
#FeatureID-ACAUTOCAS-155
#${ApplicantType:["indiv","nonindiv"]}

Feature: Communication Details with Mandatory And Non Mandatory Validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @Sanity
  Scenario Outline: ACAUTOCAS-3995: Fill the communication details with <var> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication>" and row <PersonalInfo_communication_rowNum>
    When user fills communication details with "<var>"
    Then communication details should be saved with <var>

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release1
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | var            | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_communication | PersonalInfo_communication_rowNum | Category | Key |
      | mandatory data | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 |          |     |
      | all data       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | var            | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_communication | PersonalInfo_communication_rowNum | Category | Key |
      | mandatory data | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 |          |     |
      | all data       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | var            | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_communication | PersonalInfo_communication_rowNum | Category   | Key |
      | mandatory data | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 | <Category> |     |
      | all data       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | var            | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_communication | PersonalInfo_communication_rowNum | Category | Key |
      | mandatory data | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 |          |     |
      | all data       | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | communication_details      | 0                                 |          |     |

  Scenario Outline: ACAUTOCAS-3996: Fill the communication details with address dependence data at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user deletes all address
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user fill address details
    And user checks for duplicates
    And user selects Communication Details
    Then saved address details should be visible in communication details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release1
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage>  | personal_information.xlsx | address              | 50                          |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage>  | personal_information.xlsx | address              | 50                          |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | address              | 50                          | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage>  | personal_information.xlsx | address              | 50                          |          |     |

  Scenario Outline: ACAUTOCAS-3997: Fill the communication details with multiple address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user deletes all address
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user fills multiple address details
    And user checks for duplicates
    And user selects Communication Details
    Then multiple address grid should be visible in communication details

      # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release1
    @Release @Part-2
    @ImplementedBy-utkarsh.tiwari
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage>  | personal_information.xlsx | address              | 50                          |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage>  | personal_information.xlsx | address              | 50                          |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | personal_information.xlsx | address              | 50                          | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage>  | personal_information.xlsx | address              | 50                          |          |     |
