@Epic-Applicant_Information
@AuthoredBy-akash.bansal
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@Perishable
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-161
Feature: Fill the Deductions with Occupation as Salaried in Financial Details

  @Sanity
  Scenario Outline: ACAUTOCAS-3856:  Filling Deductions with <Mandatory_All> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Salaried"
    And user changes major occupation to "Salaried"
    And user clicks on save and next of Employment Details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user fills deductions with "<Mandatory_All>" fields
    Then deductions are saved successfully

    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 1                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 2                                  |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 1                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 2                                  |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 1                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 2                                  |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 1                                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 2                                  |

    @Sanity
  Scenario Outline: ACAUTOCAS-3857:  Adding Multiple Deductions
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Salaried"
    And user changes major occupation to "Salaried"
    When user fills deductions with "<Mandatory_All>" fields <Multiple> times from "<FinancialDetailsWB>" under "<FinancialDetails_deductions>" from row number <StartingRow>
    Then deductions are saved successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | Multiple | StartingRow |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 3        | 3           |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | Multiple | StartingRow |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 3        | 3           |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | Multiple | StartingRow |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 3        | 3           |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | Multiple | StartingRow |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | all           | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 3        | 3           |

  Scenario Outline: ACAUTOCAS-3858:  Deleting Deductions
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "Salaried"
    And user changes major occupation to "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user fills deductions with "<Mandatory_All>" fields
    And user deletes deductions
    Then deductions are deleted successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-akash.bansal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 1                                  |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 1                                  |

    @Islamic
    @Release
@Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | deductions                  | 1                                  |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Mandatory_All | SourceDataFile       | SheetName | RowNumber | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | mandatory     | LoginDetailsCAS.xlsx | LoginData | 7         | employment_details.xlsx | home                   | 130                           | financial_details.xlsx | deductions                  | 1                                  |
