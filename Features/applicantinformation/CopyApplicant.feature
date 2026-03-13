@Epic-Applicant_Information
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@tempTest
@Copy
#FeatureID-ACAUTOCAS-126, ACAUTOCAS-4154
    #${ApplicantType:["indiv","nonindiv"]}

Feature: Copy Applicant
  @Sanity
  Scenario Outline: ACAUTOCAS-877: Copy individual primary applicant from internal for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    When user copy individual primary applicant from internal whose cif number is not generated
    Then individual primary applicant should be copied successfully
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF","IHF","IAF"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

  @Sanity
  Scenario Outline: ACAUTOCAS-878: Copy individual primary applicant from gcd applicant for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    When user copy individual primary applicant from gcd whose cif number is generated
    Then individual primary applicant should be copied successfully
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF","IHF","IAF"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |

  @Sanity
  Scenario Outline:ACAUTOCAS-880: Copy non individual primary applicant from internal for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user picks and set application of "<ProductType>" product type as "nonindiv" applicant at "lead details" for "" with "" in context from perishable pool
    And user selects non individual applicant to be added
    When user copy non individual primary applicant from internal whose cif number is not generated
    Then non individual primary applicant should be copied successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    |

  @Sanity
  @Release @Part-2 @Conventional
    @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-881: Copy non individual primary applicant from gcd for <Loan_Type> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user picks and set application of "<ProductType>" product type as "nonindiv" applicant at "dde" for "" with "" in context from perishable pool
    When user copy non individual primary applicant from gcd whose cif number is generated
    Then non individual primary applicant should be copied successfully
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo | ProductType |
      | HL        | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | HL          |
      | MAL       | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | MAL         |
      | PF        | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | PF          |
  @Sanity
  Scenario Outline: ACAUTOCAS-883:Copy individual <Another> from internal for <ApplicationStage> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    When user copy individual "<Another>" from internal whose cif number is not generated
    Then individual "<Another>" should be copied successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

  @Sanity
  Scenario Outline:ACAUTOCAS-884:Copy individual <Another> from Gcd for <ApplicationStage> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    When user copy individual "<Another>" from gcd whose cif number is generated
    Then individual "<Another>" should be copied successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |

  @Release @Part-2 @Conventional
    @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-886:Copy non individual <Another> from internal for <Loan_Type> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Loan_Type>" stage from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user picks and set application of "<ProductType>" product type as "nonindiv" applicant at "lead details" for "" with "" in context from perishable pool
    When user copy non individual "<Another>" from internal whose cif number is not generated
    Then individual "<Another>" should be copied successfully
    Examples:
      | Another      | Loan_Type        | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo | ProductType |
      | Co-Applicant | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |
      | Guarantor    | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |
      | Co-Applicant | Login Acceptance | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |
      | Guarantor    | Login Acceptance | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |
      | Co-Applicant | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |
      | Guarantor    | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |

  @Release @Part-2 @Conventional
    @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline:ACAUTOCAS-887:Copy non individual <Another> from Gcd for <Loan_Type> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Loan_Type>" stage from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user picks and set application of "<ProductType>" product type as "nonindiv" applicant at "dde" for "" with "" in context from perishable pool
    When user copy non individual "<Another>" from gcd whose cif number is generated
    Then individual "<Another>" should be copied successfully
    Examples:
      | Another      | Loan_Type        | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo | ProductType |
      | Co-Applicant | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | PF          |
      | Guarantor    | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | PF          |
      | Co-Applicant | Login Acceptance | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | PF          |
      | Guarantor    | Login Acceptance | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | PF          |
      | Co-Applicant | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | PF          |
      | Guarantor    | lead details     | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 29                    | PF          |

  @Sanity
  Scenario Outline:ACAUTOCAS-885: Copy individual <Another> from both for <ApplicationStage> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    When user copy individual "<Another>" from both whose cif number is not generated
    Then individual "<Another>" should be copied successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Another      | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-Applicant | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor    | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 6                     |

  @Sanity
  Scenario Outline: ACAUTOCAS-879: Copy individual primary applicant from both for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<ProductType>" for existing customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    When user copy individual primary applicant from both
    Then individual primary applicant should be copied successfully
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF","IHF","IAF"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 28                    |
  @Sanity
  @Release @Part-2 @Conventional
    @ImplementedBy-ayush.garg
    @Release2
  Scenario Outline: ACAUTOCAS-882: Copy non individual primary applicant from both for <Loan_Type> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>" for existing non individual customer
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user picks and set application of "<ProductType>" product type as "nonindiv" applicant at "dde" for "" with "" in context from perishable pool
    When user copy non individual primary applicant from both
    Then non individual primary applicant should be copied successfully
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo | ProductType |
      | HL        | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | HL          |
      | MAL       | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | MAL         |
      | PF        | LoginDetailsCAS.xlsx | LoginData | 7         | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |

  @Release @Part-2 @Conventional
    @ImplementedBy-ayush.garg
    @Release2
    @Sanity
  Scenario Outline: ACAUTOCAS-888: Copy non individual <Another> from both for <Loan_Type> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Stage_Var>" stage from application grid
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user picks and set application of "<ProductType>" product type as "nonindiv" applicant at "dde" for "" with "" in context from perishable pool
    When user copy non individual "<Another>" from both whose cif number is generated
    Then non individual primary applicant should be copied successfully
    Examples:
      | Another      | Loan_Type | SourceDataFile       | SheetName | RowNumber | Stage_Var        | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo | ProductType |
      | Co-Applicant | HL        | LoginDetailsCAS.xlsx | LoginData | 7         | lead details_hl  | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | HL          |
      | Guarantor    | HL        | LoginDetailsCAS.xlsx | LoginData | 7         | lead details_hl  | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | HL          |
      | Co-Applicant | PF        | LoginDetailsCAS.xlsx | LoginData | 7         | lead details     | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |
      | Guarantor    | PF        | LoginDetailsCAS.xlsx | LoginData | 7         | lead details     | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | PF          |
      | Co-Applicant | MAL       | LoginDetailsCAS.xlsx | LoginData | 7         | lead details_mal | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | MAL         |
      | Guarantor    | MAL       | LoginDetailsCAS.xlsx | LoginData | 7         | lead details_mal | ApplicationInformation.xlsx | ApplicationDetails       | 30                    | MAL         |


  Scenario Outline: ACAUTOCAS-890: Validating documents after copy <Another> applicant for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_RowNo>
    And user adds "<Another>" applicant
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_rowNum>
    And user adds the documents for the "<Another>" applicant
    And user create new application for "<ProductType>" for existing customer
    When user copies above applicant
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<DocumentWB>" under sheet "<Document_home>" and row <Document_rowNum>
    Then documents of the copied "<Another>" should be same as the documents of original "<Another>"
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${Category:["bonds"]}
    Examples:
      | Another      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | DocumentWB    | Document_home | Document_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_RowNo |
      | Co-Applicant | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 168                      | document.xlsx | home          | 328             | sourcing_details.xlsx | home                 | 265                        |
      | Guarantor    | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 168                      | document.xlsx | home          | 330             | sourcing_details.xlsx | home                 | 264                        |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | Another      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | DocumentWB    | Document_home | Document_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_RowNo |
      | Co-Applicant | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 168                      | document.xlsx | home          | 328             | sourcing_details.xlsx | home                 | 265                        |
      | Guarantor    | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 168                      | document.xlsx | home          | 330             | sourcing_details.xlsx | home                 | 264                        |

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | Another      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | DocumentWB    | Document_home | Document_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_RowNo |
      | Co-Applicant | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | document.xlsx | home          | 328             | sourcing_details.xlsx | home                 | 265                        |
      | Guarantor    | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | document.xlsx | home          | 330             | sourcing_details.xlsx | home                 | 264                        |
    @NotImplemented
        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | Another      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | DocumentWB    | Document_home | Document_rowNum | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_RowNo |
      | Co-Applicant | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | document.xlsx | home          | 328             | sourcing_details.xlsx | home                 | 265                        |
      | Guarantor    | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | document.xlsx | home          | 330             | sourcing_details.xlsx | home                 | 264                        |

  #cif number is not generated
