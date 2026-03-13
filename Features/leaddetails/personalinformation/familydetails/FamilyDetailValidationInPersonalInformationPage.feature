@Epic-Applicant_Information
@AppInfoAdoption
@Release1
@ReviewedByDEV
@AuthoredBy-utkarsh.tiwari
@ImplementedBy-utkarsh.tiwari
#FeatureID-ACAUTOCAS-156
    #${ApplicantType:["indiv"]}
Feature: Family detail validation in personal information page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @Sanity
  Scenario Outline: ACAUTOCAS-4021:  Fill the applicant's family detail with all fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user add only Residential Address
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user fills the family details
    And user save the details
    Then family details should be saved successfully

    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

  @FixedExp
    @Sanity
  Scenario Outline: ACAUTOCAS-4022:  Add family details in Personal Information Page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user add only Residential Address
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user add family details from the sheet "<PersonalInfoWB>" under "<PersonalInfo_family>" and <PersonalInfo_family_rowNum>
    Then family details should be saved successfully
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

  Scenario Outline: ACAUTOCAS-4023:  Add Multiple family details in Personal Information Page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user add only Residential Address
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    When user add multiple family details from the sheet "<PersonalInfoWB>" under "<PersonalInfo_family>" and <PersonalInfo_family_rowNum>
    Then multiple family details should be saved successfully
    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |


  Scenario Outline: ACAUTOCAS-4024:  Delete family details in Personal Information Page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user fills identification section of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user add only Residential Address
    And user checks for duplicates
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_family>" and row <PersonalInfo_family_rowNum>
    And user add family details from the sheet "<PersonalInfoWB>" under "<PersonalInfo_family>" and <PersonalInfo_family_rowNum>
    When user delete family member details
    Then family member details should be deleted successfully
    @Islamic
    @Release
@Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Islamic
    @Release
@Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum | PersonalInfo_family | PersonalInfo_family_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 24                       | identification              | 1                                  | address              | 51                          | family              | 1                          |