#  Squash-08_CAS-64389,09_CAS-64389,10_CAS-64389
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13650: Verify the source system is <var> on copying an applicant from <database> for <ProductType> <ApplicantType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<ApplicationInfoWB>" under sheet "<ApplicationDetails_Sheet>" and row <ApplicationInfo_RowNo>
    And user create new "<ApplicantType>" application for "<ProductType>" for existing customer
    When user searches individual primary applicant using application number from "<database>" database
    Then source system is "<var>"
    @Conventional
    @Release @Part-2
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | var | database | ApplicantType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | CAS | Internal | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 221                   |
      | <ProductType> | GCD | GCD      | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 181                   |
      | <ProductType> | GCD | Both     | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 181                   |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF","IHF","IAF"]}
    Examples:
      | ProductType   | var | database | ApplicantType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | CAS | Internal | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 221                   |
      | <ProductType> | GCD | GCD      | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 181                   |
      | <ProductType> | GCD | Both     | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 181                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | var | database | ApplicantType   | SourceDataFile       | SheetName | RowNumber | ApplicationInfoWB           | ApplicationDetails_Sheet | ApplicationInfo_RowNo |
      | <ProductType> | CAS | Internal | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 221                   |
      | <ProductType> | GCD | GCD      | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 181                   |
      | <ProductType> | GCD | Both     | <ApplicantType> | LoginDetailsCAS.xlsx | LoginData | 0         | ApplicationInformation.xlsx | searchcustomer           | 181                   |
  @Sanity
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13651: Verify number of dependent are copied successfully on copying an applicant for <ProductType> <ApplicantType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to "Family Details" screen in Lead details
    And user records the "Family Details" in Lead Details
    And user create new "<ApplicantType>" application for "<ProductType>" for existing customer
    When user copies above applicant
    And user navigates to "Family Details" screen in Lead details
    Then "Family Details" are copied accurately in Lead Details
    @Conventional
    @Release @Part-2
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | LoginDetailsCAS.xlsx | LoginData | 0         |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | LoginDetailsCAS.xlsx | LoginData | 0         |


    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category   | key | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | LoginDetailsCAS.xlsx | LoginData | 0         |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | LoginDetailsCAS.xlsx | LoginData | 0         |

  #  Squash 03_CAS-82697
  @Sanity
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13652: Verify <var> present in personal information screen are copied successfully on copying an applicant for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to "<var>" screen in Lead details
    And user records the "<var>" in Lead Details
    And user create new application for "<ProductType>" for existing customer
    And user copies above applicant
    And user navigates to "<var>" screen in Lead details
    Then "<var>" are copied accurately in Lead Details
    @Conventional
    @Release @Part-2
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                               | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Personal Information home details | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Identification Details            | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Address Details                   | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Communication Details             | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Family Details                    | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Education Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                               | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Personal Information home details | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Identification Details            | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Address Details                   | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Communication Details             | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Family Details                    | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Education Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category   | key | var                               | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Personal Information home details | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Identification Details            | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Address Details                   | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Communication Details             | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Family Details                    | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Education Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                               | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Personal Information home details | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Identification Details            | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Address Details                   | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Communication Details             | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Family Details                    | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Education Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |


 #  Squash 03_CAS-82697
  @Sanity
  @AppInfoFixed5
    @Perishable
  Scenario Outline: ACAUTOCAS-13653: Verify employment details are copied successfully on copying an applicant for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to "<var>" screen in Lead details
    And user records the "<var>" in Lead Details
    And user create new application for "<ProductType>" for existing customer
    And user copies above applicant
    And user navigates to "<var>" screen in Lead details
    Then "<var>" are copied accurately in Lead Details
    @Conventional
    @Release @Part-2
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Employment Details | LoginDetailsCAS.xlsx | LoginData | 0         |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Employment Details | LoginDetailsCAS.xlsx | LoginData | 0         |


    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category   | key | var                | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Employment Details | LoginDetailsCAS.xlsx | LoginData | 0         |

    @NotImplemented
        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Employment Details | LoginDetailsCAS.xlsx | LoginData | 0         |

  #  Squash 03_CAS-82697
  @Sanity
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13654: Verify <var> present in financial details screen are copied successfully on copying an applicant for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to "<var>" screen in Lead details
    And user records the "<var>" in Lead Details
    And user create new application for "<ProductType>" for existing customer
    And user copies above applicant
    And user navigates to "<var>" screen in Lead details
    Then "<var>" are copied accurately in Lead Details
    @Conventional
    @Release @Part-2
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                            | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Income Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Other Income Details           | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Deductions                     | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Expense Details                | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Asset Details                  | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Liability Details              | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Income Expense Summary Details | LoginDetailsCAS.xlsx | LoginData | 0         |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                            | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Income Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Other Income Details           | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Deductions                     | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Expense Details                | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Asset Details                  | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Liability Details              | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Income Expense Summary Details | LoginDetailsCAS.xlsx | LoginData | 0         |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category   | key | var                            | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Income Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Other Income Details           | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Deductions                     | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Expense Details                | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Asset Details                  | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Liability Details              | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | Income Expense Summary Details | LoginDetailsCAS.xlsx | LoginData | 0         |
    @NotImplemented
        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                            | SourceDataFile       | SheetName | RowNumber |
      | <ProductType> | <ApplicantType> | dde              |          |     | Income Details                 | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Other Income Details           | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Deductions                     | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Expense Details                | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Asset Details                  | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Liability Details              | LoginDetailsCAS.xlsx | LoginData | 0         |
      | <ProductType> | <ApplicantType> | dde              |          |     | Income Expense Summary Details | LoginDetailsCAS.xlsx | LoginData | 0         |

  #  Squash 03_CAS-82697
  Scenario Outline: ACAUTOCAS-13655: Verify <var> are not copied on copying an applicant for <ProductType> application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to "Documents" screen in Lead details
    And user records the "<var>" in Lead Details
    When user create new application for "<ProductType>" for existing customer
    And user copies above applicant
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" on the basis of "<ProductType>"
      | PF  | 256 |
      | MAL | 257 |
      | HL  | 258 |
      | IPF | 290 |
#    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user opens loan details and fills mandatory fields in sourcing details
    And user selects document tab
    Then "<var>" are not copied accurately in Lead Details
    @Conventional
    @Release @Part-2
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category   | key | var                  | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | loan documents       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | collateral documents | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | customer documents   | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category | key | var                  | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing |
      | <ProductType> | <ApplicantType> | dde              |          |     | loan documents       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |
      | <ProductType> | <ApplicantType> | dde              |          |     | collateral documents | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |
      | <ProductType> | <ApplicantType> | dde              |          |     | customer documents   | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                  | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | loan documents       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 256                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | collateral documents | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 256                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | customer documents   | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 256                         |

    @NotImplemented
        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage | Category   | key | var                  | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | loan documents       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | collateral documents | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |
      | <ProductType> | <ApplicantType> | dde              | <Category> |     | customer documents   | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 |
